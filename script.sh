#! \bin\bash

#Escribe un script que compruebe la fortaleza de las contraseñas de los usuarios, 
#haciendo semanalmente un ataque de diccionario/fuerza bruta contra los hashes de las contraseñas que han cambiado en la última semana.'

#1º Enfoque: "Lee" la contraseña y dependendo de lo que contenga se les sumaran mas o menos puntos

echo "Dime la clave"
read clave

long=${#clave}

num=[0-9]


if [[ $long > 4 ]]
then
  	if  [[ $clave == *$num[a-zA-Z]* ]] || [[ $clave == *[a-zA-Z]$num* ]]
	then
  		echo "Contraseña contiene números y letras en mayusculas y minusculas"
	elif  [[ $clave == [a-zA-Z]{6} ]]
	then
  		echo "Contraseña contiene solamente letras "
  	elif [[ $clave == $num{6} ]]
  	then
  		echo "Contraseña contiene solamente números"
	fi
else 
	echo $long
fi
