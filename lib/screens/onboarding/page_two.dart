import 'package:flutter/material.dart';
import '../../widgets/onboarding/onboarding_content.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
          // Definir el gradiente radial
          gradient: RadialGradient(
            center: Alignment.center, // El centro del gradiente
            radius: 0.65, // Radio del gradiente, similar al "r" en el SVG
            colors: [
              Color(0xFFFF86BE), // Color de inicio del gradiente (#ff86be)
              Color(0xFFE31952), // Color final del gradiente (#e31952)
            ],
            stops: [0.0, 1.0], // Stop en 0 para el color inicial y 1 para el color final
          ),
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           SizedBox(height: 34),
            Image.asset(
              '../../assets/images/logo.png', // Ruta de la imagen del logo
              width: 40,
              height: 40,
            ),
            
          SizedBox(height: 34),
            Image.asset(
              '../../assets/images/product.png', // Ruta de la imagen del logo
              width: 275,
              height: 295,
            ),
           FractionallySizedBox(
            //widthFactor: 0.8,  // Ajusta el ancho al 80% de la pantalla
            child: Text(
              'Tus productos a la mano',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.7,  // Ajusta el ancho al 80% de la pantalla
            child: Text(
              'Adminístralos libremente desde cualquier \nlugar, fácil y rápido.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
           
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
