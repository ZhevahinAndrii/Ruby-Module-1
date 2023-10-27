require 'minitest/autorun'

require_relative 'task1.rb'

class TestGetResults < Minitest::Test
    def test_get_results_with_all_1
        a=1
        b=1
        c=1
        x_start = 0
        x_end = 10
        dx=1
        assert_equal [1,1,4,9,16,25,36,49,64,81,100], get_results(a,b,c,x_start,x_end,dx)
    end

    def test_get_results_with_a_b_equal_0_c_equal_1
        a=0
        b=0
        c=1
        x_start = 10
        x_end = 20
        dx=1
        assert_equal [100.0,121.0,144.0,169.0,196.0,225.0,256.0,289.0,324.0,361.0,400.0],get_results(a,b,c,x_start,x_end,dx)
    end
    
    def test_with_all_10
        a=10
        b=10
        c=10
        x_start = 0
        x_end = 1
        dx=0.1
        assert_equal [1,1,1,1,2,3,4,5,7,9,10],get_results(a,b,c,x_start,x_end,dx)
    end

    def test_with_all_different
        a=1
        b=2
        c=3
        x_start = 1
        x_end = 21
        dx=2
        assert_equal [0.0, 1.0, 2.0, 5.0, 9.0, 13.0, 18.0, 25.0, 32.0, 40.0, 49.0],get_results(a,b,c,x_start,x_end,dx)
    end
end