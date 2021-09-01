import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // as the widget is STATELESS, it can't be updated
  final Color colour;
  final Widget cardChild;
  final VoidCallback? onPress;

  ReusableCard(this.colour, this.cardChild, this.onPress);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        child: this.cardChild,
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 7.0, bottom: 7.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: this.colour,
        ),
      ),
    );
  }
}
