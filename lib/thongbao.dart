import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThongBaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/friend/1.jpg'),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
              ),
            ),
            Container(
              child: Text("Cập nhật ảnh đại diện"),
            )
          ],
        ),
      ),
      ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/friend/2.jpg'),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
              ),
            ),
            Container(
              child: Text("Nhắc đến bạn trong một bình luận"),
            )
          ],
        ),
      ),
      ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/friend/3.jpg'),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
              ),
            ),
            Container(
              child: Text(
                  "Hôm nay là sinh nhật Lập trình di động.Hãy chúc anh ấy vui vẻ"),
            )
          ],
        ),
      ),
      ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/friend/4.jpg'),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
              ),
            ),
            Container(
              child: Text("Lập trình Window đã nhắc bạn trong một bình luận"),
            )
          ],
        ),
      ),
      ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/friend/5.jpg'),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
              ),
            ),
            Container(
              child: Text("Cập nhật ảnh đại diện"),
            )
          ],
        ),
      ),
      ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/friend/1.jpg'),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
              ),
            ),
            Container(
              child: Text("Nhập môn lập trình đã thêm một tin mà có thể xem"),
            )
          ],
        ),
      ),
      ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/friend/9.jpg'),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
              ),
            ),
            Container(
              child: Text("Lập trình php đã thêm một ảnh"),
            )
          ],
        ),
      ),
      ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/friend/7.jpg'),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
              ),
            ),
            Container(
              child: Text(
                  "Nguyễn Minh Đức nhắc bạn trong bình luận của thiết kế web"),
            )
          ],
        ),
      ),
      ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/friend/10.jpg'),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {},
              ),
            ),
            Container(
              child: Text("Phan Huy Hoàng đã cập nhật ảnh đại diện của anh ấy"),
            )
          ],
        ),
      ),
    ]);
  }
}
