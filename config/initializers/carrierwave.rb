CarrierWave.configure do |config|
 config.storage = :grid_fs
# config.grid_fs_database = Mongoid.database.name
# config.grid_fs_host = Mongoid.config.master.connection.host
 config.root = Rails.root.join('tmp')
 config.cache_dir = "uploads"
 config.grid_fs_access_url = "/uploads/photos"
end
