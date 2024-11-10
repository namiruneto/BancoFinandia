import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final PageController pageController;
  final int currentIndex;
  final int totalPages;

  PageIndicator({
    required this.pageController,
    required this.currentIndex,
    required this.totalPages,
  });

  void _onNext() {
    if (currentIndex < totalPages - 1) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void _onSkip() {
    pageController.jumpToPage(totalPages - 1);
  }

  @override
  Widget build(BuildContext context) {
    bool isLastPage = currentIndex == totalPages - 1; // Determina si es la última página

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 20), // Margen inferior
        child: Container(
          width: 400,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: isLastPage
                ? const Color.fromARGB(255, 255, 255, 255) // Fondo más oscuro en la última página
                : Colors.white.withOpacity(0.3), // Fondo más transparente en páginas anteriores
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Si estamos en la última página, ocultamos el botón de "Saltar"
              if (!isLastPage)
                TextButton(
                  onPressed: _onSkip,
                  child: Text("Saltar", style: TextStyle(color: Colors.white)),
                ),
              // Indicadores de página
              if (!isLastPage)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(totalPages, (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: currentIndex == index ? 12 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: currentIndex == index ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                ),
              // Si estamos en la última página, mostramos solo el mensaje
              if (isLastPage)
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,  // Definir el ancho específico para el texto
                  child: Text(
                    "Libera Tu Banca",
                    style: TextStyle(
                      color: const Color(0xff7c24db), // Color morado
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Asegura que el texto esté centrado
                  ),
                ),
              // Botón de "Siguiente" solo si no estamos en la última página
              if (!isLastPage)
                IconButton(
                  icon: Icon(Icons.arrow_forward, color: Colors.white),
                  onPressed: _onNext,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
