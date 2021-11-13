import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:appfb/homepage.dart';
import 'package:appfb/profile.dart';

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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xff242526),
          appBar: AppBar(
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
              // Icon(Icons.home),
              HomePage(),
              Icon(Icons.assignment_ind_rounded),
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
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>ProfilePage())
                    );
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
                  onTap: (){
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
