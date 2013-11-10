opengraph-meta-describer
========================

Makes a webpage that looks ugly when shared on Facebook beautiful.

This service is an analog to a URL shortening API that takes a URL to a web page plus a few meta descriptions about that web page, and creates a wrapping webpage for it, augmented with Open-Graph supported meta data. This way, the input URL, which may originally look ugly when shared on Facebook, can look presentable, because Facebook can scrape the auxiliary meta info from the wrapping page. Nothing is actually stored in the service. The response simply reflects the parameters provided in the GET request as Open Graph META tags.


Live production instance
------------------------

The main production instance and example are available at:
http://opengraph-meta-describer.herokuapp.com/

Documentation
-------------

The main API is the following path treated as a function:
http://opengraph-meta-describer.herokuapp.com/map?

**The request parameters accepted:**
- TBD

**The expected response header:**
- TBD

**The expected response behavior from the user's perspective:**
- TBD

Benefits
--------
(i.e. why the heck should you wrap your URL this way?)

Share on Facebook and let it pick up Opengraph protocol's expected META tags. Often you're dealing with a page on a server that's not in your control. You should still be able to go ahead and share that page without having Facebook render it in an ugly way. This is how you make it prettier.

Example
-------
TBD
