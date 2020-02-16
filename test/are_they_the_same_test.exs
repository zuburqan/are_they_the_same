defmodule AreTheyTheSameTest do
  use ExUnit.Case

  test "returns true for 'same' arrays" do
    a = [121, 144, 19, 161, 19, 144, 19, 11]
    b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

    assert AreTheyTheSame.comp(a, b) == true
  end

  test "returns false for 'different' arrays" do
    a = [121, 144, 19, 161, 19, 144, 19, 11]
    b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]

    assert AreTheyTheSame.comp(a, b) == false
  end

  test "handles negative numbers and zero" do
    a = [-2, 5, 10, 0]
    b = [4, 100, 25, 0]

    assert AreTheyTheSame.comp(a, b) == true
  end

  test "returns true for both empty lists" do
    assert AreTheyTheSame.comp([], []) == true
  end

  test "returns false if one empty list" do
    assert AreTheyTheSame.comp([1], []) == false
    assert AreTheyTheSame.comp([], [1]) == false
  end

  test "returns false if any list is nil" do
    assert AreTheyTheSame.comp(nil, [1]) == false
    assert AreTheyTheSame.comp([1], nil) == false
  end
end
