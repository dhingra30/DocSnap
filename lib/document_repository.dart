import 'database/app_database.dart';
import 'models/document.dart';
import 'services/document_local_data_source.dart';

class DocumentRepository {
  DocumentRepository._internal()
      : _localDataSource = DocumentLocalDataSource(AppDatabase());

  static final DocumentRepository instance = DocumentRepository._internal();

  final DocumentLocalDataSource _localDataSource;

  /// Returns all documents sorted newest first.
  Future<List<Document>> getDocuments() async {
    final documents = await _localDataSource.getDocuments();

    documents.sort(
      (a, b) => b.createdAt.compareTo(a.createdAt),
    );

    return documents;
  }

  Future<Document?> getById(String id) {
    return _localDataSource.getDocumentById(id);
  }

  Future<void> addDocument(Document document) {
    return _localDataSource.insertDocument(document);
  }

  Future<void> updateDocument(Document document) {
    return _localDataSource.updateDocument(document);
  }

  Future<void> removeDocument(String id) {
    return _localDataSource.deleteDocument(id);
  }

  Future<void> clear() {
    return _localDataSource.deleteAllDocuments();
  }
}