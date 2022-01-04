#!/bin/sh

set -eux

java -jar "/searsiaserver.jar" -path "${SEARSIA_STORE_PATH}" $@
