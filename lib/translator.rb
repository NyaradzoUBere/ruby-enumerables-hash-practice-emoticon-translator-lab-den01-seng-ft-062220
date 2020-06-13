# require modules here
require "pry"
require "yaml"


def load_library(emoticon_file)

library = YAML.load_file(emoticon_file)

  new_library = {}

  library.each do |key, value|
      new_library[key] = {}
      new_library[key][:english] = value.first
      new_library[key][:japanese] = value.last
  end
  new_library
end

def get_japanese_emoticon(emoticon_file, emoticon)

library = YAML.load_file(emoticon_file)
emo = load_library(emoticon_file)

  emo.each do |meaning, value|
    if value[:english] == emoticon
     return value[:japanese]
  end
  end 
   "Sorry, that emoticon was not found"
end

def get_english_meaning(emoticon_file, emoticon)
  
  library = YAML.load_file(emoticon_file)
  emo = load_library(emoticon_file)

  emo.each do |meaning, value|
    if value[:japanese] == emoticon
     return meaning
  end
  end 
   "Sorry, that emoticon was not found"
end