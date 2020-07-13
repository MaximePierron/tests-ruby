def ftoc(f)
    c=((f-32)/1.8)
    c_round=c.round(1)
end

def ctof(c)
    f=((c*1.8)+32)
    f_round=f.round(1)
end
