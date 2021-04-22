# FCTDAW

 * Estructura de directoris bàsica
    * config
    * helpers
    * layouts
    * public
    * tests
    * .docker

 
 domini: batoi2021.my
 
 per funcionar: 
  
  * Obrir terminal i executar 
  
    > sh start.sh
    
    > sh composer.sh
    
  
  * Per finalitzar, executar
    
    > sh stop.sh 

  * Per executar test, amb màquina apagada executar
    
    > sh test.sh 
                                                        
 Enllaç a l'explicació de la construcció de tot plegat: [wiki](https://github.com/igomis/fctDAW/wiki)
 
 ### Exercisi : 
 
 Es demana completar l'aplicació amb el següent:
 
 * L'aplicació serveix per a que els treballadors d'una empresa puguen efectuar comandes d'una sèrie de plats que oferixen els proveidors.
 * Així tindre dos tipus d'usuari en el nostre sistema:
    * L'administrador que ja està donat d'alta i no calen més
    * Els treballadors que s'hauran de registrar.
 * La manera de diferenciar els dos usuaris és perquè el rol de l'administrador és 1, mentre que el dels usuaris és 2( per defecte la base de dades assignar este rol als nous usuaris)
 * L'administrador podrà fer el manteniment de la taula de plats (amb tots els camps).
 * Per a fer la commanda del dia s'haurà de fer una pantalla on apareixquen els plats amb la imatge i un boto per afegir a comanda.
 * Una vegada feta la comanda, es dirigirà a l'usuari a una pantalla on ixquen els que ha demanat amb l'opció d'esborrar algun plat o la de confirmar la comanda. Una vegada confirmada ja no es podrà modificar. Des de esta pantalla també es podrà anar a l'anterior per afegir nous plats. 
 * Mentre no es confirme la comanda esta es guardarà en una variable de sessió. Una vegada confirmada anirà a la BBDD.

 * Pantalles
    * Login.
    * Register. 
    * Manteniment dels plats (sols administrador).
    * Principal on apareixen els plats amb les fotos i un boto per afegir a comanda.
    * Confirmació de la comanda.
   
    
 * La rúbrica val sobre 18. Es fará la correcció depenent dels membres de l'equip.
    * 1 membre nota = (nota*1,38) / 1,8
    * 2 membres nota = (nota* 1,12) / 1,8
    * 3 membrer nota = nota / 1,8
 	
