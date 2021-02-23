build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve

setup:
	gem install bundler
	bundle update jekyll
	bundle install

logos:
	./logos.sh

.PHONY: build serve setup logos
