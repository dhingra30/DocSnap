import 'package:uuid/uuid.dart';

import '../features/documents/services/scanner_service.dart';
import '../models/document.dart';
import '../document_repository.dart';
import 'storage_service.dart';

class DocumentService {
  final ScannerService _scannerService;
  final StorageService _storageService;
  final DocumentRepository _repository;

  final Uuid _uuid = const Uuid();

  DocumentService({
    ScannerService? scannerService,
    StorageService? storageService,
    DocumentRepository? repository,
  })  : _scannerService = scannerService ?? ScannerService(),
        _storageService = storageService ?? StorageService(),
        _repository = repository ?? DocumentRepository.instance;

  Future<Document?> scanDocument() async {
    final imagePaths = await _scannerService.scanDocument();

    if (imagePaths == null || imagePaths.isEmpty) {
      return null;
    }

    final savedImages =
        await _storageService.saveScannedImages(imagePaths);

    final document = Document(
      id: _uuid.v4(),
      title: "Document ${DateTime.now().millisecondsSinceEpoch}",
      createdAt: DateTime.now(),
      imagePaths: savedImages,
    );

    await _repository.addDocument(document);

    return document;
  }

  Future<List<Document>> getDocuments() async {
    return await _repository.getDocuments();
  }

  Future<void> deleteDocument(String id) async {
    await _repository.removeDocument(id);
  }

  Future<Document?> getDocument(String id) async {
    return await _repository.getById(id);
  }

  Future<void> updateDocument(Document document) async {
    await _repository.updateDocument(document);
  }

  Future<void> clearDocuments() async {
    await _repository.clear();
  }
}