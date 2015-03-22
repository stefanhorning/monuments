class PhotosController < ApplicationController

  def image
    content = @photo.image.read
    if stale?(etag: content, last_modified: @user.updated_at.utc, public: true)
      send_data content, type: @photo.image.file.content_type, disposition: "inline"
      expires_in 0, public: true
    end
  end

  # TODO rest of controller and form for image uploading

end
