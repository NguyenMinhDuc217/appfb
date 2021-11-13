import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecurityMeNu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
        home: Scaffold(
          backgroundColor: Color(0xff242526),
            appBar: AppBar(
              actions: <Widget>[
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              icon: Icon(Icons.arrow_back, color: Colors.white,),
            )
          ],
              title: Flexible(child: Text("Chính sách Facebook",style: TextStyle(color: Colors.white))),
              backgroundColor: Color(0xff242526),
            ),
            body: ListView(
              children: [
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Flexible(child: Text("Giới thiệu chính sách của chúng tôi",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700,color: Colors.white)),),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Tổng quan",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w200,color: Colors.white)),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                            "Nội dung nào không được phép đăng trên Facebook?",style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down,color: Colors.white),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                            "Facebook xác định những hành vi nào là lạm dụng?",style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down,color: Colors.white),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child:
                            Text("Có được phép bán súng trên Facebook không?",style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down,color: Colors.white),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                            "Facebook có được phép đăng ảnh cho con bú không?",style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down,color: Colors.white),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Flexible(child: Text("Facebook có chấp nhận ảnh chụp sau phẫu thuật cắt bỏ vú không",style: TextStyle(color: Colors.white))),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down,color: Colors.white),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Flexible(child: Text("Tại sao facebook hạn chế sử dụng một số tính năng nhất định và giới hạn đó là gì?",style: TextStyle(color: Colors.white))),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down,color: Colors.white),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Flexible(child: Text("Tại sao facebook hạn chế sử dụng một số tính năng nhất định và giới hạn đó là gì?",style: TextStyle(color: Colors.white))),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down,color: Colors.white),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Flexible(child: Text("TFacebook có tham khảo ý kiến nhóm bên ngoài nào để cập nhật chích sách không?",style: TextStyle(color: Colors.white))),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down,color: Colors.white),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Thông tin tài khoản ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w200,color: Colors.white)),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                            "Tôi tạo nhiều tài khoản Facebook được không?",style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down,color: Colors.white),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Dùng facebook có mất phí không?",style: TextStyle(color: Colors.white)),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down,color: Colors.white),
                ),
              ],
            )));
  }
}
