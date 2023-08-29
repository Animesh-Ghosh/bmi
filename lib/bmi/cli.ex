defmodule BMI.CLI do
  def main(args) do
    {parsed, _args, _invalid} =
      OptionParser.parse(args, strict: [weight: :float, height: :float, help: :boolean])

    if parsed[:help] || Enum.empty?(parsed) do
      BMI.CLI.Outputter.help_text()
    else
      BMI.Classifier.classify(parsed[:weight], parsed[:height])
      |> BMI.CLI.Outputter.output()
    end
  end
end
