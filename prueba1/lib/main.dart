import 'package:flutter/material.dart';
import 'info_screen.dart';
import 'imc_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color mainColor = Color(0xFF1976D2); // Azul primario

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación Fluida',
      theme: ThemeData(
        primaryColor: mainColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.black)),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final Color buttonColor = Color(0xFF19D2B6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Principal'),
        backgroundColor: buttonColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoScreen()),
                );
              },
              child: Text('Ir a Información'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IMCScreen()),
                );
              },
              child: Text('Ir a Calculadora IMC'),
            ),
          ],
        ),
      ),
    );
  }
}
