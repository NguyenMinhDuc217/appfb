import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  final List<Friend> friend;
  const FriendPage({Key? key, required this.friend}) : super(key: key);
  @override
  FriendPageState createState() => FriendPageState();
}

class Friend {
  final String name;
  final String mutualfriends;
  String textButton;
  bool addFriendState = true;

  Friend(this.name, this.mutualfriends, this.textButton);
}

class FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 11,
        itemBuilder: (context, index) => ListTile(
            title: Row(
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'images/friend/' + (index + 1).toString() + '.jpg'),
                    child:InkWell(
                      borderRadius:BorderRadius.circular(30),
                      onTap: (){},
                )),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                  child: Text(widget.friend[index].name),
                ),
                Text('(' + widget.friend[index].mutualfriends + ' bạn chung)'),
              ],
            ),
            trailing: OutlinedButton(
              onPressed: () {
                setState(() {
                  widget.friend[index].addFriendState =
                      !widget.friend[index].addFriendState;
                  if (widget.friend[index].addFriendState) {
                    widget.friend[index].textButton = 'Huỷ kết bạn';
                  } else {
                    widget.friend[index].textButton = 'Thêm bạn bè';
                  }
                });
              },
              child: Text(widget.friend[index].textButton,style: TextStyle(color:Colors.white),),
              style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xff2d88ff)),
        ),)));
  }
}