require './buy_books.rb'

RSpec.describe BuyBooks do
  subject { BuyBooks.new(book_list).run }
  let(:book_price) { 8 }

  describe 'One copy of any of the five books costs 8 EUR' do
    let(:book_list) { [1] }
    let(:expected_price) { book_price }

    it { is_expected.to eql expected_price }
  end

  describe 'N copies of a of a book cost N*8 EUR' do
    let(:book_list) { [1, 1, 1, 1] }
    let(:expected_price) { book_list.size * book_price }

    it { is_expected.to eql expected_price }
  end
end
