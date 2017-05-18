#!/bin/bash

set -eu

MODS="mods"
COM_GREETINGS_MAIN_FOLDER="${MODS}/main/com.greetings"
COM_GREETINGS_TEST_FOLDER="${MODS}/test/com.greetings"

echo ""
echo "*** Compiling main module in $COM_GREETINGS_MAIN_FOLDER ***"
javac --module-path lib \
      -d ${COM_GREETINGS_MAIN_FOLDER} \
      src/com.greetings/module-info.java \
      src/com.greetings/main/java/com/greetings/Greet.java \
      src/com.greetings/main/java/com/greetings/Main.java

echo ""
echo "*** Compiling test module in $COM_GREETINGS_TEST_FOLDER ***"
# We have to compile the test code (including the tested code) again to have that separate from the production code.
javac --module-path mods:lib \
      -d ${COM_GREETINGS_TEST_FOLDER} \
      src/com.greetings/module-info.java \
      src/com.greetings/main/java/com/greetings/Greet.java \
      src/com.greetings/test/java/com/greetings/GreetTest.java

echo ""
echo "*** Displaying the contents (modules) of the '$MODS' folder ***"
tree -fl $MODS
