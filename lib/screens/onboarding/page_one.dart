import 'package:flutter/material.dart';
import '../../widgets/onboarding/onboarding_content.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.992, 0.723), // Ajuste del inicio del degradado
          end: Alignment(1.099, 0.114), // Ajuste del final del degradado
          colors: [
            Color(0xFF7037CE), // Color inicial del degradado (#7037CE)
            Color(0xFFE31952), // Color intermedio del degradado (#E31952)
            Color(0xFFE7192D), // Color final del degradado (#E7192D)
          ],
          stops: [0.0, 0.798, 1.0], // Posición de los colores en el degradado
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           SizedBox(height: 50),
            Image.asset(
              '../../assets/images/logo.png', // Ruta de la imagen del logo
              width: 77,
              height: 77,
            ),
          SizedBox(height: 20),
          Text(
            'Con Banco Finandina',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'tienes el poder de ser libre',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
           Spacer(flex: 4),
          Text(
            'Descubre lo que puedes hacer con tu',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'App Banco Finandina',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
