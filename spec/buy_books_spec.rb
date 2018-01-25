require './buy_books.rb'

RSpec.describe BuyBooks do
  subject { BuyBooks.new(book_list).run }

  describe 'One copy of any of the five books costs 8 EUR' do
    let(:book_list) { [1] }
    let(:expected_price) { 8 }

    it { is_expected.to eql expected_price }
  end
end
