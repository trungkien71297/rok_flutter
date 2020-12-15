import 'package:flutter/material.dart';

class RarityItem extends StatelessWidget {
  RarityItem({this.name, this.imageUrl, this.color});
  final String name;
  final String imageUrl;
  final String color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 238,
      height: 160,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 238,
              height: 114,
              child: (name != null && name != "")
                  ? Text(name)
                  : Placeholder(
                      color: Colors.black45,
                      strokeWidth: 5,
                    ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 160,
              width: 86,
              child: (imageUrl != null && imageUrl != "")
                  ? Image.network(imageUrl)
                  : Placeholder(
                      color: Colors.black45,
                      strokeWidth: 5,
                    ),
            ),
          )
        ],
      ),
    );
  }
}
