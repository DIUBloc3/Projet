# -*- coding: utf-8 -*-
def code4(phrase,decalage) :
    # On crée un dictionnaire {lettre_de_départ: lettre_encodée}.
    maping = {}
    for i in range(170):  # Pour chaque nombre de 0 à 25
        i_caesar = (i + decalage)  
        # On ajoute à ces nombre la "valeur" de la lettre a, et on les convertit en lettres!
        c_caesar = chr(i_caesar + 20)
        c = chr(i + 20)
        maping[c] = c_caesar
        # On a maintenant un dictionnaire qui à chaque lettre fait correspondre sa valeur codée.
    result = ""
    for c in phrase:  # Pour chaque caractère de phrase...
        result = result + maping[c]
    return(result)

code="qlBjwwtm5ulxB}tA>uu;9>"

print(code4(code,-8))