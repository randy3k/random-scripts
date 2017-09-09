all:
	git add -A \
	&& git commit -m "Update shell-script at $$(date -u)" \
	&& git push
