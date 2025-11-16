require './basket.rb'
require './book.rb'

RSpec.describe Basket do
    
    subject(:basket) { Basket.new(books) }

    let(:philosphers_stone) { Book.new("Philosopher's Stone") }
    let(:chamber_of_secrets) { Book.new('Chamber of Secrets') }
    let(:prisoner_of_azkaban) { Book.new('Prisoner of Azkabanrerdeededrd') }

    describe '#price' do
        context "when copies == 1" do
            let(:books)  { philosphers_stone }

            it "gives no discount" do
                expect(basket.price).to eq 8
            end
        end

        context "when copies == 2" do
            context "with same title" do
                let(:books)  { [philosphers_stone, philosphers_stone] }

                it "gives a 5% discount" do
                    expect(basket.price).to eq 15.2
                end
            end

            context "with different titles" do
                let(:books)  { [philosphers_stone, prisoner_of_azkaban] }

                it "gives no discount" do
                    expect(basket.price).to eq 16
                end
            end
        end

        context "when copies == 3" do
            context "with same title" do
                let(:books)  { [chamber_of_secrets, chamber_of_secrets, chamber_of_secrets] }

                it "gives a 10% discount" do
                    expect(basket.price).to eq 21.6
                end
            end

            context "with different titles" do
                let(:books)  { [philosphers_stone, philosphers_stone, prisoner_of_azkaban] }

                it "gives no discount" do
                    expect(basket.price).to eq 23.2
                end
            end
        end

        context "when copies == 4" do
            context "with same title" do
                let(:books)  { [prisoner_of_azkaban, prisoner_of_azkaban, prisoner_of_azkaban, prisoner_of_azkaban] }

                it "gives a 20% discount" do
                    expect(basket.price).to eq 25.6
                end
            end

            context "with different titles" do
                let(:books)  { [philosphers_stone, philosphers_stone, philosphers_stone, prisoner_of_azkaban] }

                it "gives no discount" do
                    expect(basket.price).to eq 29.6
                end
            end
        end

        context "when copies == 5" do
            context "with same title" do
                let(:books)  { [philosphers_stone, philosphers_stone, philosphers_stone, philosphers_stone, philosphers_stone] }

                it "gives a 25% discount" do
                    expect(basket.price).to eq 30
                end
            end

            context "with different titles" do
                let(:books)  { [philosphers_stone, philosphers_stone, philosphers_stone, prisoner_of_azkaban, prisoner_of_azkaban] }

                it "gives no discount" do
                    expect(basket.price).to eq 36.8
                end
            end
        end
    end
end