def add(a,b)
    c=a+b
end

def subtract(a,b)
    c=a-b
end

def sum(arr)
    sum=
    i=0
    if arr==[]
        sum=0
    else
        for i in 0 ... arr.size
            sum+=arr[i]
        end
    end
    return sum
end

def multiply(a,b)
    c=a*b
end

def power(a,b)
    c=a**b
end

def factorial(a)
    facto=1
    if a==0
        return 1
    elsif a && (a.is_a? Integer) == false
        return "factoriel ne s'applique qu'à des entiers positifs"
    elsif a && (a.positive?) == false
        return "factoriel ne s'applique qu'à des entiers positifs"
    else
        for i in 1 ... (a+1)
            facto=facto*i
        end
        return facto
    end
end
