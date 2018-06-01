echo 'input commit'
read commit
echo 'input tag'
read tag
git add .
git commit -m $commit
git push
git tag -a $tag -m $commit
git push origin --tags
pod trunk push QXKit.podspec