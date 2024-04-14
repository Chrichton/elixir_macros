# {:+, [context: Elixir, imports: [{1, Kernel}, {2, Kernel}]], [5, 2]}
defmodule Math do
  defmacro say({:+, _, [lhs, rhs]}) do
    quote do
      lhs = unquote(lhs)
      rhs = unquote(rhs)
      result = lhs + rhs
      IO.puts("#{lhs} plus #{rhs} is #{result}")
      result
    end
  end

  defmacro say({:*, _, [lhs, rhs]}) do
    quote do
      lhs = unquote(lhs)
      rhs = unquote(rhs)
      result = lhs * rhs
      IO.puts("#{lhs} times #{rhs} is #{result}")
      result
    end
  end
end
