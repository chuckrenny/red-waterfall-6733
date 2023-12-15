class SearchController < ApplicationController
  def index
    require 'pry';binding.pry
    @nation = params[:nation]
    if @nation
      
    end
  end
end