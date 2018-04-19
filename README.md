[![Build Status](https://secure.travis-ci.org/rbrovko/babelish_rnc.png?branch=master)](http://travis-ci.org/rbrovko/babelish_rnc)
[![Code Climate](https://codeclimate.com/github/rbrovko/babelish_rnc.png)](https://codeclimate.com/github/rbrovko/babelish_rnc) 
[![Coverage Status](https://coveralls.io/repos/github/rbrovko/babelish_rnc/badge.svg?branch=master)](https://coveralls.io/github/rbrovko/babelish_rnc?branch=master)
[![Gem Version](https://badge.fury.io/rb/babelish_rnc.svg)](http://badge.fury.io/rb/babelish_rnc)

![Docker](http://dockeri.co/image/netbe/babelish)

**babelish_rnc : Chaotically confused, like Babel**

Originally created to deal with localizedStrings files (aka *CSV-to-iOS-Localizable.strings-converter*), this command tool now converts a csv file of translations into the below file formats and vice-versa:
* .strings (iOS)
* .xml (Android)
* .json
* .php

It can also fetch the csv file from GoogleDrive.

# Installation

`gem install babelish_rnc`

Requires Ruby 2.0.0 or above.

Or download [Latest Release](https://github.com/rbrovko/babelish_rnc/releases/latest).

Or via docker: `docker run rbrovko/babelish_rnc babelish_rnc help`

# Usage

```
› babelish_rnc help                                                                                                                                                          18:21:30
Commands:
  babelish_rnc android2csv     # Convert .xml files to CSV file
  babelish_rnc csv2android     # Convert CSV file to .xml
  babelish_rnc csv2json        # Convert CSV file to .json
  babelish_rnc csv2php         # Convert CSV file to .php
  babelish_rnc csv2strings     # Convert CSV file to .strings
  babelish_rnc csv_download    # Download Google Spreadsheet containing translations
  babelish_rnc help [COMMAND]  # Describe available commands or one specific command
  babelish_rnc init            # Create a configuration file from template
  babelish_rnc json2csv        # Convert .json files to CSV file
  babelish_rnc open FILE       # Open local csv file in default editor or Google Spreadsheet containing translations in default browser
  babelish_rnc php2csv         # Convert .php files to CSV file
  babelish_rnc strings2csv     # Convert .strings files to CSV file
  babelish_rnc version         # Display current version

Options:
      [--verbose], [--no-verbose]
  -c, [--config=CONFIG]            # Read configuration from given file
                                   # Default: .babelish
```

You can use a **configuration file** to hold all your commandline arguments into a file.
Place a `.babelish` file (YAML) in your repo where you will run the command. In case you need to reset the Google Drive token you have to delete the .babelish.token file.
See [.babelish.sample](.babelish.sample) file in the doc folder. as the possible values.

*For previous CSV-to-iOS-Localizable.strings-converter, rename your `.csvconverter` into `.babelish`.*

**Note for docker:** In order to export the output of a conversion, you will need to pipe the result out of the container. An example would be
```
› docker run rbrovko/babelish_rnc babelish_rnc csv2json >> some_file.json
```

**For more details, check the documentation:**
https://github.com/rbrovko/babelish_rnc/wiki/How-to-Use


## Development

Run `bundle install` to install all the dependencies. Tests are done with `Test::Unit` so run `rake test` to run all the test suite.

# Todo & Known issues

See GitHub issues
