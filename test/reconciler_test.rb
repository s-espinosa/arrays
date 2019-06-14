require 'minitest/autorun'
require 'minitest/pride'
require './lib/reconciler'
require 'pry'

class ReconcilerTest < Minitest::Test
  def setup
    @r = Reconciler.new
  end

  def test_it_exists
    assert_instance_of Reconciler, @r
  end

  def test_it_can_reconcile_two_arrays
    a1 = [5, 3, 4]
    a2 = [4, 3, 6, 10]

    expected = <<-OUTPUT
Numbers in array 1 that aren't in array 2:
5

Numbers in array 2 that aren't in array 1:
6 10
OUTPUT
    actual = @r.reconcile_helper(a1, a2)

    assert_equal expected, actual
  end
end
