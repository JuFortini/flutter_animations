import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'My Delivery Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.red[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 120, bottom: 24),
              child: Text(
                'Animação',
                style: TextStyle(
                  color: Colors.red[100],
                ),
              ),
            ),
            Text(
              "Marcos está a caminho",
              style: TextStyle(
                fontSize: 32,
                letterSpacing: -1.2,
                fontWeight: FontWeight.w600,
                color: Colors.red[50],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                "Seu pedido deve chegar em 10 minutos",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red[100],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
