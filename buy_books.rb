#!/usr/bin/env ruby

# calculate the price given a basket/list of books purchased
class BuyBooks
  PRICE_PER_BOOK = 8
  DISCOUNT = {
    '2' => 0.95,
    '3' => 0.9
  }.freeze

  def initialize(book_list)
    @book_list = book_list
  end

  def run
    if uniq == 1
      @book_list.size * PRICE_PER_BOOK
    else
      discount_price
    end
  end

  def uniq
    @book_list.uniq.size
  end

  private

  def basic_price
    (@book_list.size - uniq) * PRICE_PER_BOOK
  end

  def discount_price
    (uniq * PRICE_PER_BOOK * DISCOUNT[uniq.to_s]) + basic_price
  end
end

# when run from the commandline return the price given a basket/list of books
p BuyBooks.new(ARGV).run if $PROGRAM_NAME == __FILE__
