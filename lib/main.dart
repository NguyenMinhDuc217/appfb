import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:appfb/friend-page.dart';
import 'package:appfb/login-page.dart';
import 'package:appfb/homepage.dart';
import 'package:appfb/profile.dart';

void main() {
  runApp(MaterialApp(
    title: 'Fake Facebook',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        fontFamily: 'Roboto',
      ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainSignIn();
  }
}

class MyHomePage extends StatefulWidget {
  final String username;
  const MyHomePage({Key? key, required this.username}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> nameList = [
    'Hạ Vi',
    'Kiều Thảo',
    'Lâm Thư',
    'Yến Thanh',
    'Tảo Linh',
    'Sương Xa',
    'Ngắ Nóc',
    'Sưu Ca',
    'Gao Đỏ',
    'Anonymous',
    'Inu-sama'
  ];
  var rand = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Facebook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor:Color(0xff18191a),
          appBar: AppBar(
            backgroundColor:Color(0xff242526),
            title: const Text('FAKE FACEBOOK'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_sharp)),
                Tab(icon: Icon(Icons.people_sharp)),
                Tab(icon: Icon(Icons.notifications)),
              ],   
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              FriendPage(
                friend: List<Friend>.generate(
                  11,
                  (i) => Friend(
                      nameList[i], rand.nextInt(10).toString(), 'Huỷ kết bạn'),
                ),
              ),
              Icon(Icons.notifications),
            ],
          ),
          drawer: Drawer(
              child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('images/avatar/LogoPD.jpg'),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {},
                          )),
                      Container(margin:EdgeInsets.only(left: 20),child:Text(widget.username,style: TextStyle(fontSize:20),)),
                    ],
                  )),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.person),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text('Profile')),
                  ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>ProfilePage())
                    );
                  },
                ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.security),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text('Security')),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.logout),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text('Logout'))
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          )),
        ),
      ),
    );
  }
}
