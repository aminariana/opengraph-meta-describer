class MainController < ApplicationController
  def landing
  end

  def map
    @errors = []
    @errors << "Missing callback URL param 'callback'." unless @callback = params[:callback]
    @errors << "Missing Page Title param 'title'." unless @title = params[:title]
    render :error unless @errors.empty?
  end
end
