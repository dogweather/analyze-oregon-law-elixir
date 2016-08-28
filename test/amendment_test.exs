import Amendment

defmodule AmendmentTest do
  use ExUnit.Case

  test "summary? is true for a valid summary" do
    summary_hb_4047 = "Relating to speed limits on highways that traverse state lines; creating new provisions; amending ORS 811.111; and declaring an emergency."
    assert summary?(summary_hb_4047)
  end
end
