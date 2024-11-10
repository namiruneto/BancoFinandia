import 'package:flutter/material.dart';
import '../../widgets/onboarding/onboarding_content.dart';

class PageSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // Definir el gradiente radial similar al SVG
        gradient: RadialGradient(
            center: Alignment(0.5, 0.424), // El centro del gradiente (como el SVG)
          radius: 1.429, // Radio del gradiente, similar al "r" en el SVG
          colors: [
            Color(0xFFcd34ed), // Color de inicio del gradiente (#cd34ed)
            Color(0xFF5b1dd4), // Color final del gradiente (#5b1dd4)
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
               SizedBox(height: 34),   
                 Stack(
            alignment: Alignment.center,
            children: [
              // Imagen de fondo (pageSix.png)
              FractionallySizedBox(
                widthFactor: 0.65,
                child: Image.asset(
                  '../../assets/images/pageSix.png',
                  fit: BoxFit.contain,
                ),
              ),
              
              SizedBox(height: 34),
             Container(              
            width: double.infinity, // Asegura que ocupe todo el ancho disponible
            height: 295, // Mantiene el alto original           
          ),  
          
              // Imagen superpuesta fuera del FractionallySizedBox
              Positioned(
                // Alineación a la derecha de la pantalla con una fracción de desplazamiento
                right: MediaQuery.of(context).size.width * -0.30,
                child: Image.asset(
                  '../../assets/images/pagesix_1.png',
                  width: 420,
                  height: 420,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
  
           FractionallySizedBox(
            //widthFactor: 0.8,  // Ajusta el ancho al 80% de la pantalla
            child: Text(
              '¡Escanea y listo!',
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
              'Paga en datáfonos con QR y libérate de las \ntarjetas físicas.',
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
