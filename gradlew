#!/usr/bin/env bash
# Это стандартный скрипт Gradle для Unix/Linux
BASEDIR=$(dirname "$0")
cd "$BASEDIR"
exec java -jar gradle/wrapper/gradle-wrapper.jar "$@"
