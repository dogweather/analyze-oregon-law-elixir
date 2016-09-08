import String

defmodule StringOps do

  @spec clean_up(String.t) :: String.t
  def clean_up(title) do
    title
      |> fixWhitespace
      |> fixHyphenation
      |> splitIntoSentences
      |> List.first
  end

  @spec fixWhitespace(String.t) :: String.t
  def fixWhitespace(s),  do: replace(s, "\n", " ")

  @spec fixHyphenation(String.t) :: String.t
  def fixHyphenation(s), do: replace(s, "- ", "")

  @spec splitIntoSentences(String.t) :: [String.t]
  def splitIntoSentences(a_string) do
    a_string
      |> split(". ")
      |> Enum.map(&ensure_ends_with_period/1)
  end

  @spec ensure_ends_with_period(String.t) :: String.t
  def ensure_ends_with_period(sentence) do
    sentence <> if ends_with?(sentence, "."), do: "", else: "."
  end

end
