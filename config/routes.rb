OpengraphMetaDescriber::Application.routes.draw do
  root :to => "main#landing"

  get "/map", :to => "main#map"
end
#== Route Map
# Generated on 09 Nov 2013 20:50
#
# root GET /              main#landing
#  map GET /map(.:format) main#map
