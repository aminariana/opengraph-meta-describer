opengraph-meta-describer
========================

Makes a webpage that looks ugly when shared on Facebook beautiful, this service is an analog to a URL shortening API that takes a URL to a web page plus a few meta descriptions about that web page, and creates a wrapping webpage for it, augmented with Open-Graph supported meta data. This way, the input URL, which may originally look ugly when shared on Facebook, can look presentable, because Facebook can scrape the auxiliary meta info from the wrapping page. Nothing is actually stored in the service. The response simply reflects the parameters provided in the GET request as Open Graph META tags.
