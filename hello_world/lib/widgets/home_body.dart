import 'package:flutter/material.dart';
import 'package:hello_world/widgets/switch_theme.dart';


//ignore: must_be_immutable
class HomeBody extends StatelessWidget {
  int counter = 0;
  HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Contador: $counter'),
          SwitchForTheme(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
            ],
          )
        ]
      ),
    );
  }
}