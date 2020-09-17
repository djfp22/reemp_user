import 'package:flutter/material.dart';
import 'package:reemp_user_app/values/colors.dart';

class OutlineContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final Color borderColor;
  final List<BoxShadow> shadow;
  final bool rounded;
  final double radius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final BoxConstraints constrains;

  OutlineContainer({
    @required this.child,
    this.color = ReempColors.reempDark,
    this.borderColor = Colors.grey,
    this.shadow,
    this.rounded = false,
    this.padding,
    this.radius,
    this.margin,
    this.constrains,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      constraints: constrains,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(rounded ? radius ?? 15 : 5),
        border: Border.all(color: borderColor, style: BorderStyle.solid, width: 1),
        boxShadow: shadow,
        color: color,
      ),
      clipBehavior: Clip.antiAlias, // TODO check if nothing broke
      child: child,
    );
  }
}
