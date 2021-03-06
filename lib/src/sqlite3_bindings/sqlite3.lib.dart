// This code was generated by a tool.
// Processing tool available at https://github.com/mezoni/binary_generator

part of sqlite3_bindings;

class Sqlite3Lib {
  DynamicLibrary _library;
  
  /**
   *
   */
  Sqlite3Lib(DynamicLibrary library) { 
    var headers = <String>["sqlite3.lib.h"];
    var types = library.types;
    var helper = new BinaryTypeHelper(types); 
    for (var header in headers) {
      helper.declare(header);    
    }
  
    library.link(headers);
    _library = library;
  }
  
  /**
   * int sqlite3_bind_blob(sqlite3_stmt *, int, void *, int, void (*f)(void *))
   */
  int sqlite3_bind_blob(arg0, int arg1, arg2, int n, f) {
    return _library.invoke("sqlite3_bind_blob", [arg0, arg1, arg2, n, f]);
  }
  
  /**
   * int sqlite3_bind_double(sqlite3_stmt *, int, double)
   */
  int sqlite3_bind_double(arg0, int arg1, double arg2) {
    return _library.invoke("sqlite3_bind_double", [arg0, arg1, arg2]);
  }
  
  /**
   * int sqlite3_bind_int(sqlite3_stmt *, int, int)
   */
  int sqlite3_bind_int(arg0, int arg1, int arg2) {
    return _library.invoke("sqlite3_bind_int", [arg0, arg1, arg2]);
  }
  
  /**
   * int sqlite3_bind_int64(sqlite3_stmt *, int, sqlite3_int64)
   */
  int sqlite3_bind_int64(arg0, int arg1, int arg2) {
    return _library.invoke("sqlite3_bind_int64", [arg0, arg1, arg2]);
  }
  
  /**
   * int sqlite3_bind_null(sqlite3_stmt *, int)
   */
  int sqlite3_bind_null(arg0, int arg1) {
    return _library.invoke("sqlite3_bind_null", [arg0, arg1]);
  }
  
  /**
   * int sqlite3_bind_parameter_count(sqlite3_stmt *)
   */
  int sqlite3_bind_parameter_count(arg0) {
    return _library.invoke("sqlite3_bind_parameter_count", [arg0]);
  }
  
  /**
   * int sqlite3_bind_parameter_index(sqlite3_stmt *, char *)
   */
  int sqlite3_bind_parameter_index(arg0, zName) {
    return _library.invoke("sqlite3_bind_parameter_index", [arg0, zName]);
  }
  
  /**
   * char * sqlite3_bind_parameter_name(sqlite3_stmt *, int)
   */
  BinaryData sqlite3_bind_parameter_name(arg0, int arg1) {
    return _library.invoke("sqlite3_bind_parameter_name", [arg0, arg1]);
  }
  
  /**
   * int sqlite3_bind_text(sqlite3_stmt *, int, char *, int, void (*f)(void *))
   */
  int sqlite3_bind_text(arg0, int arg1, arg2, int arg3, f) {
    return _library.invoke("sqlite3_bind_text", [arg0, arg1, arg2, arg3, f]);
  }
  
  /**
   * int sqlite3_bind_text16(sqlite3_stmt *, int, void *, int, void (*f)(void *))
   */
  int sqlite3_bind_text16(arg0, int arg1, arg2, int arg3, f) {
    return _library.invoke("sqlite3_bind_text16", [arg0, arg1, arg2, arg3, f]);
  }
  
  /**
   * int sqlite3_bind_value(sqlite3_stmt *, int, sqlite3_value *)
   */
  int sqlite3_bind_value(arg0, int arg1, arg2) {
    return _library.invoke("sqlite3_bind_value", [arg0, arg1, arg2]);
  }
  
  /**
   * int sqlite3_bind_zeroblob(sqlite3_stmt *, int, int)
   */
  int sqlite3_bind_zeroblob(arg0, int arg1, int n) {
    return _library.invoke("sqlite3_bind_zeroblob", [arg0, arg1, n]);
  }
  
  /**
   * int sqlite3_changes(sqlite3 *)
   */
  int sqlite3_changes(arg0) {
    return _library.invoke("sqlite3_changes", [arg0]);
  }
  
  /**
   * int sqlite3_close(sqlite3 *)
   */
  int sqlite3_close(arg0) {
    return _library.invoke("sqlite3_close", [arg0]);
  }
  
  /**
   * int sqlite3_close_v2(sqlite3 *)
   */
  int sqlite3_close_v2(arg0) {
    return _library.invoke("sqlite3_close_v2", [arg0]);
  }
  
  /**
   * void * sqlite3_column_blob(sqlite3_stmt *, int)
   */
  BinaryData sqlite3_column_blob(arg0, int iCol) {
    return _library.invoke("sqlite3_column_blob", [arg0, iCol]);
  }
  
  /**
   * int sqlite3_column_bytes(sqlite3_stmt *, int)
   */
  int sqlite3_column_bytes(arg0, int iCol) {
    return _library.invoke("sqlite3_column_bytes", [arg0, iCol]);
  }
  
  /**
   * int sqlite3_column_bytes16(sqlite3_stmt *, int)
   */
  int sqlite3_column_bytes16(arg0, int iCol) {
    return _library.invoke("sqlite3_column_bytes16", [arg0, iCol]);
  }
  
  /**
   * int sqlite3_column_count(sqlite3_stmt *)
   */
  int sqlite3_column_count(pStmt) {
    return _library.invoke("sqlite3_column_count", [pStmt]);
  }
  
  /**
   * double sqlite3_column_double(sqlite3_stmt *, int)
   */
  double sqlite3_column_double(arg0, int iCol) {
    return _library.invoke("sqlite3_column_double", [arg0, iCol]);
  }
  
  /**
   * int sqlite3_column_int(sqlite3_stmt *, int)
   */
  int sqlite3_column_int(arg0, int iCol) {
    return _library.invoke("sqlite3_column_int", [arg0, iCol]);
  }
  
  /**
   * sqlite3_int64 sqlite3_column_int64(sqlite3_stmt *, int)
   */
  int sqlite3_column_int64(arg0, int iCol) {
    return _library.invoke("sqlite3_column_int64", [arg0, iCol]);
  }
  
  /**
   * char * sqlite3_column_name(sqlite3_stmt *, int)
   */
  BinaryData sqlite3_column_name(arg0, int N) {
    return _library.invoke("sqlite3_column_name", [arg0, N]);
  }
  
  /**
   * void * sqlite3_column_name16(sqlite3_stmt *, int)
   */
  BinaryData sqlite3_column_name16(arg0, int N) {
    return _library.invoke("sqlite3_column_name16", [arg0, N]);
  }
  
  /**
   * unsigned char * sqlite3_column_text(sqlite3_stmt *, int)
   */
  BinaryData sqlite3_column_text(arg0, int iCol) {
    return _library.invoke("sqlite3_column_text", [arg0, iCol]);
  }
  
  /**
   * void * sqlite3_column_text16(sqlite3_stmt *, int)
   */
  BinaryData sqlite3_column_text16(arg0, int iCol) {
    return _library.invoke("sqlite3_column_text16", [arg0, iCol]);
  }
  
  /**
   * int sqlite3_column_type(sqlite3_stmt *, int)
   */
  int sqlite3_column_type(arg0, int iCol) {
    return _library.invoke("sqlite3_column_type", [arg0, iCol]);
  }
  
  /**
   * sqlite3_value * sqlite3_column_value(sqlite3_stmt *, int)
   */
  BinaryData sqlite3_column_value(arg0, int iCol) {
    return _library.invoke("sqlite3_column_value", [arg0, iCol]);
  }
  
  /**
   * int sqlite3_data_count(sqlite3_stmt *)
   */
  int sqlite3_data_count(pStmt) {
    return _library.invoke("sqlite3_data_count", [pStmt]);
  }
  
  /**
   * int sqlite3_errcode(sqlite3 *)
   */
  int sqlite3_errcode(db) {
    return _library.invoke("sqlite3_errcode", [db]);
  }
  
  /**
   * char * sqlite3_errmsg(sqlite3 *)
   */
  BinaryData sqlite3_errmsg(arg0) {
    return _library.invoke("sqlite3_errmsg", [arg0]);
  }
  
  /**
   * void * sqlite3_errmsg16(sqlite3 *)
   */
  BinaryData sqlite3_errmsg16(arg0) {
    return _library.invoke("sqlite3_errmsg16", [arg0]);
  }
  
  /**
   * char * sqlite3_errstr(int)
   */
  BinaryData sqlite3_errstr(int arg0) {
    return _library.invoke("sqlite3_errstr", [arg0]);
  }
  
  /**
   * int sqlite3_exec(sqlite3 *, char *, int (*callback)(void *, int, char **, char **), void *, char **)
   */
  int sqlite3_exec(arg0, sql, callback, arg1, errmsg) {
    return _library.invoke("sqlite3_exec", [arg0, sql, callback, arg1, errmsg]);
  }
  
  /**
   * int sqlite3_extended_errcode(sqlite3 *)
   */
  int sqlite3_extended_errcode(db) {
    return _library.invoke("sqlite3_extended_errcode", [db]);
  }
  
  /**
   * int sqlite3_finalize(sqlite3_stmt *)
   */
  int sqlite3_finalize(pStmt) {
    return _library.invoke("sqlite3_finalize", [pStmt]);
  }
  
  /**
   * void sqlite3_free(void *)
   */
  void sqlite3_free(arg0) {
    return _library.invoke("sqlite3_free", [arg0]);
  }
  
  /**
   * sqlite3_int64 sqlite3_last_insert_rowid(sqlite3 *)
   */
  int sqlite3_last_insert_rowid(arg0) {
    return _library.invoke("sqlite3_last_insert_rowid", [arg0]);
  }
  
  /**
   * char * sqlite3_libversion()
   */
  BinaryData sqlite3_libversion() {
    return _library.invoke("sqlite3_libversion", []);
  }
  
  /**
   * int sqlite3_libversion_number()
   */
  int sqlite3_libversion_number() {
    return _library.invoke("sqlite3_libversion_number", []);
  }
  
  /**
   * int sqlite3_open(char *, sqlite3 **)
   */
  int sqlite3_open(filename, ppDb) {
    return _library.invoke("sqlite3_open", [filename, ppDb]);
  }
  
  /**
   * int sqlite3_open16(void *, sqlite3 **)
   */
  int sqlite3_open16(filename, ppDb) {
    return _library.invoke("sqlite3_open16", [filename, ppDb]);
  }
  
  /**
   * int sqlite3_open_v2(char *, sqlite3 **, int, char *)
   */
  int sqlite3_open_v2(filename, ppDb, int flags, zVfs) {
    return _library.invoke("sqlite3_open_v2", [filename, ppDb, flags, zVfs]);
  }
  
  /**
   * int sqlite3_prepare(sqlite3 *, char *, int, sqlite3_stmt **, char **)
   */
  int sqlite3_prepare(db, zSql, int nByte, ppStmt, pzTail) {
    return _library.invoke("sqlite3_prepare", [db, zSql, nByte, ppStmt, pzTail]);
  }
  
  /**
   * int sqlite3_prepare16(sqlite3 *, void *, int, sqlite3_stmt **, void **)
   */
  int sqlite3_prepare16(db, zSql, int nByte, ppStmt, pzTail) {
    return _library.invoke("sqlite3_prepare16", [db, zSql, nByte, ppStmt, pzTail]);
  }
  
  /**
   * int sqlite3_prepare16_v2(sqlite3 *, void *, int, sqlite3_stmt **, void **)
   */
  int sqlite3_prepare16_v2(db, zSql, int nByte, ppStmt, pzTail) {
    return _library.invoke("sqlite3_prepare16_v2", [db, zSql, nByte, ppStmt, pzTail]);
  }
  
  /**
   * int sqlite3_prepare_v2(sqlite3 *, char *, int, sqlite3_stmt **, char **)
   */
  int sqlite3_prepare_v2(db, zSql, int nByte, ppStmt, pzTail) {
    return _library.invoke("sqlite3_prepare_v2", [db, zSql, nByte, ppStmt, pzTail]);
  }
  
  /**
   * int sqlite3_reset(sqlite3_stmt *)
   */
  int sqlite3_reset(pStmt) {
    return _library.invoke("sqlite3_reset", [pStmt]);
  }
  
  /**
   * char * sqlite3_sourceid()
   */
  BinaryData sqlite3_sourceid() {
    return _library.invoke("sqlite3_sourceid", []);
  }
  
  /**
   * int sqlite3_step(sqlite3_stmt *)
   */
  int sqlite3_step(arg0) {
    return _library.invoke("sqlite3_step", [arg0]);
  }
  
}

