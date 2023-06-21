build:
	/opt/homebrew/opt/ruby@3.1/bin/bundle exec jekyll build

serve:
	/opt/homebrew/opt/ruby@3.1/bin/bundle exec jekyll serve

setup:
	/opt/homebrew/opt/ruby@3.1/bin/gem install bundler
	/opt/homebrew/opt/ruby@3.1/bin/bundle update jekyll
	/opt/homebrew/opt/ruby@3.1/bin/bundle install

logos:
	./logos.sh

.PHONY: build serve setup logos
