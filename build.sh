#!/usr/bin/env bash

TARGET_PATH="/var/www/html/blog"

mkdocs build --site-dir $TARGET_PATH \
	--config-file ./mkdocs.yml \
	--clean \
	--verbose
