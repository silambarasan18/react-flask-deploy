#!/bin/sh

export NODE_OPTIONS=--openssl-legacy-provider

npm run build
npm install -g serve
serve -s build
npm install -g serve
serve -s build