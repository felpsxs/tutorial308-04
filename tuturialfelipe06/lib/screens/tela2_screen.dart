import 'package:flutter/material.dart';

class Tela2Screen extends StatefulWidget {
  const Tela2Screen({super.key});

  @override
  State<Tela2Screen> createState() => _Tela2ScreenState();
}

class _Tela2ScreenState extends State<Tela2Screen> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void diminuir() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tela 2', style: TextStyle(fontSize: 28)),
            Text('Contador: $contador', style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementar,
              child: const Text('Incrementar'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: diminuir,
              child: const Text('Diminuir'),
            ),
          ],
        ),
      ),
    );
  }
}