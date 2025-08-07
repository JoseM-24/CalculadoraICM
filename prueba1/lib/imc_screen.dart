import 'package:flutter/material.dart';

class IMCScreen extends StatefulWidget {
  @override
  _IMCScreenState createState() => _IMCScreenState();
}

class _IMCScreenState extends State<IMCScreen> {
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();
  String resultado = "";

  void calcularIMC() {
    double altura = double.tryParse(alturaController.text) ?? 0;
    double peso = double.tryParse(pesoController.text) ?? 0;

    if (altura > 0 && peso > 0) {
      double imc = peso / (altura * altura);
      String categoria = "";

      if (imc < 18.5) {
        categoria = "Bajo peso";
      } else if (imc < 24.9) {
        categoria = "Peso normal";
      } else if (imc < 29.9) {
        categoria = "Sobrepeso";
      } else {
        categoria = "Obesidad";
      }

      setState(() {
        resultado = "Tu IMC es ${imc.toStringAsFixed(2)} ($categoria)";
      });
    } else {
      setState(() {
        resultado = "Por favor, introduce valores válidos.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color bgColor = Color(0xFFE3F2FD); // Azul muy claro
    final Color buttonColor = Color(0xFF19D2BD);

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        backgroundColor: buttonColor,
      ),
      body: Container(
        color: bgColor,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(blurRadius: 4, color: Colors.grey.shade300),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Text("Altura (m):")),
                      Expanded(
                        child: TextField(
                          controller: alturaController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: "Ej: 1.75"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(child: Text("Peso (kg):")),
                      Expanded(
                        child: TextField(
                          controller: pesoController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(hintText: "Ej: 70"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              onPressed: calcularIMC,
              child: Text("Calcular IMC"),
            ),
            SizedBox(height: 20),
            Text(
              resultado,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
