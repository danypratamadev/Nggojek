import 'package:flutter/material.dart';
import 'package:nggojek/models/info.dart';

class InfoCard extends StatelessWidget {

  final InfoModel info;

  const InfoCard({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    
    var themeApp = Theme.of(context);

    return Container(
      margin: EdgeInsets.only(bottom: 35.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: themeApp.dividerColor,
          width: 0.5
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12.withOpacity(0.1),
            blurRadius: 3.0
          )
        ]
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
                image: DecorationImage(
                  image: info.img,
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info.title,
                  style: themeApp.textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 3.0,),
                Text(
                  info.describe,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}