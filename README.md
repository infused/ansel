# ANSEL

[![Version](http://img.shields.io/gem/v/ansel.svg?style=flat)](https://rubygems.org/gems/ansel)
[![Build Status](http://img.shields.io/travis/infused/ansel/master.svg?style=flat)](http://travis-ci.org/infused/ansel)

ANSEL provides character set conversion from ANSEL to UTF-8

Copyright (c) 2006-2018 Keith Morrison <mailto:keithm@infused.org>, <http://www.infused.org>

- Project page: <http://github.com/infused/ansel>
- API Documentation: <http://rubydoc.info/github/infused/ansel/>
- Report bugs: <http://github.com/infused/ansel/issues>
- Questions? Email [keithm@infused.org](mailto:keithm@infused.org?subject=ANSEL)
  with ANSEL in the subject line

## Compatibility

ANSEL is [tested](https://travis-ci.org/infused/ansel) to be compatible with the following Rubies:

* 1.9.2, 1.9.3
* 2.0.x
* 2.1.x
* 2.2.x
* 2.3.x
* 2.4.x
* 2.5.x
* jruby 1.7+

If you need ANSEL convesion in Ruby 1.8, see my [ansel_iconv](http://github.com/infused/ansel_iconv) project.

## Installation

    gem install ansel

## Basic Usage

Conversion from ANSEL to UTF-8 is fully supported.

    require 'ansel'

    converter = ANSEL::Converter.new
    converter.convert("\xB9\x004.59") # => "£4.59"


## About the ANSEL character set

[ANSI/NISO
Z39.47](https://groups.niso.org/apps/group_public/document.php?document_id=6450),
also known as ANSEL, is a character set encoding used primarily for
bibliographic and genealogical data. It is used in library systems worldwide and is one of the official character
encodings supported by the [Gedcom
5.5](http://homepages.rootsweb.ancestry.com/~pmcbride/gedcom/55gctoc.htm)
standard.

## LICENSE:

Copyright (c) 2006-2018 Keith Morrison <keithm@infused.org>

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
