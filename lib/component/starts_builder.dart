import 'package:flutter/material.dart';
import 'package:reemp_user_app/values/colors.dart';

class StarsBuilder extends StatelessWidget {
  final double stars;
  final MainAxisAlignment alignment;
  final double starSize;
  final Color starColor;
  final bool indicator;
  final Function(int) onSelect;

  const StarsBuilder(
    this.stars, {
    this.alignment = MainAxisAlignment.end,
    this.starSize = 14,
    this.starColor,
    this.indicator = true,
    this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: <Widget>[
        for (int i = 0; i < stars.floor(); i++)
          GestureDetector(
            onTap: onSelect != null ? () => onSelect(i + 1) : null,
            child: Icon(
              Icons.star,
              color: starColor ?? ReempColors.lightGrey,
              size: starSize,
            ),
          ),
        for (int i = 0; i < 5 - stars.floor(); i++)
          GestureDetector(
            onTap: onSelect != null ? () => onSelect(i + stars.floor() + 1) : null,
            child: Icon(
              Icons.star_border,
              color: starColor ?? ReempColors.lightGrey,
              size: starSize,
            ),
          ),
        if (indicator) SizedBox(width: 4),
        if (indicator)
          Text(
            stars.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
      ],
    );
  }
}
