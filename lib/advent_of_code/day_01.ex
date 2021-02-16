defmodule AdventOfCode.Day01 do
  def part1(args) do
    args
    |> Enum.filter(&find_matching_entry(args, &1))
    |> Enum.reduce(fn x, acc -> x * acc end)
  end

  def find_matching_entry(args, entry) do
    Enum.find(args, fn matching_entry ->
      2020 - matching_entry == entry
    end)
  end

  def part2(args) do
    args
    |> Enum.filter(&find_second_matching_entry(args, &1))
    |> Enum.reduce(fn x, acc -> x * acc end)
  end

  def find_second_matching_entry(args, first_entry) do
    args
    |> Enum.find(&find_matching_entry(args, &1 + first_entry))
  end
end
