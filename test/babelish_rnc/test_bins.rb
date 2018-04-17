require 'test_helper'
class TestBins < Test::Unit::TestCase

  def test_csv2strings_with_google_doc
    omit if ENV['TRAVIS']
    assert_nothing_raised do
      system("./bin/babelish_rnc csv2strings --fetch --filename my_strings --langs English:en")
    end
    assert_equal 0, $?.exitstatus
  end

  def test_csv2strings_with_google_doc_missing_langs
    omit if ENV['TRAVIS']
    assert_nothing_raised do
      system("./bin/babelish_rnc csv2strings --fetch --filename my_strings")
    end
    assert_equal 1, $?.exitstatus
  end

  def test_csv2strings_with_config_file
    system("cp .babelish.sample .babelish")

    assert_nothing_raised NameError do
      system("./bin/babelish_rnc csv2strings")
    end
    assert_equal 0, $?.exitstatus
  end

  def teardown
    system("rm -f .babelish")
  end
end
