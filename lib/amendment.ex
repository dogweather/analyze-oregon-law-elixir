defmodule Amendment do
  def summary?(sentence), do: String.starts_with?(sentence, "Relating to")
end
