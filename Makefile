# Copyright (c) 2018 Jan "JayVii" <jayvii@posteo.de>
# SPDX-License-Identifier: GPL-3.0

TARGET_PATH="/var/www/html/blog"

site:
	mkdocs build --site-dir ${TARGET_PATH} \
	  --config-file ./mkdocs.yml \
	  --clean
