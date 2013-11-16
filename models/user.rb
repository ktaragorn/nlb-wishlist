class User
  include DataMapper::Resource

  timestamps :at, :on
  property   :deleted_at, ParanoidDateTime
  property 	 :id,         Serial

  has n, :wishlists

  property :email, String
end
