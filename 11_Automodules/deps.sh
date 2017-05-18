#!/bin/bash

set -eu

echo
echo "*** Module information for JUnit. ***"
echo

jar -d --file=lib/junit-4.12.jar

echo
echo "*** Dependency information for JUnit. ***"
echo

jdeps -s lib/junit-4.12.jar

echo
echo "*** Detailed information about missing dependencies for JUnit. ***"
echo

jdeps lib/junit-4.12.jar | grep "not found"

echo
echo "*** Module information for Hamcrest. ***"
echo

jar -d --file=lib/hamcrest-core-1.3.jar

echo
echo "*** Dependency information for Hamcrest. ***"
echo

jdeps -s lib/hamcrest-core-1.3.jar
