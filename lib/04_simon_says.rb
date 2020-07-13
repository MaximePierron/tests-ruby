def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str,c=2)
    [str].cycle(c).to_a.join(' ')
end

def start_of_word(str,s)
    str[0..s-1]
end

def first_word(str)
    str.split.first
end

def titleize(str)
    words_to_ignore=["the", "and"] #les petits mots à exclure
    str.gsub!(/\w+/) { |word| words_to_ignore.include?(word) ? word : word.capitalize} #remplace tous les mots par leur équivalent capitalized sauf les petis mots
    str.sub!(/\w+/) { |word| word.capitalize} #remplace le premier mot par sa version capitalized
end