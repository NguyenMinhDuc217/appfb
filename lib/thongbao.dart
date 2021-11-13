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
              child: Flexible(child: Text("Cập nhật ảnh đại diện",style: TextStyle(color: Colors.white)),),
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
              child: Flexible(child: Text("Nhắc đến bạn trong một bình luận",style: TextStyle(color: Colors.white)),),
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
              child: Flexible(child: Text("Hôm nay là sinh nhật Lập trình di động.Hãy chúc anh ấy vui vẻ",style: TextStyle(color: Colors.white)),),
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
              child: Flexible(child: Text("Lập trình Window đã nhắc bạn trong một bình luận",style: TextStyle(color: Colors.white)),),
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
              child: Flexible(child: Text("Cập nhật ảnh đại diện",style: TextStyle(color: Colors.white)),),
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
              child: Flexible(child: Text("Nhập môn lập trình đã thêm một tin mà có thể xem",style: TextStyle(color: Colors.white)),),
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
              child: Flexible(child: Text("Lập trình php đã thêm một ảnh",style: TextStyle(color: Colors.white)),),
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
              child: Flexible(child: Text("Nguyễn Minh Đức nhắc bạn trong bình luận của thiết kế web",style: TextStyle(color: Colors.white)),),
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
              child: Flexible(child: Text("Phan Huy Hoàng đã cập nhật ảnh đại diện của anh ấy",style: TextStyle(color: Colors.white)),),
            )
          ],
        ),
      ),
    ]);
  }
}
