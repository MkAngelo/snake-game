require "minitest/autorun"

class Calculator
    def sum(a, b)
        a + b
    end
    def substract(a, b)
        a - b
    end
end

class TestCalculator < Minitest::Test

    def setup
        @calc = Calculator.new
    end
    
    def test_sum_positivos
        result = @calc.sum(1,3)
        assert_equal result, 4
    end

    def test_sum_negativos
        result = @calc.sum(-1,-3)
        assert_equal result, -4
    end

    def test_sum_mixtos
        result = @calc.sum(-1,3)
        assert_equal result, 2
    end
end