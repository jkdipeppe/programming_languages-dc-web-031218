require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |key, value|
    value.each do |lang, method|
      method.each do |type, string_type|
        # binding.pry
        if new_hash[lang] == nil
          new_hash[lang] = {type => string_type, :style => []}
          new_hash[lang][:style].push(key)
        else
          new_hash[lang][:style].push(key)
        end
      # binding.pry
      end
    end
  end

  new_hash
end
