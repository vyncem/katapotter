class Basket
    attr_reader :books

    PRICE = 8

    DISCOUNTS = {
        "1": 0,
        "2": 0.05,
        "3": 0.10,
        "4": 0.20,
        "5": 0.25,
    }

    def initialize(books)
        @books = [books].flatten.group_by(&:title)
    end

    def price
        titles.map do |title|
            @title = title
            PRICE * copies * discount(copies)
        end.sum
    end

    private

    def discount(copies)
        1 - (copies < 5 ? DISCOUNTS[copies.to_s.to_sym] : DISCOUNTS[:'5'])
    end

    def titles
        books.keys
    end

    def copies
        books[@title].size
    end
end