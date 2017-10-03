

default:
	docker run --rm --label=jekyll --volume=$$(pwd):/srv/jekyll   -it -p 4000:4000     jekyll/jekyll:3.5.1 jekyll s --force_polling --drafts

preview:
	docker run --rm --label=jekyll --volume=$$(pwd):/srv/jekyll   -it -p 4000:4000     jekyll/jekyll:3.5.1 jekyll s --force_polling

basic-build: basic.Dockerfile
	docker build -t nielsole/jekyll-base -f basic.Dockerfile .

build:
	docker build -t nielsole/niels-ole.com .

push: build
	docker push nielsole/niels-ole.com
