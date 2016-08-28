import StringOps

defmodule StringOpsTest do
  use ExUnit.Case
  doctest ElixirAnalyze

  test "fixHyphenation rejoins a word" do
    assert fixHyphenation("auto- mobile") == "automobile"
  end

  test "fixWhitespace changes a newline to a space" do
    assert fixWhitespace("and\nthe story") == "and the story"
  end

  test "clean_up handles extra text" do
    input = "Relating to the state transient lodging tax; creating\nnew provisions; amending ORS 284.131 and\n320.305; prescribing an effective date; and pro-\nviding for revenue raising that requires approval\nby a three-fifths majority.\nWhereas Enrolled House Bill 2267 (chapter 818,"
    assert clean_up(input) == "Relating to the state transient lodging tax; creating new provisions; amending ORS 284.131 and 320.305; prescribing an effective date; and providing for revenue raising that requires approval by a three-fifths majority."
  end

end
