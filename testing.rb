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
end


describe TicTacToe do


    it "has a hash for a score-keeper" do

    end

    it "has nine cells in the score-keeper" do

    end

    it "can only keep 'X' or 'O' in the score-keeper" do

    end

end