#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd recipes/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

git push origin master:gh-pages -f

cd -
