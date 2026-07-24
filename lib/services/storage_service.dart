import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class StorageService {
  final Uuid _uuid = const Uuid();

  /// Returns the root DocSnap directory.
  Future<Directory> getDocumentsDirectory() async {
    final appDir = await getApplicationDocumentsDirectory();

    final documentsDir = Directory(
      path.join(appDir.path, 'DocSnap'),
    );

    if (!await documentsDir.exists()) {
      await documentsDir.create(recursive: true);
    }

    return documentsDir;
  }

  /// Creates a unique folder for a scanned document.
  Future<Directory> createDocumentDirectory() async {
    final root = await getDocumentsDirectory();

    final directory = Directory(
      path.join(root.path, _uuid.v4()),
    );

    await directory.create(recursive: true);

    return directory;
  }

  /// Copies scanned images from the temporary cache into permanent storage.
  Future<List<String>> saveScannedImages(
    List<String> imagePaths,
  ) async {
    final documentDirectory = await createDocumentDirectory();

    final List<String> savedImages = [];

    for (int i = 0; i < imagePaths.length; i++) {
      final source = File(imagePaths[i]);

      final destination = File(
        path.join(
          documentDirectory.path,
          'page_${i + 1}.jpg',
        ),
      );

      await source.copy(destination.path);

      savedImages.add(destination.path);
    }

    return savedImages;
  }
}