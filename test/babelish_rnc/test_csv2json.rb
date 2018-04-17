require 'test_helper'
class TestCSV2JSON < Test::Unit::TestCase

  def test_converting_csv_to_dotstrings
    csv_file = "test/data/test_data.csv"
    converter = BabelishRnc::CSV2JSON.new(csv_file, 'English' => "en")
    converter.convert
    assert File.exist?("en.json"), "the ouptut file does not exist"

    # clean up
    system("rm -rf en.json")
  end

  def test_converting_csv_to_dotstrings_one_output_option
    csv_file = "test/data/test_data.csv"
    single_file = 'myfile.js'
    converter = BabelishRnc::CSV2JSON.new(csv_file,
    {'English' => "en"},
    :output_basename => 'myfile',
    :ignore_lang_path => true)
    converter.convert
    assert File.exist?(single_file), "the ouptut file does not exist"

    # clean up
    system("rm -rf ./" + single_file)
  end
end
