all:
	cd santas-gift-tracking-service && pandoc readme.md -o santas.pdf && cd ..
	cd neighborhood-watch-bypass && pandoc readme.md -o watch.pdf && cd ..
	cd spare-key && pandoc readme.md -o spare.pdf && cd ..

merge:
	pdftk santas-gift-tracking-service/santas.pdf neighborhood-watch-bypass/watch.pdf spare-key/spare.pdf cat output writeup.pdf
