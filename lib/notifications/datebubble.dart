import 'package:flutter/material.dart';
import 'package:reemp_user_app/values/colors.dart';

class DateBubble extends StatelessWidget {
  final bool active;
  final String date;
  final String hour;
  final String weekDay;
  final Color color;

  const DateBubble({
    this.active = true,
    @required this.date,
    @required this.hour, this.weekDay,
    this.color= ReempColors.neonBlue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: active ? color : color.withAlpha(60),
          style: BorderStyle.solid,
          width: 3,
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            date,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            hour,
            style: TextStyle(color: ReempColors.lightGrey, fontSize: 28, fontWeight: FontWeight.w700, letterSpacing: 4),
          ),
          Text(
            weekDay,
            style: TextStyle(
              color: ReempColors.lightGrey,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
