defmodule SyntaxExampleSpec do
  use ESpec
  it do: expect true |> to(be_true())
  it do: (1..3) |> should(have 2)
end
