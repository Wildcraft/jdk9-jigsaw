#!/bin/bash

set -eu

echo 
echo "*** Running from within the mods folder without arguments. ***"
echo

java --module-path mods/main:lib \
     --module com.greetings/com.greetings.Main

echo
echo "*** Running from within the mods folder with arguments. ***"
echo

java --module-path mods/main:lib \
     --module com.greetings/com.greetings.Main \
    Alice Bob Charlie

echo
echo "*** Running tests ***"
echo

# Instead of running the compiled test code directly (which we could do), we're running it as a patch to the original code.
java --module-path mods/main:lib \
     --add-modules com.greetings \
     --patch-module com.greetings=mods/test/com.greetings \
     --module junit/org.junit.runner.JUnitCore \
    com.greetings.GreetTest
