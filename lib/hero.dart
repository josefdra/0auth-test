import 'package:auth_test/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Shader linearGradient = const LinearGradient(
  colors: <Color>[
    Color.fromRGBO(255, 239, 64, 0.612),
    Color.fromRGBO(255, 158, 68, 0.612),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
).createShader(const Rect.fromLTWH(0, 0, 500, 70));

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Container(
          margin: const EdgeInsets.only(bottom: margin),
          child: Image.asset('images/logo.png', width: 250),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(margin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '0Auth',
                  style: GoogleFonts.spaceGrotesk(
                    foreground: Paint()..shader = linearGradient,
                    fontSize: 80,
                    height: 0.8,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Test App',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 80,
                    height: 0.8,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
