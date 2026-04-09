import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  final TextEditingController _n1Controller = TextEditingController();
  final TextEditingController _n2Controller = TextEditingController();
  final TextEditingController _resultController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _n1Controller.clear();
    _n2Controller.clear();
    _resultController.clear();
  }

  void somar() {
    double a = double.tryParse(_n1Controller.text) ?? 0;
    double b = double.tryParse(_n2Controller.text) ?? 0;
    double resultado = a + b;
    setState(() {
      _resultController.text = resultado.toString();
    });
  }

  void subtrair() {
    double a = double.tryParse(_n1Controller.text) ?? 0;
    double b = double.tryParse(_n2Controller.text) ?? 0;
    double resultado = a - b;
    setState(() {
      _resultController.text = resultado.toString();
    });
  }

  void multiplicar() {
    double a = double.tryParse(_n1Controller.text) ?? 0;
    double b = double.tryParse(_n2Controller.text) ?? 0;
    double resultado = a * b;
    setState(() {
      _resultController.text = resultado.toString();
    });
  }

  void dividir() {
    double a = double.tryParse(_n1Controller.text) ?? 0;
    double b = double.tryParse(_n2Controller.text) ?? 0;
    if (b == 0) {
      _resultController.text = 'Erro: Divisão por zero';
    } else {
      double resultado = a / b;
      setState(() {
        _resultController.text = resultado.toString();
      });
    }
  }

  void exponenciar() {
    double a = double.tryParse(_n1Controller.text) ?? 0;
    double b = double.tryParse(_n2Controller.text) ?? 0;
    double resultado = pow(a, b).toDouble();  // Converte para double
    setState(() {
      _resultController.text = resultado.toString();
    });
  }

  void raizQuadrada() {
    double a = double.tryParse(_n1Controller.text) ?? 0;
    double resultado = sqrt(a);
    setState(() {
      _resultController.text = resultado.toString();
    });
  }

  @override
  void dispose() {
    _n1Controller.dispose();
    _n2Controller.dispose();
    _resultController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mini Calculadora do Felipe"),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _n1Controller,
                decoration: const InputDecoration(
                  labelText: 'Informe valor A',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _n2Controller,
                decoration: const InputDecoration(
                  labelText: 'Informe valor B',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: somar,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text('Soma'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: subtrair,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text('Subtração'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: multiplicar,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text('Multiplicação'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: dividir,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text('Divisão'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: exponenciar,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text('Exponenciação'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: raizQuadrada,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text('Raiz Quadrada'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _resultController,
                decoration: const InputDecoration(
                  labelText: 'Resultado',
                  prefixIcon: Icon(Icons.equalizer),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                enabled: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}