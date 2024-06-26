import 'package:flutter/material.dart';

import 'package:hello_world/widgets/login_button.dart';

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
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyMCAAueSJpJ_56vnMhYRdCIX3Hx_Ag1uJpQ&s', fit: BoxFit.cover,),
            ),
            Container(
              color: Colors.black.withOpacity(.3),
            ),
            _body(context)
          ],
        ),
      );
  }

  SingleChildScrollView _body(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network('https://img.freepik.com/vetores-gratis/vetor-de-gradiente-de-logotipo-colorido-de-passaro_343694-1365.jpg?size=338&ext=jpg&ga=GA1.1.2116175301.1719273600&semt=ais_user'),
                const SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(), 
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
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                LoginButton(email: email, password: password)
              ],
            )
          )
        ),
      );
  }
}