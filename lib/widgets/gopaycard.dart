import 'package:flutter/material.dart';
import 'package:nggojek/widgets/itemmenu.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GopayCardWidget extends StatelessWidget {

  final pageViewController = PageController(viewportFraction: 0.75, initialPage: 1,);

  GopayCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var themeApp = Theme.of(context);

    int currentIndex = 1;

    List listGopayWidget = [
      Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    color: Color(0xFF00AED6),
                    size: 16.0,
                  ),
                  SizedBox(width: 5.0,),
                  Row(
                    children: [
                      Text(
                        'gopay',
                        style: themeApp.textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 5.0,),
                      Text(
                        'coins'
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 5.0,),
              Text(
                '300',
                style: themeApp.textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: themeApp.textTheme.subtitle1!.fontSize! + 2.0
                ),
              ),
              SizedBox(height: 5.0,),
              Text(
                'Coming soon!',
                style: themeApp.textTheme.caption?.copyWith(
                  color: Color(0xFF00AA12),
                  fontWeight: FontWeight.w800
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    color: Color(0xFF00AED6),
                    size: 16.0,
                  ),
                  SizedBox(width: 5.0,),
                  Text(
                    'gopaylater',
                    style: themeApp.textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.0,),
              Text(
                'Rp300.000',
                style: themeApp.textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: themeApp.textTheme.subtitle1!.fontSize! + 2.0
                ),
              ),
              SizedBox(height: 5.0,),
              Text(
                "Let's order now!",
                style: themeApp.textTheme.caption?.copyWith(
                  color: Color(0xFF00AA12),
                  fontWeight: FontWeight.w800
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    color: Color(0xFF00AED6),
                    size: 16.0,
                  ),
                  SizedBox(width: 5.0,),
                  Text(
                    'gopay',
                    style: themeApp.textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.0,),
              Text(
                'Rp5.014',
                style: themeApp.textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: themeApp.textTheme.subtitle1!.fontSize! + 2.0
                ),
              ),
              SizedBox(height: 5.0,),
              Text(
                'Tap to top up',
                style: themeApp.textTheme.caption?.copyWith(
                  color: Color(0xFF00AA12),
                  fontWeight: FontWeight.w800
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Color(0xFF0081A0)
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: AnimatedSmoothIndicator(  
              activeIndex: currentIndex,  
              count: listGopayWidget.length,
              axisDirection: Axis.vertical,
              effect: ExpandingDotsEffect(
                dotColor: Colors.white54,
                activeDotColor: Colors.white,
                dotWidth: 8.0,
                dotHeight: 5.0,
                spacing: 5.0
              ),
              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 300),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 130.0,
              child: Expanded(
                child: PageView.builder(
                  controller: pageViewController,
                  itemCount: listGopayWidget.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  pageSnapping: true,
                  allowImplicitScrolling: true,
                  itemBuilder: (BuildContext context, int index) {
                    return listGopayWidget[index];
                  },
                  onPageChanged: (int index) {
                    currentIndex = index;
                  },
                ),
              ),
            ),
          ),
          SizedBox(width: 20.0,),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemMenuWidget(
                  img: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Icon(
                      Icons.arrow_upward_rounded,
                      color: Color(0xFF0081A0),
                      size: 22.0,
                    ),
                  ), 
                  caption: 'Pay',
                  textStyle: themeApp.textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                  ),
                ),
                ItemMenuWidget(
                  img: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Icon(
                      Icons.add_rounded,
                      color: Color(0xFF0081A0),
                      size: 22.0,
                    ),
                  ), 
                  caption: 'Top Up',
                  textStyle: themeApp.textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                  ),
                ),
                ItemMenuWidget(
                  img: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Icon(
                      Icons.explore_outlined,
                      color: Color(0xFF0081A0),
                      size: 22.0,
                    ),
                  ), 
                  caption: 'Explore',
                  textStyle: themeApp.textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                  ),
                )
              ],
            )
          ),
          SizedBox(width: 20.0,),
        ],
      ),
    );
  }
}