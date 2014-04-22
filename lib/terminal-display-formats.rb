$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module TerminalDispayFormats
  VERSION = '0.0.1'

  formats = {
    'bold'          => "\033[01m",
    'faint'         => "\033[02m",
    'italic'        => "\033[03m",
    'underline'     => "\033[04m",
    'blink'         => "\033[05m",
    'blink_fast'    => "\033[06m",
    'negative'      => "\033[07m",
    'conceal'       => "\033[08m",
    'strikethrough' => "\033[09m",
    'fraktur'       => "\033[20m",
    'frame'         => "\033[51m",
    'encircle'      => "\033[52m",
    'overline'      => "\033[53m"
  }
  ending  = "\033[00m"

  formats.keys.each do | format |
    format_block = lambda {
      formats[ format ] + self + ending
    }
    String.send( :define_method, format.to_sym, format_block )
  end

end
