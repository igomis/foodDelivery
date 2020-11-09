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
 * La manera de diferenciar els dos usuaris és perquè el rol de l'administrador és 1, mentre que el dels usuaris és 2. Per defecte la base de dades assignar este rol als nous usuaris.
 * L'administrador podrà fer el manteniment de la taula de plats (amb tots els camps).
 * S'haurà de fer una pantalla on apareixquen els plats amb les imatges i un boto per afegir a comanda.
 * Els usuaris podràn fer la comanda del dia, afegint plats. Per defecte la bd assigna l'hora a la que se fa l'alta de la comanda.
 * No cal pitjar botó de confirmar tota la comanda, sino conforme se van afegint línees queden confirmades.
 * Hi ha un panell d'administrador per :
        * Confirmar comandes, s'enviaran correus electronics als proveidor amb totes les comandes.
        * Enviar al correu dels usuaris la quantitat que han de pagar un més concret.
        * Pasar a la pantalla de manteniment de plats
 * Pantalles
    * Login (1)
    * Register (1) 
    * Panel d'administració (enllaç a manteniment plats, enviament comandes, facturació) (3)
    * Principal on apareixen els plats amb les fotos i un boto per afegir a comanda (1)
    * Manteniment dels plats (sols administrador) (1)
    * Manteniment de la comanda del dia (per a tots els usuaris) (2)
    * Facturació (cal demanar el més a facturar, seleccionar usuaris) (3)
    
 * La rúbrica val sobre 18. Es fará la correcció depenent dels membres de l'equip.
    * 1 membre nota = (nota*1,38) / 1,8
    * 2 membres nota = (nota* 1,12) / 1,8
    * 3 membrer nota = nota / 1,8
 	
