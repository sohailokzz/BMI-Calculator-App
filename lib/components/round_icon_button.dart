import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPress});

  final IconData icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 45.0, height: 45.0),
      onPressed: onPress,
      elevation: 6.0,
      child: Icon(icon),
    );
  }
}
