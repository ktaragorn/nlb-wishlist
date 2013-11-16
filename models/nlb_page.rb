# Retrieves the page requested as a ruby object
# Caches the page on disk to prevent multiple network accesses
class NlbPage
  PAGE_STORE_PATH = "tmp/pages/"
  def self.get(book)
    # check cache

    # download page

    # create object
  end

  def self.clear
    # clears cached pages
  end

  def initialize(file)
    # parse details
  end


end