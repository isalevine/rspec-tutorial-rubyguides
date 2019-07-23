# Tutorial from: https://www.rubyguides.com/2018/07/rspec-tutorial/


require 'rspec/autorun'

class Factorial
    def factorial_of(n)
        (1..n).inject(:*)
    end
end

describe Factorial do
    it "finds the factorial of 5" do
        calculator = Factorial.new

        expect(calculator.factorial_of(5)).to eq(120)
    end
end