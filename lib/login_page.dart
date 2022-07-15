import 'dart:ffi';

import 'package:contatos/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email ='';
  String password ='';
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView (
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                    height: 200,
                    child: Image.network('https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2017%2F08%2F22%2F23%2FLogo-164750_454671_231322223_2120246239.jpg')
                ),
                Container(height: 20,),
                TextField(
                  onChanged: (text){
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ) ,
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text){
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ) ,
                ),
                SizedBox(height: 15),
                RaisedButton(onPressed: () {
                  if(email =='mateusmoitinho23@gmail.com' && password =='123'){
                   Navigator.of(context).pushReplacementNamed('/home');

                  }else{
                    print('login invalido');
                  }
                }, child: Text('Entrar') ,)
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
