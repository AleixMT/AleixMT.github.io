RC = bundle

run : _site
	@-bundle exec jekyll serve -o --detach 2>&1

_site : cleanRuntime
	@bundle install

cleanRuntime :
	@echo Killing execution of process in port 4000
	-kill -9 $(shell lsof -t -i:4000)

# Run foreground verbose
debug : _site
	export JEKYLL_LOG_LEVEL=debug
	bundle exec jekyll serve -o --verbose

.PHONY : clean
clean :
	rm -rf _site
