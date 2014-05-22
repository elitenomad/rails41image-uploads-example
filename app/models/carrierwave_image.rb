class CarrierwaveImage < ActiveRecord::Base
  mount_uploader :asset, AssetUploader
end
