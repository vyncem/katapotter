require './buy_books.rb'

RSpec.describe BuyBooks do
  subject { BuyBooks.new(book_list).run }
  describe 'One copy of any of the five books costs 8 EUR' do
    let(:book_list) { [1] }
    let(:expected_price) { book_price }

    it { is_expected.to eql 8 }
  end

  describe 'N copies of a of a book cost N*8 EUR' do
    let(:book_list) { [1, 1, 1, 1] }

    it { is_expected.to eql 32 }
  end

  describe 'you get a 5% discount on two different books' do
    let(:book_list) { [1, 2] }

    it { is_expected.to eql 15.2 }

    context 'when 2 are different and 1 is similar' do
      let(:book_list) { [1, 2, 1] }

      it { is_expected.to eql 23.2 }
    end
  end

  describe '#uniq' do
    context 'when list has 2 different books' do
      subject { BuyBooks.new(book_list).uniq }
      let(:book_list) { [1, 2, 2] }

      it { is_expected.to be 2 }
    end
  end
end
