import 'package:flutter/material.dart';

class GoclubCardWidget extends StatelessWidget {
  const GoclubCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var themeApp = Theme.of(context);

    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0, bottom: 14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.black.withOpacity(0.015),
        border: Border.all(
          color: themeApp.dividerColor,
          width: 0.5
        )
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: Color(0xFF87027B),
                      size: 26.0,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'goclub',
                      style: themeApp.textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(height: 3.0,),
                Text(
                  'Our new loyalty program'
                )
              ],
            ),
          ),
          MaterialButton(
            onPressed: (){}, 
            child: Text(
              'Join for free',
              style: themeApp.textTheme.button?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )
            ),
            color: Color(0xFF00880C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 0.0,
          )
        ],
      ),
    );
  }
  
}