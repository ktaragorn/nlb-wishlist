class Book
  include DataMapper::Resource

  timestamps :at, :on
  property   :deleted_at, ParanoidDateTime
  property 	 :id,         Serial

  property :name, String
  property :img_path, String

  has n, :branches, :through => Resource
end
