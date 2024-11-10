import 'package:flutter/material.dart';

class NavigationControls extends StatelessWidget {
  final int currentIndex;
  final int totalPages;
  final VoidCallback onNext;
  final VoidCallback onSkip;

  NavigationControls({
    required this.currentIndex,
    required this.totalPages,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Fondo principal de la página con oscurecimiento en la última página
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 0.65,
                colors: [
                  Color(0xFFff86be),
                  Color(0xFFe31952),
                ],
                stops: [0.0, 1.0],
              ),
            ),
            child: currentIndex == totalPages - 1
                ? Container(
                    color: Colors.black.withOpacity(0.7), // Oscurecer el fondo
                    alignment: Alignment.center,
                    child: Text(
                      "Libera Tu Banca",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                : null, // No oscurecer si no estamos en la última página
          ),
        ),

        // Controles de navegación solo si no es la última página
        if (currentIndex != totalPages - 1)
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: onSkip, child: Text("Saltar")),
                Row(
                  children: List.generate(
                    totalPages,
                    (index) => Icon(
                      Icons.circle,
                      size: 8,
                      color: currentIndex == index ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: onNext,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
