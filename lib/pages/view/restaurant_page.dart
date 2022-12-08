import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 120,
          left: 52,
          child: Lottie.network(
            'https://assets2.lottiefiles.com/packages/lf20_ih97qX.json',
            width: 250,
          ),
        ),
        Positioned(
          top: 380,
          left: 32,
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: Text(
                  'Ao final do preparo, já estamos prontos para receber sua encomenda.',
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
                  'É tudo muito rápido porque queremos que essa experiência seja mágica.',
                  style: TextStyle(
                    color: Colors.teal[50],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
