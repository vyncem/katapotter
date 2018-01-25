#!/usr/bin/env ruby

# calculate the price given a basket/list of books purchased
class BuyBooks
  PRICE_PER_BOOK = 8

  def initialize(book_list)
    @book_list = book_list
  end

  def run
    @book_list.size * PRICE_PER_BOOK
  end
end

# when run from the commandline return the price given a basket/list of books
p BuyBooks.new(ARGV).run if $PROGRAM_NAME == __FILE__
