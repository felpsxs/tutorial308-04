import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // Controlers
  final TextEditingController _n1Controller = TextEditingController();
  final TextEditingController _n2Controller = TextEditingController();
  final TextEditingController _resultController = TextEditingController();
  
  @override
  void dispose() {
    // Limpa os controllers ao fechar a tela
    _n1Controller.dispose();
    _n2Controller.dispose();
    _resultController.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
        // AppBar
        appBar: AppBar(
          title: Text("Mini Calculadora"),
          backgroundColor: Colors.green),
          
          // Body
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              
              children: [
                //Campo: Valor A
                TextField(
                  controller: _n1Controller,
                  decoration: InputDecoration(
                    labelText: 'Informe o Valor A',
                    prefixIcon: Icon(Icons.numbers),
                    border: OutlineInputBorder(),
                    ),
                  ),

                  // Espaçamento entre os campos
                  SizedBox(height: 16),

                  // Campo: Valor B
                  TextField(
                  controller: _n2Controller,
                  decoration: InputDecoration(
                    labelText: 'Informe o Valor B',
                    prefixIcon: Icon(Icons.numbers),
                    border: OutlineInputBorder(),
                    ),
                  ),

                  // Espaçamento entre os campos
                  SizedBox(height: 16),

                  Row(children: [
                    // Botão de Soma
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          print(
                            "Valores informados: \n n1: ${_n1Controller.text} n2: ${_n2Controller.text}",
                      );

                      // Devemos tratar os numeros antes de realizar operação

                      String n1Tratado = _n1Controller.text.replaceAll(',','.'), replace)
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: Text('Soma'),
                      ),
                    ),
                    SizedBox(width: 10),
                    // Botão de Subtração
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: Implementar Subtração
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: Text('Subtração'),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                  ),
                 // Espaçamento entre os campos
                  SizedBox(height: 16),

                  // Campo: Resultado
                  TextField(
                    controller: _resultController,
                    decoration: InputDecoration(
                      labelText: 'Resultado',
                      prefixIcon: Icon(Icons.equalizer),
                      border: OutlineInputBorder(),
                    ),
                  )
              ],
            ),
          ),
        ),
      );
  }
}
