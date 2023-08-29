defmodule BMI.Classifier do
  def classify(weight, height) do
    case BMI.Calculator.calculate(weight, height) do
      {:ok, bmi} ->
        classification =
          cond do
            bmi < 16 -> :malnurished
            16 <= bmi and bmi < 18.5 -> :underweight
            18.5 <= bmi and bmi < 25 -> :normal
            25 <= bmi and bmi < 30 -> :overweight
            30 <= bmi -> :obese
          end

        {:ok, classification, bmi}

      {:error, reason} ->
        {:error, reason}
    end
  end
end
