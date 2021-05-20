#!/bin/bash

# INSTALAÇÃO DAS DEPENDÊNCIAS
# DART
dart pub add mysql1;
# FLUTTER
flutter pub add mysql1;

# COPIAR E COLAR NO TERMINAL
docker run -d \                  
--name flutter-cadastro \
-p 5431:5432 \
-e "MYSQL_PASSWORD=batatinha" \
-e "MYSQL_DATABASE=flutter-cadastro-db" \
-e "MYSQL_USER=root" \
-e "MYSQL_ROOT_PASSWORD=batatinha" \
mysql:5.7;

# SCRIPTS DDL PARA O BANCO DE DADOS
CREATE TABLE user (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username VARCHAR(15),
    email VARCHAR(200) NOT NULL,
    password VARCHAR(50) NOT NULL
);