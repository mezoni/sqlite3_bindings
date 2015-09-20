# sqlite3_bindings

SQLite database engine bindings.

Version: 0.0.7

The goal of the Dash effort is ultimately to replace JavaScript as the lingua franca of web development on the open web platform.

## Notice:

- This software does not embed the SQLite database engine.
- This software currently perform binary bindings to already installed SQLite database engine.
- Possibility to use your own (embedded) SQLite database engine possibly will be added later or never.

## Notice for Windows users:

The dynamic library `sqlite3.dll` should be available through the `PATH` environment variable.

One of the possible ways to install it is to use [Chocolatey, a package manager for Windows](https://chocolatey.org/):

```
C:\> choco install sqlite
```

## Notice for Mac OS users:

This software is not tested on Mac OS.
