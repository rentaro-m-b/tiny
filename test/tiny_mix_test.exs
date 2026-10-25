defmodule TinyTest do
  use ExUnit.Case
  doctest Tiny

  test "greets the world" do
    assert Tiny.hello() == :world
  end
end
