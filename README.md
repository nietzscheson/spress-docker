Spress Dockerfile
=================

[Spress](http://spress.yosymfony.com/) is a static site generator which allows you to write and publish your web sites

How to use
----------

```
docker run -v $(pwd):/app pantelm/spress site:new [path] [theme] # create a new site
docker run -v $(pwd):/app -p 4000:4000 pantelm/spress site:build --server --watch # launch the built-in server and watch your file
```
