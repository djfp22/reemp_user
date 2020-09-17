import 'package:flutter/material.dart';
import 'package:reemp_user_app/component/container/outline_container.dart';
import 'package:reemp_user_app/values/colors.dart';

class NeonChip extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final double textSize;
  final Color bordercolor;

  const NeonChip({
    @required this.text,
    this.onTap, this.textSize = 12,
    this.bordercolor=ReempColors.neonBlue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: OutlineContainer(
        color:ReempColors.reempDark,
        child: Text(
          text,
          style: TextStyle(
            color:ReempColors.lightGrey,
            fontSize: textSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        margin: EdgeInsets.symmetric(vertical: 2),
        rounded: true,
        radius: 8,
        borderColor: bordercolor,
      ),
    );
  }
}
