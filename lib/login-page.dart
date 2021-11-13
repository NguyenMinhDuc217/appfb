import 'package:flutter/material.dart';
import 'package:appfb/main.dart';
class MainSignIn extends StatefulWidget {
  @override
  MainSignInState createState() => MainSignInState();
}

class MainSignInState extends State<MainSignIn> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget imgSection = Image.asset(
      'images/logo/logoFace.png',
      alignment: Alignment.center,
      width: 150,
      height: 150,
    );
    Widget TextSection = Container(
      child: Column(
        children: [
          Container(
            child: Text(
              'SignIn',
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
          Text('Speak, friend, and enter'),
        ],
      ),
    );
    Widget LoginSection = Container(
      child: Column(
        children: [
          Container(
            width: 450,
            height: 50,
            margin: EdgeInsets.only(bottom: 10),
            child: TextField(
              controller: _controller1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
                fillColor: Colors.white,
                filled: true,
              ),
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
            ),
          ),
          Container(
            width: 450,
            height: 50,
            child: TextField(
              controller: _controller2,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
                fillColor: Colors.white,
                filled: true,
              ),
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
            ),
          ),
        ],
      ),
    );
    Widget SignInButton = Container(
      width: 450,
      height: 50,
      child: TextButton(
        child: Text(
          'SIGN IN',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          if (_controller1.text.trim() == " " ||
              _controller2.text.trim() == "") {
            showDialog(
                context: context,
                builder: (BuildContext) => AlertDialog(
                      title: Text('Thông báo'),
                      content: Text('Chưa nhập thông tin!'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("OK"),
                        ),
                      ],
                    ));
          } else if (_controller1.text == _controller2.text) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          }else{
            showDialog(
                context: context,
                builder: (BuildContext) => AlertDialog(
                      title: Text('Thông báo'),
                      content: Text('Tài khoản và mật khẩu không trùng khớp !!!'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("OK"),
                        ),
                      ],
                    ));
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xff1278f3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            imgSection,
            TextSection,
            LoginSection,
            SignInButton,
          ],
        ),
      ),
    );
  }
}