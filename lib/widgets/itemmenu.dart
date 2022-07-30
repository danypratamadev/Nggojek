import 'package:flutter/material.dart';

class ItemMenuWidget extends StatelessWidget {

  final dynamic img;
  final String caption;
  final TextStyle textStyle;

  const ItemMenuWidget({super.key, required this.img, required this.caption, required this.textStyle});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        img,
        SizedBox(height: 10.0,),
        Text(
          caption,
          style: textStyle,
        )
      ],
    );

  }

}