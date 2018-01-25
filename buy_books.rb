#!/usr/bin/env ruby

# calculate the price given a basket/list of books purchased
class BuyBooks
  PRICE_PER_BOOK = 8
  DISCOUNT_FOR_2_BOOKS = 0.95

  def initialize(book_list)
    @book_list = book_list
  end

  def run
    case uniq
    when 2
      @book_list.size * PRICE_PER_BOOK * DISCOUNT_FOR_2_BOOKS
    else
      @book_list.size * PRICE_PER_BOOK
    end
  end

  def uniq
    @book_list.uniq.size
  end
end

# when run from the commandline return the price given a basket/list of books
p BuyBooks.new(ARGV).run if $PROGRAM_NAME == __FILE__
