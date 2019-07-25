# Tutorial from: https://www.rubyguides.com/2018/07/rspec-tutorial/


require 'rspec/autorun'

class Factorial
    def factorial_of(n)
        (1..n).inject(:*)
    end
end

describe Factorial do
    # # let! vs. let => bang ensures that object is created BEFORE any tests run
    # let!(:calculator) { Factorial.new }


    it "finds the factorial of 5" do
        expect(subject.factorial_of(5)).to eq(120)
    end
end




class TicTacToe
    attr_accessor :score

    def initialize
        @score = {
            1 => " ",
            2 => " ",
            3 => " ",
            4 => " ",
            5 => " ",
            6 => " ",
            7 => " ",
            8 => " ",
            9 => " "
        }
    end

end


describe TicTacToe do
    # let!(:game) { TicTacToe.new }


    it "has a hash for a score-keeper" do
        expect(subject.score).to be_a_kind_of(Hash)
    end

    it "has nine cells in the score-keeper" do
        expect(subject.score.keys.count).to eq(9)
    end

    it "can only keep 'X', 'O', or a blank space in the score-keeper" do
        expect(subject.score.values).to include(/[XO ]/)
    end

end