import 'package:flutter/material.dart';
import '../../widgets/onboarding/onboarding_content.dart';

class PageFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Definir el gradiente radial similar al SVG
        gradient: RadialGradient(
          center: Alignment.center, // El centro del gradiente (como el SVG)
          radius: 0.65, // Radio del gradiente, similar al "r" en el SVG
          colors: [
            Color(0xFFff86be), // Color de inicio del gradiente (#cd34ed)
            Color(0xFFe31952), // Color final del gradiente (#5b1dd4)
          ],
          stops: [0.0, 1.0], // Definir los stops del gradiente
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           SizedBox(height: 34),
            FractionallySizedBox(
            widthFactor: 0.08, // Ocupará el 30% del ancho de la pantalla
            child: Image.asset(
              '../../assets/images/logo.png',             
              fit: BoxFit.contain,
            ),
          ),     
                          
          FractionallySizedBox(
            widthFactor: 0.80, // Ocupará el 30% del ancho de la pantalla
            child: Image.asset(
              '../../assets/images/pagefive.png',             
              fit: BoxFit.contain,
            ),
          ),             
           FractionallySizedBox(
            //widthFactor: 0.8,  // Ajusta el ancho al 80% de la pantalla
            child: Text(
              'Tu banco donde quieras',
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
              'La oficina más cercana es tu celular. Libérate \nde las filas y los trámites largos.',
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
