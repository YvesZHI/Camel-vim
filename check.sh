#!/bin/bash


set -e

hash gcc 2>/dev/null || { echo >&2 "gcc is not installed.  Aborting."; exit 1; }
hash cmake 2>/dev/null || { echo >&2 "cmake is not installed.  Aborting."; exit 1; }
hash make 2>/dev/null || { echo >&2 "make is not installed.  Aborting."; exit 1; }
hash python3.6-config 2>/dev/null || { echo >&2 "python3.6-dev is not installed.  Aborting."; exit 1; } # use python3.6-config to check if python3.6-dev is installed or not
hash git 2>/dev/null || { echo >&2 "git is not installed.  Aborting."; exit 1; }
hash vim 2>/dev/null || { echo >&2 "vim is not installed.  Aborting."; exit 1; }
hash autoreconf 2>/dev/null || { echo >&2 "automake is not installed.  Aborting."; exit 1; }
hash pkg-config 2>/dev/null || { echo >&2 "pkg-config is not installed.  Aborting."; exit 1; }
hash ctags 2>/dev/null || { echo >&2 "ctags is not installed.  Aborting."; exit 1; }
hash gdb 2>/dev/null || { echo >&2 "gdb is not installed.  Aborting."; exit 1; }
hash clang-format 2>/dev/null || { echo >&2 "clang-format is not installed.  Aborting."; exit 1; }
