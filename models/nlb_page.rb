# Retrieves the page requested as a ruby object
# Caches the page on disk to prevent multiple network accesses
class NlbPage
  PAGE_STORE_PATH = "tmp/pages"
  class <<self
    def get(book_url)
      # check cache
      unless File.exist?(file_name book_url)
        # download page
        system ("curl #{book_url} > #{file_name book_url}")
      end

      # todo check validity

      # create object
      File.open(file_name book_url) {|f| new f}
    end

    def clear
      # clears cached pages
      File.delete *Dir.glob("#{PAGE_STORE_PATH}/*")
    end

    private
      def file_name(book_url)
        "#{PAGE_STORE_PATH}/#{book_url.hash}"
      end    
  end

  def initialize(file)
    # parse details
  end


end