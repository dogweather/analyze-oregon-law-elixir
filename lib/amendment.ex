defmodule Bill do
  defstruct bill_type: nil, bill_number: nil

  # Create a %Bill from a string in short form, e.g. "HB 1234".
  @spec from_citation(String.t) :: %Bill{ bill_type: String.t, bill_number: integer }
  def   from_citation(citation) do
    [chamber, number] = String.split citation
    %Bill{ bill_type: chamber, bill_number: String.to_integer(number) }
  end
end

defmodule Amendment do
  @spec summary?(String.t) :: boolean
  def   summary?(sentence), do: String.starts_with?(sentence, "Relating to")
end
