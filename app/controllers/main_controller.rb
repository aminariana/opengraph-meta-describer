class MainController < ApplicationController
  def landing
  end

  def map
    @errors = []
    @errors << "Missing Callback URL param 'callback'." unless @callback = params[:callback]
    @errors << "Missing Page Title param 'title'." unless @title = params[:title]
    @errors << "Missing Page Description param 'description'." unless @description = params[:description]
    render :error unless @errors.empty?
  end
end
