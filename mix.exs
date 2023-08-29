defmodule BMI.MixProject do
  use Mix.Project

  def project do
    [
      app: :bmi,
      version: "0.1.0",
      escript: [main_module: BMI.CLI, name: :bmi_cli]
    ]
  end
end
