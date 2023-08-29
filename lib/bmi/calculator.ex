defmodule BMI.Calculator do
  def calculate(weight, height)
      when is_number(weight) and is_number(height) do
    bmi =
      (weight / Float.pow(height / 1.0, 2))
      |> Float.round(2)

    {:ok, bmi}
  end

  def calculate(_weight, _height), do: {:error, "Arguments are not numbers!"}
end
