#!/bin/bash

set -x

docker build --label "nanovnasaver" --tag "nanovnasaver" .
