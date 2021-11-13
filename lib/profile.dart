
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
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Icon(Icons.check_circle_outline),
          )
        ],
      )
    );
    Widget information = Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.cake),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('09 tháng 09 năm 1899',style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.mail),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('manchesterunited@gmail.com',style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.home_filled),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('Sống tại Manchester',style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          )
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2d88ff),
        title: Text('FAKE FACEBOOK'),
      ),
      body: Center(
        child: Column(
          
          children: [
            imgSection,name,information,
          ],
        ),
      ),
    );
  }
}