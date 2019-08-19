#!/bin/sh
set -e

P="$(mktemp -d)"

if [ "$encrypted_705a6cbe1eb1_key" ]
then
	eval "$(ssh-agent -s)"
	openssl aes-256-cbc -K $encrypted_705a6cbe1eb1_key -iv $encrypted_705a6cbe1eb1_iv \
	    -in .github/deploy_key.enc -d | ssh-add -
fi

[ -d $P ] && rm -Rfv $P
git clone --depth=10 --branch=gh-pages git@github.com:${TRAVIS_REPO_SLUG}.git $P

rsync -r --del --verbose LICENSE *.md dist img $P/
mv $P/README.md $P/index.md

cd $P

git config user.email 'nobody@23.gs'
git config user.name 'Travis-CI Website Bot'
git config push.default simple

addmsg="commit $TRAVIS_COMMIT"
if [ "$TRAVIS_TAG" ]
then
	cp -Rv dist "$TRAVIS_TAG"
	addmsg="tag $TRAVIS_TAG"
fi

git add -A .
if [ "$TRAVIS_COMMIT" ]
then
	git commit -a -m "Update website from $addmsg"
	git push origin HEAD:gh-pages
fi
