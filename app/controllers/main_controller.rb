class MainController < ApplicationController
  def landing
  end

  def map
    @errors = []
    @errors << "Missing Page Title param 'title'." unless @title = params[:title]
    @errors << "Missing Page Description param 'description'." unless @description = params[:description]
    @errors << "Missing Callback URL param 'callback'." unless @callback = params[:callback]
    @errors << "Callback URL '#{@callback}' is not a valid absolute URL." unless @callback and @callback =~ /^#{URI::ABS_URI}$/
    render :error unless @errors.empty?
  end
end
