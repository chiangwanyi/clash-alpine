#!/usr/bin/env bash

TMP_DIRECTORY="/tmp/"

install -d /usr/local/bin/clash/
install -m 755 "${TMP_DIRECTORY}clash" "/usr/local/bin/clash/clash"
mv "${TMP_DIRECTORY}config.yaml" "/usr/local/bin/clash/"
