import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';
import 'package:hello_world/pages/login_page.dart';
import 'package:hello_world/widgets/switch_theme.dart';
import 'package:hello_world/widgets/home_body.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
} 

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: !AppController.instance.isDarkTheme ? ThemeData.light() : ThemeData.dark(),
          initialRoute: '/',
          routes: {
            '/': (context) => const LoginPage(),
            '/home': (context) => const HomeBody()
          },
        );
      }
    );
  }
}