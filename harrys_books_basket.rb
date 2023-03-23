class HarrysBooksBasket
    BOOK_1 = "Philosopher's stone"
    BOOK_2 = "Chamber of Secrets "
    BOOK_3 = "Prisoner of Azkaban"
    BOOK_4 = "Goblet of Fire"
    BOOK_5 = "Order of the Phoenix"

    PRICE_PER_BOOK = 8

    DISCOUNT = {
        '1': 1,
        '2': 0.95,
        '3': 0.9,
        '4': 0.8,
        '5': 0.75
    }

    def initialize books
        @books = books
    end

    def cost
        uniq_books_cost + ((@books.length - @books.uniq.length) * PRICE_PER_BOOK)
    end

    def uniq_books_cost
        @books.uniq.length * DISCOUNT[@books.uniq.length.to_s.to_sym] *  PRICE_PER_BOOK
    end
end