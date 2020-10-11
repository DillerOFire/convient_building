mv .git /tmp

export oldstring=$1
export newstring=$2
grep -rl $oldstring . | xargs sed -i "s/$oldstring/$newstring/g"
mv $oldstring'_lavender.mk' $newstring'_lavender.mk'
mv $oldstring.dependencies $newstring.dependencies

mv /tmp/.git .
git add .
