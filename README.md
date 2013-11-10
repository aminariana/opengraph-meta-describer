opengraph-meta-describer
========================

Makes a webpage that looks ugly, shared on Facebook with "preview" care and beauty! All by injecting Open Graph META tags.

This service is an analog to a URL shortening API that takes a URL to a web page plus a few meta descriptions about that web page, and creates a wrapping webpage for it, augmented with Open-Graph supported meta data. This way, the input URL, which may originally look ugly when shared on Facebook, can look presentable, because Facebook can scrape the auxiliary meta info from the wrapping page. Nothing is actually stored in the service. The response simply reflects the parameters provided in the GET request as Open Graph META tags.


Live production instance
------------------------

The main production instance and example are available at:
- http://opengraph-meta-describer.herokuapp.com/

Documentation
-------------

The main API is the following path treated as a function:
- http://opengraph-meta-describer.herokuapp.com/map?

**The request parameters accepted:**
- title: The title of the page you want to render on Facebook
- description: The description preview you want to render on Facebook
- site_name: The name of your web site
- image: The absolute URL of the image you want rendered on Facebook
- callback: The landing URL to which the user will be redirected if they click the shared post

**The expected response header:**
```
  <title><%= @title %></title>
  <meta name="description" content="<%= @description %>">
  <meta name="keywords" content="keywords">
  <meta property="og:description" content="<%= @description %>">
  <meta property="og:image" content="<%= @image %>">
  <meta property="og:title" content="<%= @title %>">
  <meta property="og:site_name" content="<%= @site_name %>">
```

**The expected response behavior from the user's perspective:**
- User will temporarily land on our production server, and will be immediately redirected to the Callback URL provided.

Benefits
--------
(i.e. why the heck should you wrap your URL this way?)

Share on Facebook and let it pick up Opengraph protocol's expected META tags. Often you're dealing with a page on a server that's not in your control. You should still be able to go ahead and share that page without having Facebook render it in an ugly way. This is how you make it prettier.

Example
-------
You have a boring site such as: http://www.aminariana.com. Try sharing that on Facebook... yeah, see? Do not dispair! You can now make it more interesting when shared on Facebook:

```
http://opengraph-meta-describer.herokuapp.com/map?callback=http://aminariana.com&title=I%20don't%20always%20meta-meta-describe%20my%20shared%20webpages&description=But%20when%20I%20do,%20it's%20because%20I%20forgot%20to%20meta%20describe%20them%20in%20the%20original%20code&site_name=Amin%20Ariana&image=http://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Jonathan_Goldsmith_2009.jpg/400px-Jonathan_Goldsmith_2009.jpg
```

Try sharing that long link on Facebook, then clicking it. Hopefully that'll give you the Aha moment.

License
-------
MIT License. Use with credit and care.

That's all folks. Happy hacking.
