wget https://raw.githubusercontent.com/daniel-lozano/CLASES_PYTHON/master/CLASE1/METODOS/notas.txt
awk < notas.txt '{if($3>4.0&&$3<5)print($1)}'|wc -l>RES1.txt
awk < notas.txt '{if($3>4.0&&$3<5&&$6>15)print($1)}'|wc -l>>RES1.txt

grep -iw 0 notas.txt | awk '{print($1,$2)}'

awk < notas.txt '{if($7>8&&$7<10)print($1,$7)}'>RES2.txt
awk < notas.txt '{if($7>8&&$7<10)print($1,$7)}'|wc $1 -l
mkdir RESULTADO
mv RES1.txt RESULTADO
mv RES2.txt RESULTADO
