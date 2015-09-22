part of sqlite3_bindings.headers;

const String _SQLITE3_LIB_H = """
#ifndef _SQLITE3_LIB_H
#define _SQLITE3_LIB_H

#include <sqlite3.h>

int sqlite3_bind_blob(sqlite3_stmt*, int, const void*, int n, void(*f)(void*));

//int sqlite3_bind_blob64(sqlite3_stmt*, int, const void*, sqlite3_uint64, void(*f)(void*));

int sqlite3_bind_double(sqlite3_stmt*, int, double);

int sqlite3_bind_int(sqlite3_stmt*, int, int);

int sqlite3_bind_int64(sqlite3_stmt*, int, sqlite3_int64);

int sqlite3_bind_null(sqlite3_stmt*, int);

int sqlite3_bind_parameter_count(sqlite3_stmt*);

int sqlite3_bind_parameter_index(sqlite3_stmt*, const char *zName);

const char * sqlite3_bind_parameter_name(sqlite3_stmt*, int);

int sqlite3_bind_text(sqlite3_stmt*,int,const char*,int,void(*f)(void*));

int sqlite3_bind_text16(sqlite3_stmt*, int, const void*, int, void(*f)(void*));

//int sqlite3_bind_text64(sqlite3_stmt*, int, const char*, sqlite3_uint64, void(*f)(void*), unsigned char encoding);

int sqlite3_bind_value(sqlite3_stmt*, int, const sqlite3_value*);

int sqlite3_bind_zeroblob(sqlite3_stmt*, int, int n);

//int sqlite3_bind_zeroblob64(sqlite3_stmt*, int, sqlite3_uint64);

int sqlite3_changes(sqlite3*);

int sqlite3_close(sqlite3*);

int sqlite3_close_v2(sqlite3*);

const void * sqlite3_column_blob(sqlite3_stmt*, int iCol);

int sqlite3_column_bytes(sqlite3_stmt*, int iCol);

int sqlite3_column_bytes16(sqlite3_stmt*, int iCol);

int sqlite3_column_count(sqlite3_stmt *pStmt);

double sqlite3_column_double(sqlite3_stmt*, int iCol);

int sqlite3_column_int(sqlite3_stmt*, int iCol);

sqlite3_int64 sqlite3_column_int64(sqlite3_stmt*, int iCol);

const char * sqlite3_column_name(sqlite3_stmt*, int N);

const void * sqlite3_column_name16(sqlite3_stmt*, int N);

const unsigned char * sqlite3_column_text(sqlite3_stmt*, int iCol);

const void * sqlite3_column_text16(sqlite3_stmt*, int iCol);

int sqlite3_column_type(sqlite3_stmt*, int iCol);

sqlite3_value * sqlite3_column_value(sqlite3_stmt*, int iCol);

int sqlite3_data_count(sqlite3_stmt *pStmt);

int sqlite3_errcode(sqlite3 *db);

const char * sqlite3_errmsg(sqlite3*);

const void * sqlite3_errmsg16(sqlite3*);

const char * sqlite3_errstr(int);

int sqlite3_exec(
  sqlite3*,
  const char *sql,
  int (*callback)(void*,int,char**,char**),
  void *,
  char **errmsg
);

int sqlite3_extended_errcode(sqlite3 *db);

int sqlite3_finalize(sqlite3_stmt *pStmt);

void sqlite3_free(void*);

sqlite3_int64 sqlite3_last_insert_rowid(sqlite3*);

const char * sqlite3_libversion(void);

int sqlite3_libversion_number(void);

int sqlite3_open(
  const char *filename,
  sqlite3 **ppDb
);

int sqlite3_open16(
  const void *filename,
  sqlite3 **ppDb
);

int sqlite3_open_v2(
  const char *filename,
  sqlite3 **ppDb,
  int flags,
  const char *zVfs
);

int sqlite3_prepare(
  sqlite3 *db,
  const char *zSql,
  int nByte,
  sqlite3_stmt **ppStmt,
  const char **pzTail
);

int sqlite3_prepare16(
  sqlite3 *db,
  const void *zSql,
  int nByte,
  sqlite3_stmt **ppStmt,
  const void **pzTail
);

int sqlite3_prepare16_v2(
  sqlite3 *db,
  const void *zSql,
  int nByte,
  sqlite3_stmt **ppStmt,
  const void **pzTail
);

int sqlite3_prepare_v2(
  sqlite3 *db,
  const char *zSql,
  int nByte,
  sqlite3_stmt **ppStmt,
  const char **pzTail
);

int sqlite3_reset(sqlite3_stmt *pStmt);

const char * sqlite3_sourceid(void);

int sqlite3_step(sqlite3_stmt*);

#endif
""";
