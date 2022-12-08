import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FinalDeliver extends StatelessWidget {
  const FinalDeliver({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 50,
          left: 32,
          child: Lottie.network(
            'https://assets2.lottiefiles.com/private_files/lf30_FOTHe4.json',
            width: 200,
          ),
        ),
        Positioned(
          top: 320,
          left: 32,
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: Text(
                  'Tudo pronto e você recebe sua comida!',
                  style: TextStyle(
                    color: Colors.orange[200],
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: size.width - 80,
                child: Text(
                  'Bom apetite!',
                  style: TextStyle(
                    color: Colors.teal[50],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 24,
          right: 84,
          child: Lottie.network(
            'https://assets10.lottiefiles.com/packages/lf20_wco7gt1s.json',
            width: 150,
          ),
        )
      ],
    );
  }
}
