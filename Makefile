TARGET_PATH="/var/www/html/blog"

site:
	mkdocs build --site-dir ${TARGET_PATH} \
	  --config-file mkdocs.yml \
	  --clean
