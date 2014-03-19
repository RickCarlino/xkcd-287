require 'simplecov'
require 'pry'
#Ignore anything with the word 'spec' in it. No need to test your tests.
SimpleCov.start{ add_filter '/spec/' }
