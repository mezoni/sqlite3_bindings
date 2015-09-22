part of sqlite3_bindings.headers;

const String _SQLITE3_H = """
#ifndef _SQLITE3_H_
#define _SQLITE3_H_

#include <stdarg.h>
#include <stdint.h>

typedef struct sqlite3 sqlite3;
typedef int (*sqlite3_callback)(void*,int,char**, char**);
typedef struct sqlite3_stmt sqlite3_stmt;
typedef int64_t sqlite_int64;
typedef uint64_t sqlite_uint64;
typedef sqlite_int64 sqlite3_int64;
typedef sqlite_uint64 sqlite3_uint64;
typedef struct Mem sqlite3_value;

#endif
""";
