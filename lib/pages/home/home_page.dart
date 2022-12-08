import 'package:flutter/material.dart';
import 'package:flutter_animation/pages/view/delivery_route_page.dart';
import 'package:flutter_animation/pages/view/final_deliver_page.dart';
import 'package:flutter_animation/pages/view/order_page.dart';
import 'package:flutter_animation/pages/view/presentation_page.dart';
import 'package:flutter_animation/pages/view/restaurant_page.dart';

import '../../widgets/menu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);
  }

  _toNextPage() {
    _pageController.animateToPage(
      _pageIndex + 1,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInExpo,
    );
  }

  _toPreviousPage() {
    _pageController.animateToPage(
      _pageIndex - 1,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInExpo,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.purpleAccent,
      floatingActionButton: _pageIndex == 4 ? const MenuButton() : null,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.deepOrangeAccent, Colors.deepPurple],
              ),
            ),
          ),
          PageView(
            allowImplicitScrolling: false,
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              _pageIndex = index;
              setState(() {});
            },
            children: const [
              PresentationPage(),
              OrderPage(),
              DeliveryRoutePage(),
              RestaurantPage(),
              FinalDeliver(),
            ],
          ),
          if (_pageIndex >= 0 && _pageIndex < 4)
            Positioned(
              bottom: 60,
              right: 32,
              child: Column(children: [
                IconButton(
                  onPressed: () {
                    _toPreviousPage();
                  },
                  icon: const Icon(Icons.arrow_upward),
                  color: Colors.white.withOpacity(0.7),
                ),
                IconButton(
                  onPressed: () {
                    _toNextPage();
                  },
                  icon: const Icon(Icons.arrow_downward),
                  color: Colors.white.withOpacity(0.7),
                )
              ]),
            )
        ],
      ),
    );
  }
}
