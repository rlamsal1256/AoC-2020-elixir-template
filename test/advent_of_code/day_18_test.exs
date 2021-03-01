defmodule AdventOfCode.Day18Test do
  use ExUnit.Case

  import AdventOfCode.Day18

  @tag :skip
  test "part1 * without parens" do
    input = ["1 + 2 * 3 + 4 * 5 + 6"]
    result = part1(input)

    assert result == 71
  end

  @tag :skip
  test "part1 - with parens" do
    input = ["1 + (2 * 3) + (4 * (5 + 6))"]
    result = part1(input)

    assert result == 51
  end

  @tag :skip
  test "part2 - without parens" do
    input = ["1 + 2 * 3 + 4 * 5 + 6"]
    result = part2(input)

    assert result == 231
  end

  @tag :skip
  test "part2 - with parens" do
    input = ["((2 + 4 * 9) * (6 + 9 * 8 + 6) + 6) + 2 + 4 * 2"]
    result = part2(input)

    assert result == 23340
  end
end
