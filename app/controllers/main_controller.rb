class MainController < ApplicationController
  def landing
  end

  def map
    @errors = []
    @errors << "Missing Page Title param 'title'." unless @title = params[:title]
    @errors << "Missing Page Description param 'description'." unless @description = params[:description]
    @errors << "Missing Site Name param 'site_name'." unless @site_name = params[:site_name]
    @errors << "Missing Image param 'image'." unless @image = params[:image]
    @errors << "Missing Callback URL param 'callback'." unless @callback = params[:callback]
    @errors << "Image URL '#{@image}' is not a valid absolute URL." unless @image =~ /^#{URI::ABS_URI}$/
    @errors << "Callback URL '#{@callback}' is not a valid absolute URL." unless @callback =~ /^#{URI::ABS_URI}$/
    render :error unless @errors.empty?
  end
end
