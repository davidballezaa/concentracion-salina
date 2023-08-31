# MA1033 - Concentración Salina
![Lagos_Esquema](https://github.com/davidballezaa/concentracion-salina/assets/53234505/6757e695-ecc7-4707-890c-4c116ac85468)

Queremos conocer cómo se comporta la concentración de sal (kg/m^3) de dos lagos, L_d que es un lago dulce y L_s que es un lago salobre, como efecto del paso de un río.
Además suponemos que los volumenes de los ríos son constantes a tráves del tiempo, y que además el flujo del río (m^3/s) también es estacionario (flujo constante). 
De igual manera, consideramos que la concentración del lago dulce L_d es nula, y se conoce la concentración salina del lago salado L_s.

![Sistema de EDOs](https://github.com/davidballezaa/concentracion-salina/assets/53234505/a2700792-5288-4b4b-a7fb-b4e389e84a84)

Parámetros del problema:
- Lago dulce L_d: Lago de Pátzcuaro, Michoacán
  - Volumen V_d: [550 (hm^3)](https://apps1.semarnat.gob.mx:8443/dgeia/compendio_2015/dgeiawf.semarnat.gob.mx_8080/ibi_apps/WFServletd45c.html )
  - Concentración de sal inicial: C_d(0) = 0 (kg/m^3)
- Lago salobre L_s: Lago de Cuitzeo, Michoacán
  - Volumen V_s: [920 (hm^3)](https://apps1.semarnat.gob.mx:8443/dgeia/compendio_2015/dgeiawf.semarnat.gob.mx_8080/ibi_apps/WFServletd45c.html )
  - Concentración de sal inicial: C_s(0) = [0.5 (kg/m^3)](https://www.researchgate.net/publication/333185284_Analisis_limnologico_del_Lago_de_Cuitzeo_Michoacan_Mexico#:~:text=Se%20concluye%20que%20el%20Lago,salinidad%20por%20encima%20de%200.5%20%25 )
- Río: Río Balsas
  - Flujo del río: [440 (m^3/s)](https://es.wikipedia.org/wiki/R%C3%ADo_Balsas)  
