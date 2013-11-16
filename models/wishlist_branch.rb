class Wishlist_branch
  include DataMapper::Resource

  timestamps :at, :on
  property   :deleted_at, ParanoidDateTime
  property 	 :id,         Serial

  belongs_to :branch
  belongs_to :wishlist
  belongs_to :book, through: :wishlist
end
