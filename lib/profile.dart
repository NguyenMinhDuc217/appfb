
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override
  State<ProfilePage> createState()=>_ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context){
    Widget imgSection = Container(
      padding: EdgeInsets.all(10),
      child: CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage('images/logo/logoMU.jpg'),
      )
    );
    Widget name = Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: Colors.grey,
              width: 2,
          )
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Manchester United',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Icon(Icons.check_circle_outline,color: Colors.white),
          )
        ],
      )
    );
    Widget information = Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.cake,color: Colors.white),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('09 tháng 09 năm 1899',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.mail,color: Colors.white),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('manchesterunited@gmail.com',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.home_filled,color: Colors.white),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('Sống tại Manchester',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
              )
            ],
          )
        ],
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        backgroundColor: Color(0xff242526),     
        appBar: AppBar(
          backgroundColor: Color(0xff242526),          
          actions: <Widget>[
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              icon: Icon(Icons.arrow_back, color: Colors.white,),
            )
          ],
          title: Text('Profile',style: TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: Column(         
            children: [
              imgSection,name,information,
            ],
          ),
        ),
      ),
    );
  }
}