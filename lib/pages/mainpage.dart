import 'package:flutter/material.dart';
import 'package:nggojek/pages/chats.dart';
import 'package:nggojek/pages/home.dart';
import 'package:nggojek/pages/order.dart';
import 'package:nggojek/pages/promo.dart';

class MainPage extends StatefulWidget  {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State with SingleTickerProviderStateMixin {

  late TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {

    var themeApp = Theme.of(context);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Color(0xFF00880C),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 5.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 60.0,
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF047210),
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: TabBar(
                        controller: tabcontroller,
                        labelStyle: themeApp.textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white
                        ),
                        labelColor: Color(0xFF00880C),
                        unselectedLabelColor: Colors.white,
                        tabs: const [
                          Tab(
                            text: 'Home'
                          ),
                          Tab(
                            text: 'Promo'
                          ),
                          Tab(
                            text: 'Orders'
                          ),
                          Tab(
                            text: 'Chats'
                          ),
                        ]
                      ),
                    ),
                  ),
                ],
              )
            )
          ),
          Expanded(
            flex: 5,
            child: TabBarView(
              controller: tabcontroller,
              children: const [
                HomePage(),
                PromoPage(),
                OrdersPage(),
                ChatsPage(),
              ]
            ),
          ),
        ],
      ),
    );
  }

}