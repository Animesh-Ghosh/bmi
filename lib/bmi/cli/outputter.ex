defmodule BMI.CLI.Outputter do
  def output({:ok, classification, bmi}) do
    IO.puts("""
    BMI: #{bmi}
    Category: #{classification}
    """)
  end

  def output({:error, reason}), do: IO.puts(reason)

  def help_text() do
    IO.puts("""
    bmi_cli [options]

    -h, --help show this help message and exit
    --weight   weight in Kilograms
    --height   height in Metres
    """)
  end
end
