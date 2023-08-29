# # some cleanup required
# defmodule BMIprocessor do
#   def process() do
#     calculate(weight, height)
#     |> classify
#     |> print
#   end

#   def classify(weight, height)
#       when (is_integer(weight) or is_float(weight)) and (is_integer(height) or is_float(height)) do

#   end

#   def print(bmi) do
#     with {:ok, classify_v} = csome_fn(p1, p2) do
#     case classify do
#       :underweight -> IO.puts("BMI: #{bmi} Category: Underweight")
#       :normal -> IO.puts("BMI: #{bmi} Category: Normal")
#       :overweight -> IO.puts("BMI: #{bmi} Category: Overweight")
#       :"💀" -> IO.puts("Please go see a Doctor ASAP 💀")
#     end

#     IO.puts "msg: #{msg}"
#   end
# else {:error, reason} -> IO.puts "reason"
# end

#   def classify() do
#     # raise ArgumentError, "Got weight #{inspect w} and height as #{inspect h}"
#     {:error, }
#   end

#   # with classify = csome_fn(p1, p2)
# {:ok, :underweigh}
#   defp _classify(bmi) when bmi < 16, do: :"💀"
#   defp _classify(bmi) when 16 <= bmi and bmi < 18.5, do: :underweight
#   defp _classify(bmi) when 18.5 <= bmi and bmi < 25, do: :normal
#   defp _classify(bmi) when 25 <= bmi and bmi < 30, do: :overweight
#   defp _classify(bmi) when 30 <= bmi, do: :"💀"

#   defp _calculate(weight, height) when is_integer(height), do: weight / Integer.pow(height, 2)
#   defp _calculate(weight, height) when is_float(height), do: weight / Float.pow(height, 2)
# end
defmodule BMI do
end
