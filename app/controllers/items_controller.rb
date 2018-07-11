class ItemsController < ApplicationController
    
    def index
      @item = Item.last
    end
    
    def new
    end
    
    def create
      upload_images
      Item.create(public_id: upload_images["public_id"],
                     format: upload_images["format"],
          original_filename: upload_images["original_filename"],
                        url: upload_images["url"],
                 secure_url: upload_images["secure_url"])
      binding.pry
    end
    
    private
    def upload_images
      data = params[:upload]
      data = data[:datafile]
      Cloudinary::Uploader.upload("#{data.original_filename}")
    end
    
end
