all:
	git add -A \
	&& git commit -m "Update random-scripts at $$(date -u)" \
	&& git push
