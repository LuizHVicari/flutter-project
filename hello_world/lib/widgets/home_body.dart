import 'package:flutter/material.dart';
import 'package:hello_world/widgets/switch_theme.dart';
import 'dart:developer';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return HomeBodyState();
  }
  
}

class HomeBodyState extends State<HomeBody> {
  int counter = 0;
  // HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                // borderRadius: BorderRadius.circular(40),
                child: Image.network('https://media.istockphoto.com/id/1495088043/vector/user-profile-icon-avatar-or-person-icon-profile-picture-portrait-symbol-default-portrait.jpg?s=612x612&w=0&k=20&c=dhV2p1JwmloBTOaGAtaA3AW1KSnjsdMt7-U_3EZElZ0=')),
              accountName: const Text('user'), 
              accountEmail: const Text('email@email.com')
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Início'),
              subtitle: const Text('Tela de início'),
              onTap: () {
                log('Home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              subtitle: const Text('Finalizar Sessáo'),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [SwitchForTheme()],
      ),
      body: SizedBox(
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
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        }
      )
    );
  }
}