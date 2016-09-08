defmodule Bill do
  defstruct bill_type: nil, bill_number: nil
end

defmodule Amendment do
  def summary?(sentence), do: String.starts_with?(sentence, "Relating to")

  # Create a %Bill from a string in short form, e.g. "HB 1234".
  def make_bill(citation) when is_bitstring(citation) do
    [chamber, number] = String.split citation
    %Bill{ bill_type: chamber, bill_number: String.to_integer(number) }
  end
end
