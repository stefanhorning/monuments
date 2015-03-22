class WelcomeController < ApplicationController
  def index
    @albums = Album.where(public: true)
  end
end
