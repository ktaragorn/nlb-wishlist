class Wishlist
  include DataMapper::Resource

  timestamps :at, :on
  property   :deleted_at, ParanoidDateTime
  property 	 :id,         Serial

  belongs_to :user
  belongs_to :book
  has n, "branches", "Wishlist_branch"
end
