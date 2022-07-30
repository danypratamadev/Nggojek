import 'package:flutter/material.dart';
import 'package:nggojek/models/info.dart';
import 'package:nggojek/models/menu.dart';
import 'package:nggojek/widgets/goclubcard.dart';
import 'package:nggojek/widgets/gopaycard.dart';
import 'package:nggojek/widgets/infocard.dart';
import 'package:nggojek/widgets/itemmenu.dart';
import 'package:nggojek/widgets/searchheader.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var mediaApp = MediaQuery.of(context);
    var themeApp = Theme.of(context);

    List<MenuModel> listMenu = [
      MenuModel(
        img: Container(
          width: 52.0,
          height: 52.0,
          decoration: BoxDecoration(
            color: Color(0xFF00AA12),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.motorcycle_sharp,
            color: Colors.white,
            size: 36.0
          ),
        ), 
        caption: 'GoRide',
        textStyle: themeApp.textTheme.bodyText1!
      ),
      MenuModel(
        img: Container(
          width: 52.0,
          height: 52.0,
          decoration: BoxDecoration(
            color: Color(0xFF00AA12),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.directions_car_rounded,
            color: Colors.white,
            size: 36.0
          ),
        ), 
        caption: 'GoCar',
        textStyle: themeApp.textTheme.bodyText1!
      ),
      MenuModel(
        img: Container(
          width: 52.0,
          height: 52.0,
          decoration: BoxDecoration(
            color: Color(0xFFEE2737),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.local_dining_rounded,
            color: Colors.white,
            size: 36.0,
          ),
        ), 
        caption: 'GoFood',
        textStyle: themeApp.textTheme.bodyText1!
      ),
      MenuModel(
        img: Container(
          width: 52.0,
          height: 52.0,
          decoration: BoxDecoration(
            color: Color(0xFF01A913),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.local_shipping_rounded,
            color: Colors.white,
            size: 36.0,
          ),
        ), 
        caption: 'GoSend',
        textStyle: themeApp.textTheme.bodyText1!
      ),
      MenuModel(
        img: Container(
          width: 52.0,
          height: 52.0,
          decoration: BoxDecoration(
            color: Color(0xFFEE2736),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.local_mall_rounded,
            color: Colors.white,
            size: 36.0,
          ),
        ), 
        caption: 'GoMart',
        textStyle: themeApp.textTheme.bodyText1!
      ),
      MenuModel(
        img: Container(
          width: 52.0,
          height: 52.0,
          decoration: BoxDecoration(
            color: Color(0xFF00AED6),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.book_online_rounded,
            color: Colors.white,
            size: 36.0,
          ),
        ), 
        caption: 'GoPulsa',
        textStyle: themeApp.textTheme.bodyText1!
      ),
      MenuModel(
        img: Container(
          width: 52.0,
          height: 52.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.star_rounded,
            color: Color(0xFF87027B),
            size: 52.0,
          ),
        ), 
        caption: 'GoClub',
        textStyle: themeApp.textTheme.bodyText1!
      ),
      MenuModel(
        img: Container(
          width: 52.0,
          height: 52.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.widgets_rounded,
            color: Color(0xFF494A4A),
            size: 36.0,
          ),
        ), 
        caption: 'More',
        textStyle: themeApp.textTheme.bodyText1!
      ),
    ];

    List<InfoModel> listInfo = [
      InfoModel(
        img: AssetImage(
          'assets/img/goto.jpeg'
        ),
        title: 'Link your Gojek & Tokopedia account!',
        describe: 'Get 20% Gopay cashback coupon, one time free level-up on GoClub, and more rewards. Click to link your account'
      ),
      InfoModel(
        img: AssetImage(
          'assets/img/gosend.jpeg'
        ),
        title: 'Super fast delivery service!',
        describe: "Sending item faster and affordable with GoSend Instant. Get up to Rp150.000 discount with 'HEMAT' code. Try it now"
      ),
      InfoModel(
        img: AssetImage(
          'assets/img/gopaylater.png'
        ),
        title: 'Easy to control!',
        describe: 'Easier manage your monthly expenses with picking your own GoPayLater limit! Try it now'
      ),
    ];
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SearchHeaderWidget(),
              SizedBox(height: 20.0,),
              GopayCardWidget(),
              SizedBox(height: 16.0,),
              GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 35.0,
                shrinkWrap: true,
                childAspectRatio: 6/7,
                physics: NeverScrollableScrollPhysics(),
                children: listMenu.map((menu){
                  return ItemMenuWidget(
                    img: menu.img,
                    caption: menu.caption,
                    textStyle: menu.textStyle,
                  );
                }).toList(),
              ),
              SizedBox(height: 35.0,),
              GoclubCardWidget(),
              SizedBox(height: 35.0,),
              Column(
                children: listInfo.map((info) => InfoCard(info: info,)).toList(),
              ),
              SizedBox(height: mediaApp.size.height * 0.1),
            ],
          ),
        ),
      )
    );

  }

}