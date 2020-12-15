import 'package:flutter/material.dart';
import 'package:rok/constant.dart';
import 'package:rok/widget/commanders/rarity_item.dart';

class Commanders extends StatelessWidget {
  static const ROUTE_NAME = "Commanders";
  final String text = "COMMANDERS";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: CONSTANT.FONT,
                fontSize: 100,
                color: Color.fromRGBO(208, 214, 206, 100)),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RarityItem(name: "", imageUrl: ""),
            RarityItem(name: "", imageUrl: ""),
            RarityItem(name: "", imageUrl: "")
          ],
        )
      ],
    );
  }
}
