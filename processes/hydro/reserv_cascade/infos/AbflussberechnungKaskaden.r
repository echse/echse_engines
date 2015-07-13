
## Formeln f�r Abflussberechnung aus Kaskaden (aus Bollrich 2007)

## 1: �berfallformel nach Poleni; Annahme: Es gibt keinen R�ckstau => vollkommener �berfall
##### Q = 2/3 * p * b * sqrt(2*g) * h^3/2
##### p = �berfallbeiwert, typische Gr��e zwischen 0.6 und 0.7 (Freimann 2009), hier Annahme 0.65 
##### b = Wehrbreite => eine Breite f�r jedes subcatchment ("Breite_Damm"-Spalte berechnet in Kaskaden_Data.txt)
##### h = H�he der Wassers�ule oberhalb der Staumauer = �berstauh�he
##### hmax = Einstauh�he f�r jedes subcatchment (berechnet in Kaskaden_Data.txt)

Poleni_Q=function(b,h,hmax)

{
  2/3 * 0.65 * b * sqrt(2*9.81) * (h-hmax)^3/2
}


## 2: Formel f�r Outlet am Fu� des Dammes: Q = p * A * sqrt(2*9.81*h1)
##### A = 0.10m*0.10m = 0.01m�
##### Abflussbeiwert p = 0.58, f�r Seitenverh�ltnis von A = 1:1
##### h als H�henlage des Schwerpunktes der Austrittsfl�che A
##### Formel gilt nur f�r h/A > 1 
     
Outlet_Q=function(h)

{  
  0.58 * 0.01 * sqrt(2*9.81*(h-0.05))
}
