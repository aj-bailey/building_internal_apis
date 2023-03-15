class Book < ApplicationRecord
  before_save { |book| book.popularity = calculate_popularity }

  private
    def calculate_popularity
      number_sold > 5 ? "high" : "low"
    end
end
