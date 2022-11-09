#!/bin/bash

PORT="2223"

SERVER_ADD="localhost"

echo "Cliente Turip" 

echo "(1) SEND: Handshake HOLA_TURIP" 

echo "HOLI_TURIP 127.0.0.1" | nc $SERVER_ADD $PORT

echo "(2) LISTEN: Comprobacion handshake"

MSG=`nc -l $PORT`

 if [ "$MSG" != "OK_TURIP" ]
 then
     echo "ERROR 1: Handshake incorrecto"

  exit 1

 fi

echo "(5) SEND_FILE: vaca.vaca"

echo "FILE_NAME vaca.vaca" | nc $SERVER_ADD $PORT

echo "(6) LISTEN: Comprobacion nombre archivo"

MSG=`nc -l $PORT`





