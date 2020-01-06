require 'pry'
require 'yaml'
# require modules here

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  e_hash = {:get_meaning=>{}, :get_emoticon=>{}}
  emoticons.each do |tra, jap|
    e_hash[:get_emoticon][jap.first] = jap.last 
    e_hash[:get_meaning][jap.last] = tra
  end
  return e_hash
end

def get_japanese_emoticon(path, emoticons)
  # code goes here
  e_hash = load_library(path)
  tra = e_hash[:get_emoticon][emoticons]
  if tra == nil 
    tra = "Sorry, that emoticon was not found"
  end
  return tra
end

def get_english_meaning(path, emoticon)
  # code goes here
  e_hash = load_library(path)
  e_me = e_hash[:get_meaning][emoticon]
  if e_me == nil 
    e_me = "Sorry, that emoticon was not found"
  end
  return e_me
end