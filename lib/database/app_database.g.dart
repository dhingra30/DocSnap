// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $DocumentTableTable extends DocumentTable
    with TableInfo<$DocumentTableTable, DocumentTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocumentTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imagePathsMeta = const VerificationMeta(
    'imagePaths',
  );
  @override
  late final GeneratedColumn<String> imagePaths = GeneratedColumn<String>(
    'image_paths',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pdfPathMeta = const VerificationMeta(
    'pdfPath',
  );
  @override
  late final GeneratedColumn<String> pdfPath = GeneratedColumn<String>(
    'pdf_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _thumbnailPathMeta = const VerificationMeta(
    'thumbnailPath',
  );
  @override
  late final GeneratedColumn<String> thumbnailPath = GeneratedColumn<String>(
    'thumbnail_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ocrTextMeta = const VerificationMeta(
    'ocrText',
  );
  @override
  late final GeneratedColumn<String> ocrText = GeneratedColumn<String>(
    'ocr_text',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
    'tags',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _isFavoriteMeta = const VerificationMeta(
    'isFavorite',
  );
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
    'is_favorite',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_favorite" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    createdAt,
    imagePaths,
    pdfPath,
    thumbnailPath,
    ocrText,
    tags,
    isFavorite,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'document_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<DocumentTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('image_paths')) {
      context.handle(
        _imagePathsMeta,
        imagePaths.isAcceptableOrUnknown(data['image_paths']!, _imagePathsMeta),
      );
    } else if (isInserting) {
      context.missing(_imagePathsMeta);
    }
    if (data.containsKey('pdf_path')) {
      context.handle(
        _pdfPathMeta,
        pdfPath.isAcceptableOrUnknown(data['pdf_path']!, _pdfPathMeta),
      );
    }
    if (data.containsKey('thumbnail_path')) {
      context.handle(
        _thumbnailPathMeta,
        thumbnailPath.isAcceptableOrUnknown(
          data['thumbnail_path']!,
          _thumbnailPathMeta,
        ),
      );
    }
    if (data.containsKey('ocr_text')) {
      context.handle(
        _ocrTextMeta,
        ocrText.isAcceptableOrUnknown(data['ocr_text']!, _ocrTextMeta),
      );
    }
    if (data.containsKey('tags')) {
      context.handle(
        _tagsMeta,
        tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta),
      );
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
        _isFavoriteMeta,
        isFavorite.isAcceptableOrUnknown(data['is_favorite']!, _isFavoriteMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DocumentTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DocumentTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      imagePaths: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_paths'],
      )!,
      pdfPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pdf_path'],
      ),
      thumbnailPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}thumbnail_path'],
      ),
      ocrText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ocr_text'],
      ),
      tags: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tags'],
      )!,
      isFavorite: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_favorite'],
      )!,
    );
  }

  @override
  $DocumentTableTable createAlias(String alias) {
    return $DocumentTableTable(attachedDatabase, alias);
  }
}

class DocumentTableData extends DataClass
    implements Insertable<DocumentTableData> {
  final String id;
  final String title;
  final DateTime createdAt;
  final String imagePaths;
  final String? pdfPath;
  final String? thumbnailPath;
  final String? ocrText;
  final String tags;
  final bool isFavorite;
  const DocumentTableData({
    required this.id,
    required this.title,
    required this.createdAt,
    required this.imagePaths,
    this.pdfPath,
    this.thumbnailPath,
    this.ocrText,
    required this.tags,
    required this.isFavorite,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['image_paths'] = Variable<String>(imagePaths);
    if (!nullToAbsent || pdfPath != null) {
      map['pdf_path'] = Variable<String>(pdfPath);
    }
    if (!nullToAbsent || thumbnailPath != null) {
      map['thumbnail_path'] = Variable<String>(thumbnailPath);
    }
    if (!nullToAbsent || ocrText != null) {
      map['ocr_text'] = Variable<String>(ocrText);
    }
    map['tags'] = Variable<String>(tags);
    map['is_favorite'] = Variable<bool>(isFavorite);
    return map;
  }

  DocumentTableCompanion toCompanion(bool nullToAbsent) {
    return DocumentTableCompanion(
      id: Value(id),
      title: Value(title),
      createdAt: Value(createdAt),
      imagePaths: Value(imagePaths),
      pdfPath: pdfPath == null && nullToAbsent
          ? const Value.absent()
          : Value(pdfPath),
      thumbnailPath: thumbnailPath == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnailPath),
      ocrText: ocrText == null && nullToAbsent
          ? const Value.absent()
          : Value(ocrText),
      tags: Value(tags),
      isFavorite: Value(isFavorite),
    );
  }

  factory DocumentTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DocumentTableData(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      imagePaths: serializer.fromJson<String>(json['imagePaths']),
      pdfPath: serializer.fromJson<String?>(json['pdfPath']),
      thumbnailPath: serializer.fromJson<String?>(json['thumbnailPath']),
      ocrText: serializer.fromJson<String?>(json['ocrText']),
      tags: serializer.fromJson<String>(json['tags']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'imagePaths': serializer.toJson<String>(imagePaths),
      'pdfPath': serializer.toJson<String?>(pdfPath),
      'thumbnailPath': serializer.toJson<String?>(thumbnailPath),
      'ocrText': serializer.toJson<String?>(ocrText),
      'tags': serializer.toJson<String>(tags),
      'isFavorite': serializer.toJson<bool>(isFavorite),
    };
  }

  DocumentTableData copyWith({
    String? id,
    String? title,
    DateTime? createdAt,
    String? imagePaths,
    Value<String?> pdfPath = const Value.absent(),
    Value<String?> thumbnailPath = const Value.absent(),
    Value<String?> ocrText = const Value.absent(),
    String? tags,
    bool? isFavorite,
  }) => DocumentTableData(
    id: id ?? this.id,
    title: title ?? this.title,
    createdAt: createdAt ?? this.createdAt,
    imagePaths: imagePaths ?? this.imagePaths,
    pdfPath: pdfPath.present ? pdfPath.value : this.pdfPath,
    thumbnailPath: thumbnailPath.present
        ? thumbnailPath.value
        : this.thumbnailPath,
    ocrText: ocrText.present ? ocrText.value : this.ocrText,
    tags: tags ?? this.tags,
    isFavorite: isFavorite ?? this.isFavorite,
  );
  DocumentTableData copyWithCompanion(DocumentTableCompanion data) {
    return DocumentTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      imagePaths: data.imagePaths.present
          ? data.imagePaths.value
          : this.imagePaths,
      pdfPath: data.pdfPath.present ? data.pdfPath.value : this.pdfPath,
      thumbnailPath: data.thumbnailPath.present
          ? data.thumbnailPath.value
          : this.thumbnailPath,
      ocrText: data.ocrText.present ? data.ocrText.value : this.ocrText,
      tags: data.tags.present ? data.tags.value : this.tags,
      isFavorite: data.isFavorite.present
          ? data.isFavorite.value
          : this.isFavorite,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DocumentTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt, ')
          ..write('imagePaths: $imagePaths, ')
          ..write('pdfPath: $pdfPath, ')
          ..write('thumbnailPath: $thumbnailPath, ')
          ..write('ocrText: $ocrText, ')
          ..write('tags: $tags, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    createdAt,
    imagePaths,
    pdfPath,
    thumbnailPath,
    ocrText,
    tags,
    isFavorite,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocumentTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.createdAt == this.createdAt &&
          other.imagePaths == this.imagePaths &&
          other.pdfPath == this.pdfPath &&
          other.thumbnailPath == this.thumbnailPath &&
          other.ocrText == this.ocrText &&
          other.tags == this.tags &&
          other.isFavorite == this.isFavorite);
}

class DocumentTableCompanion extends UpdateCompanion<DocumentTableData> {
  final Value<String> id;
  final Value<String> title;
  final Value<DateTime> createdAt;
  final Value<String> imagePaths;
  final Value<String?> pdfPath;
  final Value<String?> thumbnailPath;
  final Value<String?> ocrText;
  final Value<String> tags;
  final Value<bool> isFavorite;
  final Value<int> rowid;
  const DocumentTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.imagePaths = const Value.absent(),
    this.pdfPath = const Value.absent(),
    this.thumbnailPath = const Value.absent(),
    this.ocrText = const Value.absent(),
    this.tags = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DocumentTableCompanion.insert({
    required String id,
    required String title,
    required DateTime createdAt,
    required String imagePaths,
    this.pdfPath = const Value.absent(),
    this.thumbnailPath = const Value.absent(),
    this.ocrText = const Value.absent(),
    this.tags = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       createdAt = Value(createdAt),
       imagePaths = Value(imagePaths);
  static Insertable<DocumentTableData> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<DateTime>? createdAt,
    Expression<String>? imagePaths,
    Expression<String>? pdfPath,
    Expression<String>? thumbnailPath,
    Expression<String>? ocrText,
    Expression<String>? tags,
    Expression<bool>? isFavorite,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (createdAt != null) 'created_at': createdAt,
      if (imagePaths != null) 'image_paths': imagePaths,
      if (pdfPath != null) 'pdf_path': pdfPath,
      if (thumbnailPath != null) 'thumbnail_path': thumbnailPath,
      if (ocrText != null) 'ocr_text': ocrText,
      if (tags != null) 'tags': tags,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DocumentTableCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<DateTime>? createdAt,
    Value<String>? imagePaths,
    Value<String?>? pdfPath,
    Value<String?>? thumbnailPath,
    Value<String?>? ocrText,
    Value<String>? tags,
    Value<bool>? isFavorite,
    Value<int>? rowid,
  }) {
    return DocumentTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      imagePaths: imagePaths ?? this.imagePaths,
      pdfPath: pdfPath ?? this.pdfPath,
      thumbnailPath: thumbnailPath ?? this.thumbnailPath,
      ocrText: ocrText ?? this.ocrText,
      tags: tags ?? this.tags,
      isFavorite: isFavorite ?? this.isFavorite,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (imagePaths.present) {
      map['image_paths'] = Variable<String>(imagePaths.value);
    }
    if (pdfPath.present) {
      map['pdf_path'] = Variable<String>(pdfPath.value);
    }
    if (thumbnailPath.present) {
      map['thumbnail_path'] = Variable<String>(thumbnailPath.value);
    }
    if (ocrText.present) {
      map['ocr_text'] = Variable<String>(ocrText.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocumentTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt, ')
          ..write('imagePaths: $imagePaths, ')
          ..write('pdfPath: $pdfPath, ')
          ..write('thumbnailPath: $thumbnailPath, ')
          ..write('ocrText: $ocrText, ')
          ..write('tags: $tags, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DocumentTableTable documentTable = $DocumentTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [documentTable];
}

typedef $$DocumentTableTableCreateCompanionBuilder =
    DocumentTableCompanion Function({
      required String id,
      required String title,
      required DateTime createdAt,
      required String imagePaths,
      Value<String?> pdfPath,
      Value<String?> thumbnailPath,
      Value<String?> ocrText,
      Value<String> tags,
      Value<bool> isFavorite,
      Value<int> rowid,
    });
typedef $$DocumentTableTableUpdateCompanionBuilder =
    DocumentTableCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<DateTime> createdAt,
      Value<String> imagePaths,
      Value<String?> pdfPath,
      Value<String?> thumbnailPath,
      Value<String?> ocrText,
      Value<String> tags,
      Value<bool> isFavorite,
      Value<int> rowid,
    });

class $$DocumentTableTableFilterComposer
    extends Composer<_$AppDatabase, $DocumentTableTable> {
  $$DocumentTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imagePaths => $composableBuilder(
    column: $table.imagePaths,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pdfPath => $composableBuilder(
    column: $table.pdfPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get thumbnailPath => $composableBuilder(
    column: $table.thumbnailPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ocrText => $composableBuilder(
    column: $table.ocrText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DocumentTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DocumentTableTable> {
  $$DocumentTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imagePaths => $composableBuilder(
    column: $table.imagePaths,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pdfPath => $composableBuilder(
    column: $table.pdfPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get thumbnailPath => $composableBuilder(
    column: $table.thumbnailPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ocrText => $composableBuilder(
    column: $table.ocrText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DocumentTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DocumentTableTable> {
  $$DocumentTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get imagePaths => $composableBuilder(
    column: $table.imagePaths,
    builder: (column) => column,
  );

  GeneratedColumn<String> get pdfPath =>
      $composableBuilder(column: $table.pdfPath, builder: (column) => column);

  GeneratedColumn<String> get thumbnailPath => $composableBuilder(
    column: $table.thumbnailPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get ocrText =>
      $composableBuilder(column: $table.ocrText, builder: (column) => column);

  GeneratedColumn<String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => column,
  );
}

class $$DocumentTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DocumentTableTable,
          DocumentTableData,
          $$DocumentTableTableFilterComposer,
          $$DocumentTableTableOrderingComposer,
          $$DocumentTableTableAnnotationComposer,
          $$DocumentTableTableCreateCompanionBuilder,
          $$DocumentTableTableUpdateCompanionBuilder,
          (
            DocumentTableData,
            BaseReferences<
              _$AppDatabase,
              $DocumentTableTable,
              DocumentTableData
            >,
          ),
          DocumentTableData,
          PrefetchHooks Function()
        > {
  $$DocumentTableTableTableManager(_$AppDatabase db, $DocumentTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DocumentTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DocumentTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DocumentTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> imagePaths = const Value.absent(),
                Value<String?> pdfPath = const Value.absent(),
                Value<String?> thumbnailPath = const Value.absent(),
                Value<String?> ocrText = const Value.absent(),
                Value<String> tags = const Value.absent(),
                Value<bool> isFavorite = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DocumentTableCompanion(
                id: id,
                title: title,
                createdAt: createdAt,
                imagePaths: imagePaths,
                pdfPath: pdfPath,
                thumbnailPath: thumbnailPath,
                ocrText: ocrText,
                tags: tags,
                isFavorite: isFavorite,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required DateTime createdAt,
                required String imagePaths,
                Value<String?> pdfPath = const Value.absent(),
                Value<String?> thumbnailPath = const Value.absent(),
                Value<String?> ocrText = const Value.absent(),
                Value<String> tags = const Value.absent(),
                Value<bool> isFavorite = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DocumentTableCompanion.insert(
                id: id,
                title: title,
                createdAt: createdAt,
                imagePaths: imagePaths,
                pdfPath: pdfPath,
                thumbnailPath: thumbnailPath,
                ocrText: ocrText,
                tags: tags,
                isFavorite: isFavorite,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DocumentTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DocumentTableTable,
      DocumentTableData,
      $$DocumentTableTableFilterComposer,
      $$DocumentTableTableOrderingComposer,
      $$DocumentTableTableAnnotationComposer,
      $$DocumentTableTableCreateCompanionBuilder,
      $$DocumentTableTableUpdateCompanionBuilder,
      (
        DocumentTableData,
        BaseReferences<_$AppDatabase, $DocumentTableTable, DocumentTableData>,
      ),
      DocumentTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DocumentTableTableTableManager get documentTable =>
      $$DocumentTableTableTableManager(_db, _db.documentTable);
}
