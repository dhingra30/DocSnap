import 'package:drift/drift.dart';

class DocumentTable extends Table {
  TextColumn get id => text()();

  TextColumn get title => text()();

  DateTimeColumn get createdAt => dateTime()();

  TextColumn get imagePaths => text()();

  TextColumn get pdfPath => text().nullable()();

  TextColumn get thumbnailPath => text().nullable()();

  TextColumn get ocrText => text().nullable()();

  TextColumn get tags => text().withDefault(const Constant('[]'))();

  BoolColumn get isFavorite =>
      boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}