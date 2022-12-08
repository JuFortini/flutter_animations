import 'package:flutter/widgets.dart';

class VerticalDelegate extends FlowDelegate {
  final AnimationController animationController;
  VerticalDelegate({required this.animationController})
      : super(repaint: animationController);

  @override
  void paintChildren(FlowPaintingContext context) {
    const buttonSize = 56;
    const buttonRadius = buttonSize / 2;
    const buttonMargin = 10;

    final positionX = context.size.width - 1.2 * buttonSize;
    final positionY = context.size.height - 1.2 * buttonSize;

    final lastIconIndex = context.childCount - 1;

    for (int iconIndex = lastIconIndex; iconIndex >= 0; iconIndex--) {
      final y = positionY -
          ((buttonSize + buttonMargin) * iconIndex * animationController.value);
      final size = (iconIndex != 0) ? animationController.value : 1.0;

      context.paintChild(
        iconIndex,
        transform: Matrix4.translationValues(positionX, y, 0)
          ..translate(buttonRadius, buttonRadius)
          ..scale(size)
          ..translate(-buttonRadius, -buttonRadius),
      );
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}
