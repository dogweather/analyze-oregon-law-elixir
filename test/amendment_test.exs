import Amendment
import Bill

defmodule AmendmentTest do
  use ExUnit.Case

  test "summary? is true for a valid summary" do
    summary_hb_4047 = "Relating to speed limits on highways that traverse state lines; creating new provisions; amending ORS 811.111; and declaring an emergency."
    assert summary?(summary_hb_4047)
  end

  test "from_citation can parse a typical house bill" do
    bill = from_citation("HB 4047")
    assert %Bill{ bill_type: "HB", bill_number: 4047 } = bill
  end

  test "from_citation can parse a typical senate bill" do
    bill = from_citation("SB 1532")
    assert %Bill{ bill_type: "SB", bill_number: 1532 } = bill
  end
end
