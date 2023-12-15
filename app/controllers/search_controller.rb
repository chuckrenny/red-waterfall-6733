class SearchController < ApplicationController
  def index
    @nation = params[:nation].gsub('+', ' ').capitalize
    service = CharactersService.new
    @characters = service.nation_total_number(params[:nation])
  end
end