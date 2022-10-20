# frozen_string_literal: true

require_relative "gabyse_palindrome_detector/version"

# Module to modularize the palindrome detector
module GabysePalindromeDetector
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  def processed_content
    to_s.scan(/[\w\d]+/).join.downcase
  end
end

# Adding palindrome method to the String class
class String
  include GabysePalindromeDetector
end

# Adding palindrome method to the Integer class
class Integer
  include GabysePalindromeDetector
end
