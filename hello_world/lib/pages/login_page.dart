import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:hello_world/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    onChanged: (text) {
                      password = text;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {
                      if (email == 'email@email.com' && password == '1234') {
                        log('correto');
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage())
                        );
                      } else {
                        log('incorreto');
                      }
                    },
                    child: const Text('Entrar'),
                  )
                ],
              )
            )
          ),
        ),
      );
  }
}