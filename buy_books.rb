#!/usr/bin/env ruby

class BuyBooks
end

# when run from the commandline return the price given a basket/list of books
p BuyBooks.new(ARGV).run if $PROGRAM_NAME == __FILE__
