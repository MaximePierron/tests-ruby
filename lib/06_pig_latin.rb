def translate(str)
    %cons[b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z] #création rapide d'un array
    def pig_latina(word) #methode qui travaille sur les mots
        prefix = word[0, "#{word}".index(/[aeiou]/)] #le prefix à mettre derriere est par definition la partie du mot avant la premiere apparition d'une voyelle
        prefix= 'sch' if word[0,3] == 'sch' #cas part
        prefix = 'qu' if word[0, 2] == 'qu' #cas part
        if cons.inculde?word[0] ? && word[1,3] == 'qu' #cas part
            prefix=word[0,3]
        end
        prefix.length == 0 ? "#{word}ay" : "#{word[prefix.length..-1]}#{prefix}ay" #si le prefixe a une longueur nulle alors on ajoute juste ay à la fin sinon le mot final = mot sans prefixe + prefixe
      end
      translated = str.scan(/\w+/).map{|word| pig_latina(word)}.join(" ") #scan tous les mots d'une phrase applique pig latina à tous les mots et les join
end