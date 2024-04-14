defmodule ElixirMacrosTest do
  use ExUnit.Case

  require Math
  require ContolFlow

  import ExUnit.CaptureIO

  test "Math.say" do
    assert Math.say(3 + 7) == 10
    assert capture_io(fn -> Math.say(3 + 7) end) == "3 plus 7 is 10\n"
  end

  test "unless" do
    assert unless false, do: true
  end
end
