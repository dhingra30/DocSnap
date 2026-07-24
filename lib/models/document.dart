import 'package:flutter/foundation.dart';

@immutable
class Document {
  final String id;
  final String title;
  final DateTime createdAt;
  final List<String> imagePaths;

  final String? pdfPath;
  final String? thumbnailPath;
  final String? ocrText;

  final List<String> tags;
  final bool isFavorite;

  const Document({
    required this.id,
    required this.title,
    required this.createdAt,
    required this.imagePaths,
    this.pdfPath,
    this.thumbnailPath,
    this.ocrText,
    this.tags = const [],
    this.isFavorite = false,
  });

  /// Number of scanned pages.
  int get pageCount => imagePaths.length;

  Document copyWith({
    String? id,
    String? title,
    DateTime? createdAt,
    List<String>? imagePaths,
    String? pdfPath,
    String? thumbnailPath,
    String? ocrText,
    List<String>? tags,
    bool? isFavorite,
  }) {
    return Document(
      id: id ?? this.id,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      imagePaths: imagePaths ?? this.imagePaths,
      pdfPath: pdfPath ?? this.pdfPath,
      thumbnailPath: thumbnailPath ?? this.thumbnailPath,
      ocrText: ocrText ?? this.ocrText,
      tags: tags ?? this.tags,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}