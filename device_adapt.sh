#!/bin/bash
export oldstring=$1
export newstring=$2
grep -rl $oldstring . | xargs sed -i "s/$oldstring/$newstring/g" &&
mv $oldstring_lavender.mk $newstring_lavender.mk &&
mv $oldstring.dependencies $newstring.dependencies
