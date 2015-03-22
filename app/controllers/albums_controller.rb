class AlbumsController < ApplicationController
  before_filter :authenticate_user!
  before_action :load_album, only: :create
  load_and_authorize_resource 

  def index
    @albums = @albums.where(user_id: current_user.id)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @album.save
      redirect_to @album, notice: 'Album was successfully created.'
    else
      render :new
    end
  end

  def update
    if @album.update(album_params)
      redirect_to @album, notice: 'Album was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @album.destroy
    redirect_to albums_url, notice: 'Album was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_album
    @album = Album.find(params[:id])
  end

  def load_album
    # CanCan fix for extra params
    @album = Album.new(album_params)
  end

  # Only allow a trusted parameter "white list" through.
  def album_params
    params.require(:album).permit(:name, :public).merge(user_id: current_user.id)
  end
end
