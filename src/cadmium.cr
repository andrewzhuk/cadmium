require "./cadmium/*"
require "./cadmium/core_ext/**"

# Cadmium is a Natrual Language Processing (NLP) library for Crystal. It includes several
# modules and classes for processing sentences and splitting them into digestable pieces.
module Cadmium

  # # TODO: Figure out a way to get something like this working
  # def self.tokenizer(kind : Symbol, *args, **kwargs)
  #   case kind
  #   when :aggressive
  #     Tokenizer::AggressiveTokenizer.new(*args, **kwargs)
  #   when :case
  #     Tokenizer::CaseTokenizer.new(*args, **kwargs)
  #   when :sentence
  #     Tokenizer::SentenceTokenizer.new(*args, **kwargs)
  #   when :treebank, :treebank_word
  #     Tokenizer::TreebankWordTokenizer.new(*args, **kwargs)
  #   else
  #     raise "Invalid tokenizer specified."
  #   end
  # end

  def self.levenshtein_distance(s1 : String, s2 : String)
    Distance.levenshtein(s1, s2)
  end

  def self.jaro_winkler_distance(s1 : String, s2 : String)
    Distance.jaro_winkler(s1, s2)
  end

end
