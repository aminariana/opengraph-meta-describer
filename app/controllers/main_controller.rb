class MainController < ApplicationController
  def landing
  end

  def map
    @errors = []
    @errors << "Missing callback URL param 'callback'." unless params[:callback]
    render :error unless @errors.empty?
  end
end
