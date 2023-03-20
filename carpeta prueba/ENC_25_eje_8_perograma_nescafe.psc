//// 8. Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina ofre-
////    ciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas: Norte,		
////	Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas estadísticas
////	sobre el comportamiento de sus representantes en cada zona. Se desea hacer un programa
////	que lea el monto de las ventas de los representantes en cada zona y calcule luego:
////		a) el total de ventas de una zona introducida por teclado
////		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
////		c) el total de ventas de todos los representantes.

////            sur    norte   este    oeste   centro    Ventas Representante
//// Repre A     5       1      8        6       5          n 
//// Repre B     1       3      5        0       4          n 
//// Repre C     4       9      7        6       3          n
//// Repre D     4       5      6        1       5          n
//// Repre E     7       8      9        8       4          n
//// 
////  Zona       n       n      n        n       n          n
//// Ventas
////  

Algoritmo ENC_25_eje_8_perograma_nescafe
	definir matriz, arreglo, i,j,n,m,suma Como Entero
	n = 5
	m = 6
	suma = 0
	dimension arreglo[m],matriz[n,m]
	Mostrar "                                  *********************************"
	Mostrar "               ******************************** NesCafé ***********************************"
	Mostrar "***********************************************************************************************************"
	Escribir "   ZONAS DE VENTA  | Zona Sur  |  Zona Norte |  Zona Este  |  Zona Oeste | Zona Centro | V.Representante |"
	Escribir "__________________________________________________________________________________________________________"
	para i = 0 hasta n-1 Hacer
		Mostrar Sin Saltar "   Rrepresentante ",i," -   "
		arreglo[i] = 0
		para j = 0 Hasta m-1 Hacer
			si j != m-1 Entonces
				matriz[i,j] = Aleatorio(10,20)
				mostrar Sin Saltar matriz[i,j],"     |      "
				suma = suma + matriz[i,j] 
			SiNo
			    matriz[i,j] = suma	
				Mostrar  Sin Saltar matriz[i,j],"         |"
			FinSi
			
		FinPara
		mostrar ""
		suma  = 0
	FinPara
	para i = 0 hasta n-1 Hacer
		para j = 0 hasta n-1 Hacer
			si j == j Entonces
				arreglo[i] = arreglo[i] + matriz[j,i]
			FinSi
		FinPara
	FinPara
	escribir "__________________________________________________________________________________________________________"
	escribir sin saltar "   Ventas Por Zona  -   "
	para i = 0 Hasta n-1 Hacer
		mostrar Sin Saltar  arreglo[i],"     |      "
	FinPara
	mostrar ""
	Mostrar "***********************************************************************************************************"
	Mostrar "               ******************************** NesCafé ***********************************"
	Mostrar "                                  *********************************"
FinAlgoritmo
