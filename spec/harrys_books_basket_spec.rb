require './harrys_books_basket.rb'

RSpec.describe HarrysBooksBasket do
    context :cost do
        subject { HarrysBooksBasket.new(books).cost }

        describe '1 book' do
            let(:books) { [HarrysBooksBasket::BOOK_1] }

            it { is_expected.to eq 8 }
        end

        describe '2 different books' do
            let(:books) do
                [HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_2]
            end

            it { is_expected.to eq 15.2}
        end

        describe '3 different books' do
            let(:books) do
                [HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_2,
                HarrysBooksBasket::BOOK_3]
            end

            it { is_expected.to eq 21.6}
        end

        describe '4 different books' do
            let(:books) do
                [HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_2,
                HarrysBooksBasket::BOOK_3,
                HarrysBooksBasket::BOOK_4]
            end

            it { is_expected.to eq 25.6}
        end

        describe '5 different books' do
            let(:books) do
                [HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_2,
                HarrysBooksBasket::BOOK_3,
                HarrysBooksBasket::BOOK_4,
                HarrysBooksBasket::BOOK_5]
            end

            it { is_expected.to eq 30}
        end

        describe '4 books, 3 different, 1 similar' do
            let(:books) do
                [HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_2,
                HarrysBooksBasket::BOOK_3,
                HarrysBooksBasket::BOOK_3]
            end

            it { is_expected.to eq 29.6}
        end

        describe '10 books, 2 different, 8 similar' do
            let(:books) do
                [HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_1,
                HarrysBooksBasket::BOOK_2,
                HarrysBooksBasket::BOOK_2,
                HarrysBooksBasket::BOOK_2,
                HarrysBooksBasket::BOOK_2]
            end

            it { is_expected.to eq 79.2}
        end

    end
end