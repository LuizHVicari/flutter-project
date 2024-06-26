import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:hello_world/pages/home_page.dart';

class LoginButton extends StatefulWidget {
  final String email;
  final String password;
  const LoginButton({super.key, required this.email, required this.password});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (widget.email == 'email@email.com' && widget.password == '1234') {
          log('correto');
          Navigator.of(context).pushNamed('/home');
        } else {
          String email = widget.email;
          log('email: $email');
          log(widget.password);
          log('incorreto');
        }
      },
      child: const Text('Entrar'),
    );
  }
}