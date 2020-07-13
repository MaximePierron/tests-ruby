def who_is_bigger(a,b,c)
    arr = [a,b,c]
    for item in arr
        if item.nil?
            return "nil detected"                       
        end
    end

    for item in arr
        if arr.index(arr.max) == 0
            return "a is bigger"
        elsif arr.index(arr.max)==1
            return "b is bigger"
        elsif arr.index(arr.max)==2
            return "c is bigger"
        end            
    end

end

def reverse_upcase_noLTA(str)
    str.reverse!
    str.upcase!
    str.delete! "LTA"
    return str
end

def array_42(arr)
    arr.each do |i| return true if i==42            
    end
    false
end

def magic_array(a)
    a.flatten.sort.uniq.map{|i| i*2}.reject{|i| i%3==0}.sort
end
