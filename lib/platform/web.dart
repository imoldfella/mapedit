import 'package:file/file.dart';
import 'package:file/memory.dart';

FileSystem getFs() {
  return MemoryFileSystem();
}

int numCores() {
  return 4;
}
