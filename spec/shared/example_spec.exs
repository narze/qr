defmodule ExampleSharedSpec do
  use ESpec, shared: true

  # This shared spec will always be included!
  it do: expect(1+2).to eq 3
end
