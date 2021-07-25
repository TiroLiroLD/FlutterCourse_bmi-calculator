import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({this.genderIcon, this.label});

  final IconData genderIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
