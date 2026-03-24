#!/bin/bash
echo "Compiling COBOL..."
cobc -x hello.cob -o hello

echo "Running program..."
./hello
