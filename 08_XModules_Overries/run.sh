#!/bin/bash

set -eu

echo 
echo "*** Running without the patch from within the mods folder. ***"
echo
java --module-path mods \
     --module com.greetings/com.greetings.Main 
#java -Xoverride:mypatches
#java --patch-module java.base=mypatches/java.base ...

echo
echo "*** Running with the patch from within the mods folder. ***"
echo

java --module-path mods \
     --patch-module java.base=mypatches/java.base \
     --module com.greetings/com.greetings.Main