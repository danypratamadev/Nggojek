import 'package:flutter/material.dart';
import 'package:nggojek/models/product.dart';
import 'package:nggojek/widgets/goclubcard.dart';
import 'package:nggojek/widgets/productcard.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var mediaApp = MediaQuery.of(context);
    var themeApp = Theme.of(context);

    int i = -1;
    int j = -1;
    int k = -1;

    List<String> listPromoMenu = [
      'All',
      'GoFood',
      'GoMart',
      'GoPay',
      'GoPlay',
      'GoSend',
      'GoTix'
    ];

    List<ProductModel> listProduct1 = [
      ProductModel(
        img: AssetImage(
          'assets/img/goto.jpeg'
        ),
        title: 'Salad Nyoo (PELOPOR #1 Salad Buah Indonesia), Jalan Magelang',
        discount: 35,
        distance: 1.69,
        duration: 19,
        rating: 4.5,
        ratingtext: '2k+ ratings'
      ),
      ProductModel(
        img: AssetImage(
          'assets/img/goto.jpeg'
        ),
        title: 'Kulit Emak (Spesial Nasi Kulit Ayam), Pandega Marta',
        discount: 35,
        distance: 2.65,
        duration: 25,
        rating: 4.6,
        ratingtext: '3k+ ratings'
      ),
      ProductModel(
        img: AssetImage(
          'assets/img/goto.jpeg'
        ),
        title: 'Masakan Padang Duta Minang, Jl. Magelang',
        discount: 35,
        distance: 2.53,
        duration: 19,
        rating: 4.7,
        ratingtext: '9k+ ratings'
      ),
    ];
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GoclubCardWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12.0),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '12',
                                  style: themeApp.textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.chevron_right_rounded
                              )
                            ],
                          ),
                          SizedBox(height: 8.0,),
                          Text(
                            'Vounchers'
                          ),
                          SizedBox(height: 8.0,),
                          Text(
                            '10 Expiring Soon',
                            style: themeApp.textTheme.caption
                          ),
                          SizedBox(height: 5.0,),
                          Container(
                            width: double.infinity,
                            height: 5.0,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(3.0)
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                  SizedBox(width: 8.0,),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12.0),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '0',
                                  style: themeApp.textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.chevron_right_rounded
                              )
                            ],
                          ),
                          SizedBox(height: 8.0,),
                          Text(
                            'Subscriptions'
                          ),
                          SizedBox(height: 8.0,),
                          Text(
                            'Active now',
                            style: themeApp.textTheme.caption
                          ),
                          SizedBox(height: 5.0,),
                          Container(
                            width: double.infinity,
                            height: 5.0,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(3.0)
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                  SizedBox(width: 8.0,),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12.0),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '0',
                                  style: themeApp.textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.chevron_right_rounded
                              )
                            ],
                          ),
                          SizedBox(height: 8.0,),
                          Text(
                            'Missions'
                          ),
                          SizedBox(height: 8.0,),
                          Text(
                            'In Progress',
                            style: themeApp.textTheme.caption
                          ),
                          SizedBox(height: 5.0,),
                          Container(
                            width: double.infinity,
                            height: 5.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(3.0)
                            ),
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  color: themeApp.dividerColor,
                  width: 0.5,
                )
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.verified_rounded,
                    color: Colors.orange.shade700,
                  ),
                  SizedBox(width: 16.0,),
                  Expanded(
                    child: Text(
                      'Got a promo code? Enter here'
                    ),
                  ),
                  SizedBox(width: 16.0,),
                  Icon(
                    Icons.chevron_right
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: Text(
                "Promos you can't resist",
                style: themeApp.textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listPromoMenu.map((promo){
                  i++;
                  return Padding(
                    padding: EdgeInsets.only(left: 16.0, right: i == listPromoMenu.length - 1 ? 16.0 : 0.0),
                    child: MaterialButton(
                      onPressed: (){}, 
                      child: Text(
                        promo
                      ),
                      color: i == 0 ? Color(0xFF00880C) : Colors.white,
                      textColor: i == 0 ? Colors.white : Colors.black26,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                          color: themeApp.dividerColor,
                          width: 0.7
                        )
                      ),
                      elevation: 0.0,
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0, bottom: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promos on your foodprints',
                    style: themeApp.textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: themeApp.textTheme.subtitle1!.fontSize! + 2.0
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    'Reorder with a side of discounts',
                    style: themeApp.textTheme.caption?.copyWith(
                      color: themeApp.textTheme.bodyText1?.color,
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listProduct1.map((product){
                  j++;
                  return Padding(
                    padding: EdgeInsets.only(left: j == 0 ? 16.0 : 0.0, right: 16.0),
                    child: ProductCardWidget(product: product)
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0, bottom: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Steal deals on your radar',
                      style: themeApp.textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: themeApp.textTheme.subtitle1!.fontSize! + 2.0
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){}, 
                    child: Text(
                      'See all'
                    ),
                    color: Color(0xFF00880C).withOpacity(0.1),
                    textColor: Color(0xFF00880C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 0.0,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listProduct1.map((product){
                  k++;
                  return Padding(
                    padding: EdgeInsets.only(left: k == 0 ? 16.0 : 0.0, right: 16.0),
                    child: ProductCardWidget(product: product)
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: mediaApp.size.height * 0.1,)
          ],
        ),
      ),
    );

  }

}