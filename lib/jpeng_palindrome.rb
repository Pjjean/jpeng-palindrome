# frozen_string_literal: true

require_relative "jpeng_palindrome/version"

module JpengPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end
    #Returns only letters for a string with punctuation ie, "Madam, I'm Adam" => "MadamImAdam"

  def letters
    self.split("").select{|letter| letter.match(/[a-zA-Z]/)}.join
    #self.scan(/[a-zA-Z]/).join
  end

  private
    # Returns content for palindrome testing.
    def processed_content
      self.to_s.letters.downcase
    end
end

class String
  include JpengPalindrome
end

class Integer
  include JpengPalindrome
end
