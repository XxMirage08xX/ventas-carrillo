<?php

	const APP_URL="http://localhost/ventas-carrillo/";
	const APP_NAME="Leonardo Carrillo Osorio 5G";
	const APP_SESSION_NAME="POS";
	define('FAVICON_PATH', __DIR__ . '\Phantom-Thieves-of-Hearts-Emblema.ico');
	/*---------- Tipos de documentos ----------*/
	const DOCUMENTOS_USUARIOS=["DUI","DNI","Celula","Licencia","Pasaporte","Otro"];

	/*---------- Tipos de unidades de productos ----------*/
	const PRODUCTO_UNIDAD=["Unidad","Libra","Kilogramo","Caja","Paquete","Lata","Galon","Botella","Tira","Sobre","Bolsa","Saco","Tarjeta","Otro"];

	/*---------- Configuracion de moneda ----------*/
	const MONEDA_SIMBOLO="$";
	const MONEDA_NOMBRE="USD";
	const MONEDA_DECIMALES="2";
	const MONEDA_SEPARADOR_MILLAR=",";
    const MONEDA_SEPARADOR_DECIMAL=".";

	/*---------- Marcador de campos obligatorios  (Font Awesome)  ----------*/
	const CAMPO_OBLIGATORIO='&nbsp; <i class="fas fa-edit"></i> &nbsp;';

	/*---------- Zona horaria ----------*/
	date_default_timezone_set("America/Mexico_city");

	/*
	configuracion de zona horaria de tu pais, para mas informacion visita
	http://php.net/manual/es/function.dat-defaul-timezone-set.php
	http://php.net/manual/es/timezones.php
	*/
	?>