# ANSEL

[![Version](http://img.shields.io/gem/v/ansel.svg?style=flat)](https://rubygems.org/gems/ansel)
[![Build Status](http://img.shields.io/travis/infused/ansel/master.svg?style=flat)](http://travis-ci.org/infused/ansel)
[![Code Quality](http://img.shields.io/codeclimate/github/infused/ansel.svg?style=flat)](https://codeclimate.com/github/infused/ansel)

ANSEL provides character set conversion from ANSEL to UTF-8

Copyright (c) 2006-2015 Keith Morrison <mailto:keithm@infused.org>, <http://www.infused.org>

- Project page: <http://github.com/infused/ansel>
- API Documentation: <http://rubydoc.info/github/infused/ansel/frames>
- Report bugs: <http://github.com/infused/ansel/issues>
- Questions? Email [keithm@infused.org](mailto:keithm@infused.org?subject=ANSE)
  with ANSEL in the subject line

## Compatibility

ANSEL is compatible with Ruby 1.9.2 and up

If you need ANSEL convesion in Ruby 1.8.7 or below, see my [ansel_iconv](http://github.com/infused/ansel_iconv) project.

## Installation

    gem install ansel

## Basic Usage

Conversion from ANSEL to UTF-8 is fully supported.

    require 'ansel'

    converter = ANSEL::Converter.new
    converter.convert("\xB9\x004.59") # => "£4.59"


## About the ANSEL character set

[ANSI/NISO
Z39.47](http://www.niso.org/kst/reports/standards?step=2&gid%3Austring%3Aiso-8859-1=&project_key%3Austring%3Aiso-8859-1=0b5d2bd7b690b60fcc75cde9256ed9f9e526e531),
also known as ANSEL, is a character set encoding used primarily for
bibliographic and genealogical data. It is one of the official character
encodings supported by the [Gedcom
5.5](http://homepages.rootsweb.ancestry.com/~pmcbride/gedcom/55gctoc.htm)
standard.

## LICENSE:

Copyright (c) 2006-2015 Keith Morrison <keithm@infused.org>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
