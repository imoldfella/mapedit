// extensions to dcli?

// Get the home directory or null if unknown.
import 'dart:io';
import 'package:file/local.dart';
import 'package:file/file.dart';

int numCores() {
  return Platform.numberOfProcessors;
}

FileSystem getFs() {
  return const LocalFileSystem();
}

String? homeDirectory() {
  switch (Platform.operatingSystem) {
    case 'linux':
    case 'macos':
      return Platform.environment['HOME'];
    case 'windows':
      return Platform.environment['USERPROFILE'];
    case 'android':
      // Probably want internal storage.
      return '/storage/sdcard0';
    case 'ios':
      // iOS doesn't really have a home directory.
      return null;
    case 'fuchsia':
      // I have no idea.
      return null;
    default:
      return null;
  }
}
