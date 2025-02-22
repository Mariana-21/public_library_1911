require './lib/author'
require 'minitest/autorun'
require 'minitest/pride'

class AuthorTest < Minitest::Test 

    def test_it_exists
        charlotte_bronte = Author.new({first_name: "Charlotte",
                             last_name: "Bronte"})
        assert_instance_of Author, charlotte_bronte
    end

    def test_it_has_attributes 
          charlotte_bronte = Author.new({first_name: "Charlotte",
                             last_name: "Bronte"})
        assert_equal "Charlotte Bronte", charlotte_bronte.name 
        assert_equal [], charlotte_bronte.books 
    end

    def test_books_can_be_made
        charlotte_bronte = Author.new({first_name: "Charlotte",last_name: "Bronte"})
    end
end