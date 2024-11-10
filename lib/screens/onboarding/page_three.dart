import 'package:flutter/material.dart';
import '../../widgets/onboarding/onboarding_content.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
       decoration: BoxDecoration(
          // Definir el gradiente radial
          gradient: RadialGradient(
             center: Alignment(0.5, 0.424),// El centro del gradiente
            radius: 1.27, // Radio del gradiente, similar al "r" en el SVG
            colors: [
              Color(0xFFff8d45), // Color de inicio del gradiente (#ff86be)
              Color(0xFFf91c33), // Color final del gradiente (#e31952)
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
              '../../assets/images/pague.png', // Ruta de la imagen del logo
              width: 275,
              height: 295,
            ),
           FractionallySizedBox(
            //widthFactor: 0.8,  // Ajusta el ancho al 80% de la pantalla
            child: Text(
              'Paga libremente',
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
              'Puedes pagar tus productos, recibos y facturas \nen cualquier momento y lugar.',
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
