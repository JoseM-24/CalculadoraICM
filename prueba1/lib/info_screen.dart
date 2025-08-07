import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  final Color boxColor = Color(0xFFBBDEFB); // Azul claro

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Informativa'),
        backgroundColor: Color(0xFF19D2BD),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Desarrollo de Aplicaciones Móviles en Flutter',
                style: TextStyle(fontSize: 16),
              ),
            ),

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Jose Luis Toapanta Chango',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text('Código: 94', style: TextStyle(fontSize: 16)),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Correo Institucional: jose.toapanta@espoch.edu.ec',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Carrera: Tecnologías de la Información',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
