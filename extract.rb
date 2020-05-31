#!/usr/bin/env ruby

contents = ''

while line = STDIN.gets
  contents << line
end

EXCERPT_FORMAT = "------------------------------------------------\r\n%s\r\n"

def sanitize_non_ascii(string)
  encoding_options = {
    invalid: :replace,
    undef: :replace,
    replace: '_',
  }

  string.encode Encoding.find('ASCII'), encoding_options
end

matched_endpoints = []

sanitize_non_ascii(contents).gsub(/;/, "\n").scan(/(^.*?("|')(\/[\w\d\?\/&=\#\.\!:_-]*?)(\2).*$)/).map do |string|
  next if matched_endpoints.include?(string[2])

  matched_endpoints << string[2]

  puts string[2]

  puts format(EXCERPT_FORMAT, string[0]) if ARGV[0] == '--show-line'
end
