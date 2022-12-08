import 'package:flutter/material.dart';

import '../delegates/vertical_delegate.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({super.key});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton>
    with SingleTickerProviderStateMixin {
  final actionButtonColor = Colors.orange.shade100;

  late AnimationController animationController;
  final menuIsOpen = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  toggleMenu() {
    menuIsOpen.value
        ? animationController.reverse()
        : animationController.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      clipBehavior: Clip.none,
      delegate: VerticalDelegate(animationController: animationController),
      children: [
        FloatingActionButton(
          onPressed: () {
            toggleMenu();
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            color: Colors.grey[800],
            progress: animationController,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: actionButtonColor,
          child: Icon(
            Icons.camera_alt_outlined,
            color: Colors.grey[800],
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: actionButtonColor,
          child: Icon(
            Icons.link,
            color: Colors.grey[800],
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: actionButtonColor,
          child: Icon(
            Icons.attach_file,
            color: Colors.grey[800],
          ),
        )
      ],
    );
  }
}
