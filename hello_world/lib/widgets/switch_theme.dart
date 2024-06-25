import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class SwitchForTheme extends StatefulWidget {
  @override
  State<SwitchForTheme> createState() {
    return SwitchState();
  }
}

class SwitchState extends State<SwitchForTheme> {

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}