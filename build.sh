#!/bin/sh
set -e

echo "=== Building DevOps Application ==="
echo "Compiling source files..."

rm -rf out
mkdir -p out

# Compile MAIN + TEST
javac -encoding UTF-8 -d out \
  src/main/java/com/example/HelloDevOps.java \
  src/test/java/com/example/HelloDevOpsTest.java

echo "Compilation complete."

echo "=== Running Tests ==="
java -cp out com.example.HelloDevOpsTest
echo "Tests completed."

echo "=== Creating JAR ==="
jar cfe app.jar com.example.HelloDevOps -C out .
echo "JAR created: app.jar"

echo "=== Running Application ==="
java -cp out com.example.HelloDevOps
