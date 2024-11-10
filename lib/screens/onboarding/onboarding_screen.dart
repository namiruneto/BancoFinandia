import 'package:flutter/material.dart';
import '../../widgets/onboarding/navigation_controls.dart';  // Importar NavigationControls
import '../../widgets/onboarding/onboarding_background.dart';
import '../../utils/page_indicator.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'page_three.dart';
import 'page_four.dart';
import 'page_five.dart';
import 'page_six.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  // Función para manejar el siguiente paso
  void _nextPage() {
    if (_currentIndex < 5) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  // Función para manejar el salto al final
  void _skipToEnd() {
    _pageController.jumpToPage(5);  // Salta directamente a la última página
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          OnboardingBackground(), // Fondo degradado
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              PageOne(),
              PageTwo(),
              PageThree(),
              PageFour(),
              PageFive(),
              PageSix(),
            ],
          ),
          PageIndicator(
            pageController: _pageController,
            currentIndex: _currentIndex,
            totalPages: 6,
          ),
          
          // Agregar NavigationControls en el Stack y pasar los parámetros
          // NavigationControls(
          //   currentIndex: _currentIndex,
          //   totalPages: 6,
          //   onNext: _nextPage,
          //   onSkip: _skipToEnd,
          // ),
        ],
      ),
    );
  }
}
