import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({super.key});

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  double positionLeft = -300.0;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => _animate());
    super.initState();
  }

  void _animate() {
    setState(() {
      positionLeft == 0.0 ? positionLeft = -300.0 : positionLeft = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 800),
          curve: Curves.bounceIn,
          top: 80,
          left: positionLeft,
          child: Lottie.network(
            "https://assets7.lottiefiles.com/packages/lf20_6YCRFI.json",
            width: 400,
          ),
        ),
        Positioned(
          top: 400,
          width: size.width,
          child: Column(
            children: [
              Text(
                "FooDelivery",
                style: TextStyle(
                  fontSize: 42,
                  letterSpacing: -4,
                  fontWeight: FontWeight.w800,
                  color: Colors.orange[100],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  "Entrega de FELICIDADE",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal[50],
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
