import 'package:flutter/material.dart';
import 'package:appfb/friend-page.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Không tìm thấy trang',
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
        home: Scaffold(
          backgroundColor: Color(0xff18191a),
          appBar: AppBar(
            backgroundColor: Color(0xff242526),
            title: Text('Không tìm thấy trang'),
            centerTitle: true,
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo/LogoError.png', height: 200, width: 200),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Text(
                    'Liên kết bạn truy cập có thẻ bị hỏng hoặc trang có thể đã bị gỡ.',
                    style: TextStyle(color: Colors.white),
                  )),
              OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Đi tới bảng tin',
                      style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff2d88ff)),
                  ))
            ],
          )),
        ));
  }
}
