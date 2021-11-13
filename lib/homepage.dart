
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  String caption = 'We hope to have a win!';
  String captionfull = 'Cristiano Ronaldo came off the bench in the second half but was unable to find a winner on his 200th Premier League appearance.';
  String caption2 = 'Ole Gunnar Solskjaer';
  String captionfull2='The former Norwegian striker is not too prominent in his career, but makes football fans unforgettable. Solskjaer is often the name mentioned in the most important moments of MU.';
  String caption3='WIN A Lego Old Trafford set & 21/22 home SHIRT SIGNED BY the team';
  String captionfull3="To celebrate the announcement that the Manchester United Women's team will play at Old Trafford in the New Year and to coincide with ‘Women’s Football Weekend’ in the Barclays FA WSL over the weekend of the 14-15 November we are giving fans around the world the chance to win a Women’s team signed Lego Old Trafford set plus a 21/22 Home Shirt signed by the team.To enter, simply complete the form below. Good Luck!";
  String seemore ='xem tiếp';
  String seemore2 ='xem tiếp';
  String seemore3 ='xem tiếp';
  int like = 100;
  int like2 = 120;
  int like3 = 1500;
  String yourlike = ' ';
  String orderlike = '';
  String yourlike2 = ' ';
  String orderlike2 = '';
  String yourlike3 = ' ';
  String orderlike3 = '';
  bool click=false;
  bool click2=false;
  bool click3=false;
  bool _icon=true;
  bool _icon2=true;
  bool _icon3=true;
  @override
    Widget build(BuildContext context){
    return ListView(
      padding: EdgeInsets.all(12),
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 380,
          child: Column(
            children: [
              Container( 
                margin: EdgeInsets.all(10),
                child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/logo/logoMU.jpg'),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text('Manchester United',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text('20 phút trước'),
                    ],
                  )
                ],
              ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                children: [
                  Flexible(child: Text(caption),),
                  TextButton(
                    onPressed: (){
                      if(click==false){
                        caption=captionfull;
                        seemore='';
                      }
                      setState(() {});                  
                    }, 
                    child: Text(seemore),
                  )
                ],
              ),
              ),
              Image.asset('images/post/matcheverton.jpg',width: 250,height: 150,),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    color: Colors.blue,
                                    border: Border.all(width: 2),
                                  ),
                                  child: Icon(Icons.thumb_up, color: Colors.white,),
                                ),
                                Text(yourlike+like.toString()+orderlike),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 5),
                            child: Text('15 bình luận'),
                          ),
                          Text('10 chia sẻ'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            tooltip: 'LIKE',
                            onPressed: (){
                              _icon =! _icon;
                              if(_icon==true){
                                // like--;
                                yourlike='';
                                orderlike='';
                              }
                              else{
                                // like++;                             
                                yourlike=' Bạn và ';
                                orderlike=' người khác';                          
                              }
                              setState(() {});
                            }, 
                            icon: _icon?Icon(Icons.thumb_up_alt_outlined):Icon(Icons.thumb_up_alt_rounded),
                          ),
                          IconButton(
                            hoverColor: Colors.blue,
                            onPressed: (){},
                            icon: Icon(Icons.comment),
                          ),
                          IconButton(
                            hoverColor: Colors.blue,
                            onPressed: (){},
                            icon: Icon(Icons.share),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              )      
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 380,
          child: Column(
            children: [
              Container( 
                margin: EdgeInsets.all(10),
                child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/logo/logoMU.jpg'),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text('Manchester United',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text('1 giờ trước'),
                    ],
                  )
                ],
              ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                children: [
                  Flexible(child: Text(caption2),),
                  TextButton(
                    onPressed: (){
                      if(click2==false){
                        caption2=captionfull2;
                        seemore2='';
                      }
                      setState(() {});                  
                    }, 
                    child: Text(seemore2),
                  )
                ],
              ),
              ),
              Image.asset('images/post/ole.jpg',width: 250,height: 150,),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    color: Colors.blue,
                                    border: Border.all(width: 2),
                                  ),
                                  child: Icon(Icons.thumb_up, color: Colors.white,),
                                ),
                                Text(yourlike2+like2.toString()+orderlike2),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 5),
                            child: Text('20 bình luận'),
                          ),
                          Text('17 chia sẻ'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            tooltip: 'LIKE',
                            onPressed: (){
                              _icon2 =! _icon2;
                              if(_icon2==true){
                                // like--;
                                yourlike2='';
                                orderlike2='';
                              }
                              else{
                                // like++;                             
                                yourlike2=' Bạn và ';
                                orderlike2=' người khác';                          
                              }
                              setState(() {});
                            }, 
                            icon: _icon2?Icon(Icons.thumb_up_alt_outlined):Icon(Icons.thumb_up_alt_rounded),
                          ),
                          IconButton(
                            hoverColor: Colors.blue,
                            onPressed: (){},
                            icon: Icon(Icons.comment),
                          ),
                          IconButton(
                            hoverColor: Colors.blue,
                            onPressed: (){},
                            icon: Icon(Icons.share),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              )      
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 445,
          child: Column(
            children: [
              Container( 
                margin: EdgeInsets.all(10),
                child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/logo/logoMU.jpg'),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text('Manchester United',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text('45 phút trước'),
                    ],
                  )
                ],
              ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                children: [
                  Flexible(child: Text(caption3),),
                  TextButton(
                    onPressed: (){
                      if(click3==false){
                        caption3=captionfull3;
                        seemore3='';
                      }
                      setState(() {});                  
                    }, 
                    child: Text(seemore3),
                  )
                ],
              ),
              ),
              Image.asset('images/post/manu.jpg',width: 250,height: 150,),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    color: Colors.blue,
                                    border: Border.all(width: 2),
                                  ),
                                  child: Icon(Icons.thumb_up, color: Colors.white,),
                                ),
                                Text(yourlike3+like3.toString()+orderlike3),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 5),
                            child: Text('300 bình luận'),
                          ),
                          Text('250 chia sẻ'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            tooltip: 'LIKE',
                            onPressed: (){
                              _icon3 =! _icon3;
                              if(_icon3==true){
                                // like--;
                                yourlike3='';
                                orderlike3='';
                              }
                              else{
                                // like++;                             
                                yourlike3=' Bạn và ';
                                orderlike3=' người khác';                          
                              }
                              setState(() {});
                            }, 
                            icon: _icon3?Icon(Icons.thumb_up_alt_outlined):Icon(Icons.thumb_up_alt_rounded),
                          ),
                          IconButton(
                            hoverColor: Colors.blue,
                            onPressed: (){},
                            icon: Icon(Icons.comment),
                          ),
                          IconButton(
                            hoverColor: Colors.blue,
                            onPressed: (){},
                            icon: Icon(Icons.share),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )      
            ],
          ),
        ),
      ],
    );
  }
}