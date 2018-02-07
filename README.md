# WordPress-Nginx
 ## Script
 
 Descarrega el Wordpress ho descomprimeix. Copia el seu contingut al Document Root de Nginx /usr/share/nginx/html. Donarli com a propietari i grup nginx al contingut del document root. Configurar la base de dades mitjaçant el fitxer wp-config.php i la comanda sed, mitjançant la subtitució. Llavors una vegada configurada la base de dades, es posa el hipervisor configurat per executar PHP i Nginx, ja que la imatge es de (wyveo/nginx-php-fpm).
