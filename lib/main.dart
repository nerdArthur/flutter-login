// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import './db.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Página de cadastro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controllerUsuario = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 100, left: 10),
                  child: Row(
                    children: <Widget>[
                      Text("Realizar cadastro",
                          style: TextStyle(fontSize: 30, color: Colors.white))
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                        keyboardType: TextInputType.text,
                        controller: _controllerEmail,
                        decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ))),
                    SizedBox(height: 35),
                    TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _controllerUsuario,
                        decoration: InputDecoration(
                          labelText: "Usuário",
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                        )),
                    SizedBox(height: 35),
                    TextField(
                        controller: _controllerSenha,
                        decoration: InputDecoration(
                            labelText: "Senha",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ))),
                    SizedBox(height: 15),
                    SizedBox(height: 35),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      // decoration: BoxDecoration(
                      //   color: Colors.red,
                      //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // ),
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              print('teste');
                              print(_controllerEmail);
                            },
                            child: Text('Cadastrar')),
                      ),
                    ),
                    SizedBox(height: 35),
                  ]))
        ])));
  }
}
