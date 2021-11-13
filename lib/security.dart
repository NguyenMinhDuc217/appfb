import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecurityMeNu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Chính sách Facebook"),
            ),
            body: ListView(
              children: [
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Giới thiệu chính sách của chúng tôi",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w700)),
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
                                fontSize: 20, fontWeight: FontWeight.w200)),
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
                            "Nội dung nào không được phép đăng trên Facebook?"),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                            "Facebook xác định những hành vi nào là lạm dụng?"),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child:
                            Text("Có được phép bán súng trên Facebook không?"),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                            "Facebook có được phép đăng ảnh cho con bú không?"),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                            "Facebook có chấp nhận ảnh chụp sau phẫu thuật cắt bỏ vú không"),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                            "Tại sao facebook hạn chế sử dụng một số tính năng nhất định và giới hạn đó là gì?"),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                            "Tại sao facebook hạn chế sử dụng một số tính năng nhất định và giới hạn đó là gì?"),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                            "Facebook có tham khảo ý kiến nhóm bên ngoài nào để cập nhật chích sách không?"),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Thông tin tài khoản ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w200)),
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
                            "Tôi tạo nhiều tài khoản Facebook được không?"),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
                ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Dùng facebook có mất phí không?"),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down),
                ),
              ],
            )));
  }
}
