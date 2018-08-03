# encoding: ascii-8bit

module ANSEL
  class Converter
    include ANSEL::CharacterMap

    def initialize(to_charset = 'UTF-8')
      @to_charset = to_charset
      @encoding_converter = Encoding::Converter.new('UTF-16BE', 'UTF-8')
    end

    def utf16_to_utf8(string)
      @encoding_converter.convert(string)
    end

    def convert(string)
      output = ''
      scanner = StringScanner.new(string)
      until scanner.eos?
        byte = scanner.get_byte
        char = byte.unpack('C')[0]
        char_hex = char.to_s(16).upcase

        case char
        when 0x00..0x7F
          output << byte
        when 0x88..0xC8
          output << utf16_to_utf8(ANSI_TO_UTF16_MAP[char_hex] || ANSI_TO_UTF16_MAP['ERR'])
          scanner.get_byte # ignore the next byte
        when 0xE0..0xFB
          [2, 1, 0].each do |n| # try 3 bytes, then 2 bytes, then 1 byte
            bytes = [char_hex]
            scanner.peek(n).each_byte { |b| bytes << b.to_s(16).upcase }
            hex_key = bytes.join('+')
            next unless ANSI_TO_UTF16_MAP.key?(hex_key)
            output << utf16_to_utf8(ANSI_TO_UTF16_MAP[hex_key])
            n.times { scanner.get_byte }
            break
          end
        else
          output << utf16_to_utf8(ANSI_TO_UTF16_MAP['ERR'])
          scanner.get_byte if scanner.get_byte.unpack('C')[0] >= 0xE0 # ignore the next byte
        end
      end

      output
    end
  end
end
