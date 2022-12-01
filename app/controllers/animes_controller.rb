# frozen_string_literal: true

class AnimesController < ApplicationController
  http_basic_authenticate_with name: 'admin', password: 'admin', except: %i[index show]

  def index
    @animes = Anime.all
  end

  def show
    @anime = Anime.find(params[:id])
  end

  def new
    @anime = Anime.new
  end

  def create
    @anime = Anime.new(anime_params)

    if @anime.save
      redirect_to @anime
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @anime = Anime.find(params[:id])
  end

  def update
    @anime = Anime.find(params[:id])

    if @anime.update(anime_params)
      redirect_to @anime
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @anime = Anime.find(params[:id])
    @anime.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def anime_params
    params.require(:anime).permit(:title, :body, :status)
  end

  def pin_params
    params.require(:pin).permit(:title, :body, :image, pictures: [])
  end
end
