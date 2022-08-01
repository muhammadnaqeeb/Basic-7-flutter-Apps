import 'package:flutter/material.dart';

// Reusing card
// Immuateable
class ReusableCard extends StatelessWidget {
  // Property which we want to change
  final Color? colour;
  //custom child property
  final Widget? cardChild; // ? nullable

  //Function
  final void Function()? onPress;
  // constructor
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
