import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/tela1_screen.dart';
import 'screens/tela2_screen.dart';
import 'screens/tela3_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tutorial06',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends States<MainPage> {
  int paginaAtual = 0;

  final List<Widget> telas = const [
    HomeScreen(),
    tela1_screen(),
    Tela2Screen(),
    Tela3Screen(),
  ];

  void trocarTela(int index) {
    setState((){
      paginaAtual = index;
    });
    Navigator.pop(context);
  }
  @override
  widget build(buildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('Tutorial06'),
    ),
    drawer: Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Text('Menu', style: TextStyle(fontSize:24)),
           ),
           ListTile(title:const Text('Home'), onTap: ()=> trocarTela(0),)
        ],
      ),
    )
    )
  }
}
