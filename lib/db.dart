import 'dart:async';

import 'package:mysql1/mysql1.dart';

Future save(email, usuario, senha) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'flutter-cadastro-db',
      password: 'batatinha'));

  var result = await conn.query(
      'insert into user (username, email, password) values (?, ?, ?)',
      [usuario, email, senha]);
  print('Id da linha inserida=${result.insertId}');

  var results = await conn.query(
      'select username, email, password from users where id = ?', [result.insertId]);

  for (var row in results) {
    print('usuário: ${row[0]}, email: ${row[1]} senha: ${row[2]}');
  }

  await conn.close();
}