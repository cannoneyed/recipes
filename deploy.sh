#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd recipes/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:cannoneyed/recipes.git master:gh-pages

cd -