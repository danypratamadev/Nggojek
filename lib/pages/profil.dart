import 'package:flutter/material.dart';
import 'package:nggojek/models/setting.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var mediaApp = MediaQuery.of(context);
    var themeApp = Theme.of(context);

    List<SettingModel> listAccountSetting = [
      SettingModel(
        action: 10,
        img: Icon(
          Icons.assignment_rounded,
          color: Colors.black,
        ),
        title: 'My Orders',
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'See ongoing & history',
              style: themeApp.textTheme.caption,
            ),
            SizedBox(width: 3.0,),
            Icon(
              Icons.chevron_right_rounded
            )
          ],
        )
      ),
      SettingModel(
        action: 20,
        img: Icon(
          Icons.star_rounded,
          color: Colors.black,
        ),
        title: 'GoClub',
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '1787 XP',
              style: themeApp.textTheme.caption,
            ),
            SizedBox(width: 3.0,),
            Icon(
              Icons.chevron_right_rounded
            )
          ],
        )
      ),
      SettingModel(
        action: 30,
        img: Icon(
          Icons.local_activity_rounded,
          color: Colors.black,
        ),
        title: 'My Voucher',
        trailing: Icon(
          Icons.chevron_right_rounded
        )
      ),
      SettingModel(
        action: 40,
        img: Icon(
          Icons.verified_rounded,
          color: Colors.black,
        ),
        title: 'Enter Promo Code',
        trailing: Icon(
          Icons.chevron_right_rounded
        )
      ),
      SettingModel(
        action: 50,
        img: Icon(
          Icons.payment_rounded,
          color: Colors.black,
        ),
        title: 'Payment Methods',
        trailing: Icon(
          Icons.chevron_right_rounded
        )
      ),
      SettingModel(
        action: 60,
        img: Icon(
          Icons.help_rounded,
          color: Colors.black,
        ),
        title: 'Help & My Tickets',
        trailing: Icon(
          Icons.chevron_right_rounded
        )
      ),
      SettingModel(
        action: 70,
        img: Icon(
          Icons.language_rounded,
          color: Colors.black,
        ),
        title: 'Change language',
        trailing: Icon(
          Icons.chevron_right_rounded
        )
      ),
      SettingModel(
        action: 80,
        img: Icon(
          Icons.bookmark_rounded,
          color: Colors.black,
        ),
        title: 'Saved addresses',
        trailing: Icon(
          Icons.chevron_right_rounded
        )
      ),
      SettingModel(
        action: 90,
        img: Icon(
          Icons.group_rounded,
          color: Colors.black,
        ),
        title: 'Invite Friends',
        trailing: Icon(
          Icons.chevron_right_rounded
        )
      ),
      SettingModel(
        action: 100,
        img: Icon(
          Icons.fingerprint_rounded,
          color: Colors.black,
        ),
        title: 'Quick login',
        trailing: Switch(
          value: true, 
          onChanged: (value){}
        )
      ),
    ];

    List<SettingModel> listGeneralSetting = [
      SettingModel(
        action: 10,
        img: Icon(
          Icons.shield,
          color: Colors.black,
        ),
        title: 'Privacy Policy',
        trailing: Icon(
          Icons.chevron_right_rounded
        )
      ),
      SettingModel(
        action: 20,
        img: Icon(
          Icons.library_books_rounded,
          color: Colors.black,
        ),
        title: 'Terms of Services',
        trailing: Icon(
          Icons.chevron_right_rounded
        )
      ),
      SettingModel(
        action: 30,
        img: Icon(
          Icons.map_sharp,
          color: Colors.black,
        ),
        title: 'Data attribution',
        trailing: Icon(
          Icons.chevron_right_rounded
        )
      ),
      SettingModel(
        action: 40,
        img: Icon(
          Icons.star_rounded,
          color: Colors.black,
        ),
        title: 'Rate Gojek App',
        trailing: Text(
          '4.31.0',
          style: themeApp.textTheme.caption,
        )
      ),
    ];
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ), 
          onPressed: (){
            Navigator.pop(context);
          }
        ),
        title: Text(
          'My Profile',
          style: themeApp.textTheme.headline6?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF00880C),
                    ),
                    child: Center(
                      child: Text(
                        'HR',
                        style: themeApp.textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hayawan Renando Lesmana',
                          style: themeApp.textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0,),
                        Text(
                          '+6285649094517'
                        ),
                        SizedBox(height: 8.0,),
                        Text(
                          'hayawan@gmail.com'
                        ),
                        SizedBox(height: 12.0,),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.black
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipOval(
                                child: Container(
                                  color: Colors.blue.shade100,
                                  child: Icon(
                                    Icons.star_rounded,
                                    color: Color(0xFF02AFD9),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.0,),
                              Text(
                                'Juragan',
                                style: themeApp.textTheme.bodyText1?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10.0,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0,),
                  Icon(
                    Icons.edit_rounded,
                    size: 32.0,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0, bottom: 16.0),
              child: Text(
                'Account'
              ),
            ),
            Column(
              children: listAccountSetting.map((setting) => Column(
                children: [
                  ListTile(
                    leading: setting.img,
                    title: Text(
                      setting.title,
                      style: themeApp.textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: setting.trailing,
                  ),
                  Divider(height: 0.0, thickness: 0.5, indent: 70.0,)
                ],
              )).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'General'
              ),
            ),
            Column(
              children: listGeneralSetting.map((setting) => Column(
                children: [
                  ListTile(
                    leading: setting.img,
                    title: Text(
                      setting.title,
                      style: themeApp.textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: setting.trailing,
                  ),
                  Divider(height: 0.0, thickness: 0.5, indent: 70.0,)
                ],
              )).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                height: 45.0,
                child: MaterialButton(
                  onPressed: (){},
                  child: Text(
                    'Log out',
                    style: themeApp.textTheme.button?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade700,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(
                      color: Colors.red.shade700,
                      width: 0.5
                    )
                  ),
                  elevation: 0.0,
                ),
              ),
            ),
            SizedBox(height: mediaApp.size.height * 0.1,)
          ],
        ),
      ),
    );

  }

}