import 'package:flutter/material.dart';
import 'package:reemp_user_app/component/container/outline_container.dart';
import 'package:reemp_user_app/values/colors.dart';
import 'package:reemp_user_app/component/decoration/outter_box_shadow.dart';

class NeonOutlineContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final double radius;
  final double blurRadius;
  final BoxConstraints constrains;
  final Color borderColor;
  NeonOutlineContainer({
    @required this.child,
    this.padding = const EdgeInsets.all(16),
    this.radius,
    this.blurRadius = 8,
    this.margin,
    this.constrains,
    this.borderColor = ReempColors.neonBlue,
  });

  @override
  Widget build(BuildContext context) {
    return OutlineContainer(
      shadow: [OuterBoxShadow(color: ReempColors.neonBlue, blurRadius: blurRadius)],
      child: child,
      padding: padding,
      margin: margin,
      rounded: true,
      radius: radius,
      constrains: constrains,
      borderColor: borderColor,
    );
  }
}
