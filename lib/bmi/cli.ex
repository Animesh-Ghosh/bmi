defmodule BMI.CLI do
  def main(args) do
    {parsed, _args, _invalid} =
      OptionParser.parse(args, strict: [weight: :integer, height: :float])

    BMI.classify(parsed[:weight], parsed[:height])
  end
end
