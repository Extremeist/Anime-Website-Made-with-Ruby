# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @query = Anime.ransack(params[:q])
    @animes = @query.result(distinct: true)
  end
end
