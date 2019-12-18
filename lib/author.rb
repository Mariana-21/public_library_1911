class Author
    attr_reader :name, :books

    def initialize(author_info)
        @name = author_info.values_at(:first_name, :last_name).compact.join(' ')
        @books = []
    end
end 