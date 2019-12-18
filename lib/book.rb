class Book 
    attr_reader :title, :author, :publication_year

    def initialize(book_info)
        @title = book_info[:title]
        @author = book_info.values_at(:author_first_name, :author_last_name).compact.join(' ')
        @publication_year = book_info[:publication_date].split(/\W+/)[2]
    end

end 