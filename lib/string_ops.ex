defmodule StringOps do

  def clean_up(title) when is_bitstring(title) do
    title
      |> fixWhitespace
      |> fixHyphenation
      |> splitIntoSentences
      |> List.first
  end


  def fixWhitespace(s),  do: String.replace(s, "\n", " ")


  def fixHyphenation(s), do: String.replace(s, "- ", "")


  def splitIntoSentences(a_string) do
    a_string
      |> String.split(". ")
      |> Enum.map(&ensure_ends_with_period/1)
  end


  def ensure_ends_with_period(s) when is_bitstring(s) do
    if String.ends_with?(s, ".") do
      s
    else
      s <> "."
    end
  end

end
