import 'package:flutter/material.dart';
import '../../widgets/onboarding/onboarding_content.dart';

class PageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        // Definir el gradiente radial similar al SVG
        gradient: RadialGradient(
          center: Alignment(0.5, 0.424), // El centro del gradiente (como el SVG)
          radius: 1.429, // Radio del gradiente, similar al "r" en el SVG
          colors: [
            Color(0xFFCD34ED), // Color de inicio del gradiente (#cd34ed)
            Color(0xFF5B1DD4), // Color final del gradiente (#5b1dd4)
          ],
          stops: [0.0, 1.0], // Definir los stops del gradiente
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
             Container(
            width: double.infinity, // Asegura que ocupe todo el ancho disponible
            height: 295, // Mantiene el alto original
            child: Image.asset(
              '../../assets/images/envia.png', // Ruta de la imagen
              fit: BoxFit.fill, // Estira la imagen solo en el ancho y mantiene la altura
            ),
          ),        
           FractionallySizedBox(
            //widthFactor: 0.8,  // Ajusta el ancho al 80% de la pantalla
            child: Text(
              'Envía dinero',
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
              'Pasa plata libremente y sin costo a cualquier \ncuenta bancaria o celular en Colombia.',
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
