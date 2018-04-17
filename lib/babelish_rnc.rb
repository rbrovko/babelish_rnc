require 'csv'

# Fixes UTF8 issues
# see http://stackoverflow.com/questions/4583924/string-force-encoding-in-ruby-1-8-7-or-rails-2-x
class String
  def to_utf8
    force_encoding("UTF-8")
  end
end

# From CSV
require "babelish_rnc/csv2base"
require "babelish_rnc/csv2strings"
require "babelish_rnc/csv2android"
require "babelish_rnc/csv2php"
require "babelish_rnc/csv2json"

# To CSV
require "babelish_rnc/base2csv"
require "babelish_rnc/strings2csv"
require "babelish_rnc/android2csv"
require "babelish_rnc/php2csv"
require "babelish_rnc/json2csv"

# General
require "babelish_rnc/language"
require "babelish_rnc/google_doc"

# iOS specific
require "babelish_rnc/xcode_macros"

