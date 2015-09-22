part of sqlite3_bindings;

Sqlite3Lib loadSqlite3Library(BinaryTypes types) {
  if (types == null) {
    throw new ArgumentError.notNull("types");
  }

  var operatingSystem = Platform.operatingSystem;
  String filename;
  switch (operatingSystem) {
    case "android":
    case "linux":
      filename = "libsqlite3.so";
      break;
    case "macos":
      filename = "libsqlite3.dylib";
      break;
    case "windows":
      filename = "sqlite3.dll";
      break;
    default:
      throw new StateError("Unsupported operating system: $operatingSystem");
  }

  var library = DynamicLibrary.load(filename, types: types);
  if (library == null) {
    throw new StateError("Unable to load library: $filename");
  }

  return new Sqlite3Lib(library);
}
