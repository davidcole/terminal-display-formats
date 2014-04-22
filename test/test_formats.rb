#!/usr/bin/env ruby -w

$:.unshift File.join( File.dirname( __FILE__ ), '..', 'lib' )

require 'test/unit'
require 'terminal-display-formats'

class TestFormats < Test::Unit::TestCase

  def setup
    @formats = {
      'bold'          => "\e[01m",
      'faint'         => "\e[02m",
      'italic'        => "\e[03m",
      'underline'     => "\e[04m",
      'blink'         => "\e[05m",
      'blink_fast'    => "\e[06m",
      'negative'      => "\e[07m",
      'conceal'       => "\e[08m",
      'strikethrough' => "\e[09m",
      'fraktur'       => "\e[20m",
      'frame'         => "\e[51m",
      'encircle'      => "\e[52m",
      'overline'      => "\e[53m"
    }
    @ending  = "\e[00m"
  end
  
  def test_formats
    @formats.each do |format, code|
      assert_equal( "#{ code }Testing #{ format } text.#{ @ending }", "Testing #{ format } text.".send( format ) )
    end
  end
end
