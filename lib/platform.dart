export 'platform/shim.dart'
    if (dart.library.io) 'notweb.dart'
    if (dart.library.html) 'web.dart';

import 'package:file/file.dart';
export 'package:file/file.dart';
