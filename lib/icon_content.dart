import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontSize: 18.0,
);

class IconContent extends StatelessWidget {
  IconContent({this.label, this.icon});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        SizedBox(
          height: 18.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
