import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 80,
          left: 32,
          child: Lottie.network(
            'https://assets3.lottiefiles.com/packages/lf20_axztuerm.json',
            width: 200,
            height: 200,
          ),
        ),
        Positioned(
          top: 320,
          left: 32,
          child: Column(
            children: [
              SizedBox(
                width: 280,
                child: Text(
                  'Você escolhe e pede sua comida pelo app',
                  style: TextStyle(
                    color: Colors.orange[200],
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: size.width - 80,
                child: Text(
                  'De uma maneira fácil e gostosa você decide o que quer comer e faz seu pedido sem burocracia.\nNão precisa pagar pelo app, nós levamos a maquininha até você.',
                  style: TextStyle(
                    color: Colors.teal[50],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
