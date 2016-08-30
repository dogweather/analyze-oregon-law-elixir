import String

defmodule StringOps do

  def clean_up(title) do
    title
      |> fixWhitespace
      |> fixHyphenation
      |> splitIntoSentences
      |> List.first
  end

  def fixWhitespace(s),  do: replace(s, "\n", " ")

  def fixHyphenation(s), do: replace(s, "- ", "")

  def splitIntoSentences(a_string) do
    a_string
      |> split(". ")
      |> Enum.map(&ensure_ends_with_period/1)
  end

  def ensure_ends_with_period(sentence) do
    sentence <> if ends_with?(sentence, "."), do: "", else: "."
  end

end
