#! \bin\bash

#Escribe un script que compruebe la fortaleza de las contraseñas de los usuarios, 
#haciendo semanalmente un ataque de diccionario/fuerza bruta contra los hashes de las contraseñas que han cambiado en la última semana.'

#1º Enfoque: "Lee" la contraseña y dependendo de lo que contenga se les sumaran mas o menos puntos

echo "Dime la clave"
read clave

declare -i long=${#clave} 
 
declare -i min=4

num=[0-9]


	if [[ $clave =~ [A-Z]  ]]
	then
		echo "Tiene mayusculas"
	fi

  	if  [[ $clave =~ $num[a-zA-Z]|[a-zA-Z]$num ]]
	then
  		echo "Contraseña contiene números y letras"

	elif  [[ $clave != *$num* ]]
	then
  		echo "Contraseña contiene solamente letras"

  	elif [[ $clave != *[a-zA-Z]* ]]
  	then
  		echo "Contraseña contiene solamente números"
	fi

	if [[ $long > $min ]]
	then
		echo "bien", $long
	else 
		echo $long,"corta"
	fi
