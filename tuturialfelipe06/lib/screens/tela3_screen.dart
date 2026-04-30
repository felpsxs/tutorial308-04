import 'package:flutter/material.dart';

class Tela3Screen extends StatefulWidget {
  const Tela3Screen({super.key});

  @override
  State<Tela3Screen> createState() => _Tela3ScreenState();
}

class _Tela3ScreenState extends State<Tela3Screen> {
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

  void resetar() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tela 3', style: TextStyle(fontSize: 28)),
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
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: resetar,
              child: const Text('Resetar'),
            ),
          ],
        ),
      ),
    );
  }
}