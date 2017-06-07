#2º Enfoque: Dependiendo del tiempo que tarde en adquirirla contraseña será mejor o peor

sudo su

ruta = $(pwd)

echo "Instalacion de john"

apt-get update && apt-get john -y > /dev/null

echo "Ahora se crean el archivo en el cual de buscalra ls claves"

echo "Dime el nombre del archivo"
read objetivo

unshadow /etc/passwd /etc/shadow > $ruta/$objetivo

echo "Comienza el ataque"

john $ruta/$objetivo &1 > /dev/null

echo "Resutados"

john --show $ruta/$objetivo
