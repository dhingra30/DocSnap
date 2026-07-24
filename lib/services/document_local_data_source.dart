import 'dart:convert';

import 'package:drift/drift.dart';

import '../database/app_database.dart';
import '../models/document.dart';

class DocumentLocalDataSource {
  final AppDatabase _database;

  DocumentLocalDataSource(this._database);

  Future<List<Document>> getDocuments() async {
    final rows = await _database.select(_database.documentTable).get();

    return rows.map(_mapToDomain).toList();
  }

  Future<Document?> getDocumentById(String id) async {
    final row =
        await (_database.select(_database.documentTable)
              ..where((tbl) => tbl.id.equals(id)))
            .getSingleOrNull();

    if (row == null) return null;

    return _mapToDomain(row);
  }

  Future<void> insertDocument(Document document) async {
    await _database.into(_database.documentTable).insert(
          _mapToCompanion(document),
          mode: InsertMode.replace,
        );
  }

  Future<void> updateDocument(Document document) async {
    await (_database.update(_database.documentTable)
          ..where((tbl) => tbl.id.equals(document.id)))
        .write(_mapToCompanion(document));
  }

  Future<void> deleteDocument(String id) async {
    await (_database.delete(_database.documentTable)
          ..where((tbl) => tbl.id.equals(id)))
        .go();
  }

  Future<void> deleteAllDocuments() async {
    await _database.delete(_database.documentTable).go();
  }

  // ---------------------------------------------------------------------------
  // Mapping
  // ---------------------------------------------------------------------------

  Document _mapToDomain(DocumentTableData row) {
    return Document(
      id: row.id,
      title: row.title,
      createdAt: row.createdAt,
      imagePaths: _decodeList(row.imagePaths),
      pdfPath: row.pdfPath,
      thumbnailPath: row.thumbnailPath,
      ocrText: row.ocrText,
      tags: _decodeList(row.tags),
      isFavorite: row.isFavorite,
    );
  }

  DocumentTableCompanion _mapToCompanion(Document document) {
    return DocumentTableCompanion(
      id: Value(document.id),
      title: Value(document.title),
      createdAt: Value(document.createdAt),
      imagePaths: Value(_encodeList(document.imagePaths)),
      pdfPath: Value(document.pdfPath),
      thumbnailPath: Value(document.thumbnailPath),
      ocrText: Value(document.ocrText),
      tags: Value(_encodeList(document.tags)),
      isFavorite: Value(document.isFavorite),
    );
  }

  // ---------------------------------------------------------------------------
  // JSON Helpers
  // ---------------------------------------------------------------------------

  String _encodeList(List<String> list) {
    return jsonEncode(list);
  }

  List<String> _decodeList(String json) {
    final decoded = jsonDecode(json) as List<dynamic>;
    return decoded.cast<String>();
  }
}