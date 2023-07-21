# $ iex
# iex> c "bmi.ex"
# iex> import BMI
# iex> classify(weight, height)
defmodule BMI do
  def classify(weight, height) do
    bmi = _calculate(weight, height)

    case _classify(bmi) do
      :underweight -> IO.puts("BMI: #{bmi} Category: Underweight")
      :normal -> IO.puts("BMI: #{bmi} Category: Normal")
      :overweight -> IO.puts("BMI: #{bmi} Category: Overweight")
      :"💀" -> IO.puts("Please go see a Doctor ASAP 💀")
    end
  end

  defp _classify(bmi) when bmi < 16, do: :"💀"
  defp _classify(bmi) when 16 <= bmi and bmi < 18.5, do: :underweight
  defp _classify(bmi) when 18.5 <= bmi and bmi < 25, do: :normal
  defp _classify(bmi) when 25 <= bmi and bmi < 30, do: :overweight
  defp _classify(bmi) when 30 <= bmi, do: :"💀"

  defp _calculate(weight, height) when is_integer(height), do: weight / Integer.pow(height, 2)
  defp _calculate(weight, height) when is_float(height), do: weight / Float.pow(height, 2)
end
