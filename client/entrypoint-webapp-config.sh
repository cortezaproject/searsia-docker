#!/bin/sh

set -eux

sed -i "s,var API_TEMPLATE = '';,var API_TEMPLATE = '${API_TEMPLATE}';,g" /usr/share/nginx/html/js/searsia.js
