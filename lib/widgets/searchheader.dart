import 'package:flutter/material.dart';
import 'package:nggojek/pages/profil.dart';

class SearchHeaderWidget extends StatelessWidget {
  const SearchHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var themeApp = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40.0,
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black.withOpacity(0.05),
              border: Border.all(
                color: themeApp.dividerColor,
                width: 0.5,
              )
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search_rounded,
                  size: 26.0,
                ),
                SizedBox(width: 10.0,),
                Expanded(
                  child: Text(
                    'Find services, food, or place',
                    style: themeApp.textTheme.caption?.copyWith(
                      fontSize: themeApp.textTheme.subtitle1!.fontSize,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 16.0,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage()));
          },
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF00880C),
            ),
            child: Center(
              child: Icon(
                Icons.person_rounded,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }

}