#!/bin/sh

set -ue

cd "$(dirname "$0")"
P=../pages

cp deploy_key ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

[ -d $P ] && rm -Rfv $P
git clone --depth=10 --branch=gh-pages git@github.com:TobiX/jenkins-neo2-theme.git $P

rsync -r --del --verbose ../dist/* $P/dist/
cp ../README.md $P/index.md

cd $P

git config user.email 'nobody@23.gs'
git config user.name 'Travis-CI Website Bot'
git config push.default simple

git add -A .
git commit -a -m "Update website from commit $TRAVIS_COMMIT"
git push origin HEAD:gh-pages
