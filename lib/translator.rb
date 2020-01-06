require 'pry'
require 'yaml'
# require modules here

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  e_hash = {:get_info=>{}, :g_emo=>{}}
  emoticons.each do |tra, jap|
    e_hash[:g_emo][jap.first] = jap.last 
    e_hash[:get_info][jap.last]
  end
end

def get_japanese_emoticon
  # code goes here
  
end

def get_english_meaning
  # code goes here
end