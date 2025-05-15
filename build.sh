#!/bin/sh
curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
docker build -t wuyufei1993/chrome_for_testing:136.0.7103.94 .
