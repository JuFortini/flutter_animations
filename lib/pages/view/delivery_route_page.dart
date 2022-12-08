import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DeliveryRoutePage extends StatelessWidget {
  const DeliveryRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 150,
          right: 52,
          child: Lottie.network(
            'https://assets4.lottiefiles.com/packages/lf20_kx6a1byu.json',
            width: 300,
          ),
        ),
        Positioned(
          top: 350,
          left: 32,
          child: Column(
            children: [
              SizedBox(
                width: 280,
                child: Text(
                  'Nós encontramos a rota até você, onde quer que esteja.',
                  style: TextStyle(
                    color: Colors.orange[200],
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: size.width - 80,
                child: Text(
                  'Mapeamos a sua localidade para descobrir a rota mais rápida.\nNossa meta é ter uma entrega dentro de 5 minutos.',
                  style: TextStyle(
                    color: Colors.teal[50],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
