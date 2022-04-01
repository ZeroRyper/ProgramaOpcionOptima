import mysql.connector
cnn = mysql.connector.connect(user='root', password='ansiedad54*', 
                                      host='127.0.0.1',
                                      database='bdmo',
                                      port='3308')
print('Conexion Establecida')



cur=cnn.cursor()
cur.execute("SELECT * FROM bdmo.viajes")
datos=cur.fetchall()
for fila in datos:
         print(fila)


consulta=("SELECT sum(Precio+Tiempo)/2 as total FROM bdmo.viajes where Matricula in (6,7,8,10) ")
result = (consulta);

consulta2=("SELECT sum(Precio+Tiempo)/2 as total FROM bdmo.viajes where Matricula in (6,14) ")
result2 = (consulta2);

consulta3=("SELECT sum(Precio+Tiempo)/2 as total FROM bdmo.viajes where Matricula in (19,10)")
result3 = (consulta3);

consulta4=("SELECT sum(Precio+Tiempo)/2 as total FROM bdmo.viajes where Matricula in (17,18,10) ")
result4= (consulta4);

print('\n La opcion optima es:')
if(result<result2 and result<result3 and result<result4):
        print('Tecnologico-Zacatecas Boulevar-El Carmen-Guadalupe Centro-Rincon Colonial')
        cur=cnn.cursor()
        cur.execute("SELECT Destino,Precio,Tiempo,sum(Precio+Tiempo)/2 as total FROM bdmo.viajes where Matricula in (6,7,8,10)  order by Matricula asc ")
        datos=cur.fetchall()
        for fila in datos:
                print(fila)
elif(result2<result and result2<result3 and result2<result4):
        print('Tecnologico-Zacatecas Boulevar')
        cur=cnn.cursor()
        cur.execute("SELECT Destino,Precio,Tiempo,sum(Precio+Tiempo)/2 as total FROM bdmo.viajes where Matricula in (6,14)  order by Matricula asc ")
        datos=cur.fetchall()
        for fila in datos:
                print(fila)
                
elif(result3<result and result3<result2 and result3<result4):
        print('Tecnologico-Zacatecas Presidecial-Guadalupe Centro-Rincon Colonial')
        cur=cnn.cursor()
        cur.execute("SELECT Destino,Precio,Tiempo,sum(Precio+Tiempo)/2 as total FROM bdmo.viajes where Matricula in (17,18,10)  order by Matricula asc ")
        datos=cur.fetchall()
        for fila in datos:
                print(fila)
                
elif(result4<result3 and result4<result2 and result4<result):
        print('Tecnlogico-Guadalupe Centro-Rincon Colonial')
        cur=cnn.cursor()
        cur.execute("SELECT Destino,Precio,Tiempo,sum(Precio+Tiempo)/2 as total FROM bdmo.viajes where Matricula in (19,10)  order by Matricula asc ")
        datos=cur.fetchall()
        for fila in datos:
                print(fila)
