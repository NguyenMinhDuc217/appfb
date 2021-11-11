import 'package:flutter/material.dart';
import 'dart:math';
import 'package:appfb/friend-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

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
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('FAKE FACEBOOK'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_sharp)),
                Tab(icon: Icon(Icons.people_sharp)),
                Tab(icon: Icon(Icons.notifications)),
                // Tab(icon: Icon(Icons.menu)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.home),
              //Icon(Icons.assignment_ind_rounded),
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
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('MENU'),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.person),
                    Text('Profile'),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.security),
                    Text('Security'),
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
                    Text('Logout'),
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