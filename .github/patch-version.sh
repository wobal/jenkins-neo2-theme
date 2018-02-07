#!/bin/sh
sed -i 's/"version": ".*"/"version": "'$(git describe)'"/' package.json
