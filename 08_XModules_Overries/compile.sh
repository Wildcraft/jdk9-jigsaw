#!/bin/bash

set -eu

PATCHES_FOLDER="mypatches/java.base"
SRC_FOLDER="src"

MODS_FOLDER="mods/com.greetings"

echo "Compiling a module by excluding it first."

javac --patch-module java.base=src -d $PATCHES_FOLDER \
        src/java.base/java/util/concurrent/ConcurrentHashMap.java

echo ""
echo "*** Compiling Main class***"

javac --module-path mods \
      -d mods/com.greetings/ \
      src/com.greetings/module-info.java \
      src/com.greetings/com/greetings/Main.java

tree -fl $PATCHES_FOLDER
tree -fl $SRC_FOLDER
tree -fl $MODS_FOLDER