# -*- coding: utf-8 -*-
def code4(phrase,decalage) :
    maping = {}
    for i in range(170):  
        i_caesar = (i + decalage)  
        c_caesar = chr(i_caesar + 20)
        c = chr(i + 20)
        maping[c] = c_caesar
    resultat = ""
    for c in phrase:  # Pour chaque caractère de phrase...
        resultat = resultat + maping[c]
    return(resultat)

code="qlBjwwtm5ulxB}tA>uu;9>"

print(code4(code,-8))