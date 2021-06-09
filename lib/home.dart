import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
const primary=Color(0xff3bbdbf);
const font=Color(0xff1a2e43);
const hint=Color(0xff808182);
const background=Color(0xffefefef);
const inactiveColor=Colors.white70;
const activeColor=Colors.white;
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(backgroundColor: background,elevation: 0.0,
        title:  Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               IconButton(onPressed: (){},icon: Icon(Icons.menu,color: primary,size: 35.0,)),
               IconButton(onPressed: (){},icon: Icon(Icons.notifications,color: primary,size: 35.0)),
            ],
          ),
        ),
        actions: [
          FlatButton(onPressed: (){},child: Container(margin:EdgeInsets.all(10.0),width: 40.0,child: ClipRRect(borderRadius: BorderRadius.circular(10.0),child: Image(image: AssetImage("images/tt.jpg")))))
        ],
      ),
      body:
      Container(
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex:1,child: Container(margin: EdgeInsets.only(right:10.0,left: 10.0,bottom: 10.0),child: TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),borderRadius: BorderRadius.all(Radius.circular(20))),focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),borderRadius: BorderRadius.all(Radius.circular(20))),filled: true,fillColor: Colors.white,hintText: "search..",hintStyle:TextStyle(color: Color(0xffd8d8d8)),suffixIcon:Icon(Icons.search,color:primary,)),))),
            Container(
              margin:  EdgeInsets.only(right:10.0,left: 10.0,bottom: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:  Image.asset("images/pp.jpg",fit: BoxFit.fill,height: 150.0,)
              ),
            ),
            Container(margin: EdgeInsets.only(right:10.0,left: 10.0,bottom: 5.0),child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Categories",style:TextStyle(fontSize: 23.0,fontWeight: FontWeight.bold,color: font),),SizedBox(width: 200.0,),Text("View All",style: TextStyle(fontSize: 17.0,color: font),)],),),
            Expanded(flex:2,child: Container(margin: EdgeInsets.only(right:10.0,left: 10.0),child:Row(children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0,left: 10.0),
                  child: Column(mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(10.0),child: Image.asset("images/nn.jpg",fit: BoxFit.fitHeight,)),
                      Text("Doctors",style: TextStyle(color: font,fontWeight: FontWeight.bold),)
                    ],),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0,left: 10.0),
                  child: Column(mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(10.0),child: Image.asset("images/analysis.jpg",fit: BoxFit.fitHeight,)),

                      Text("Analysis",style: TextStyle(color: font,fontWeight: FontWeight.bold))
                    ],),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0,left: 10.0),
                  child: Column(mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(10.0),child: Image.asset("images/rays2.jpg",fit: BoxFit.fitHeight,)),
                      SizedBox(height: 2.0,),
                      Text("Rays",style: TextStyle(color: font,fontWeight: FontWeight.bold))
                    ],),
                ),
              ),
            ],
            ),),
            ),

            Container(margin: EdgeInsets.only(right:10.0,left: 10.0,bottom: 5.0),child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Avaliable Doctors",style:TextStyle(fontSize: 23.0,fontWeight: FontWeight.bold,color: font),),SizedBox(width: 140.0,),Text("View All",style: TextStyle(fontSize: 17.0,color: font),)],),),
            Expanded(flex:2,child: Container(margin: EdgeInsets.only(right:10.0,left: 10.0),child: Row(children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: activeColor,
                    ),
                    margin: EdgeInsets.only(right: 10.0,left: 10.0),
                    child: Column(mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: Container(margin: EdgeInsets.all(3.0),child: ClipRRect(borderRadius:BorderRadius.circular(20.0),child: Image.asset("images/nn.jpg",fit: BoxFit.fill,)))),
                        Text("Dr.Wade Warren",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),textAlign: TextAlign.center ),
                        Text("Specialist Dentist",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0,),textAlign: TextAlign.center,),
                        Row(children: [
                          Icon(Icons.star,color: Colors.yellow,),
                          Text("4.5",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),),
                          Text("(120 Reviews)",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),)
                        ],)
                      ],),
                  ),
                ),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: activeColor,
                    ),
                    margin: EdgeInsets.only(right: 10.0,left: 10.0),
                    child: Column(mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: Container(margin: EdgeInsets.all(3.0),child: ClipRRect(borderRadius:BorderRadius.circular(20.0),child: Image.asset("images/mrs.jpg",fit: BoxFit.fill,)))),
                        Text("Dr.Wade Warren",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),textAlign: TextAlign.center ),
                        Text("Specialist Dentist",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0,),textAlign: TextAlign.center,),
                        Row(children: [
                          Icon(Icons.star,color: Colors.yellow,),
                          Text("4.5",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),),
                          Text("(120 Reviews)",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),)
                        ],)
                      ],),
                  ),
                ),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: activeColor,
                    ),
                    margin: EdgeInsets.only(right: 10.0,left: 10.0),
                    child: Column(mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(child: Container(margin: EdgeInsets.all(3.0),child: ClipRRect(borderRadius:BorderRadius.circular(20.0),child: Image.asset("images/ll.jpg",fit: BoxFit.fill,)))),
                        Text("Dr.Wade Warren",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),textAlign: TextAlign.center ),
                        Text("Specialist Dentist",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0,),textAlign: TextAlign.center,),
                        Row(children: [
                          Icon(Icons.star,color: Colors.yellow,),
                          Text("4.5",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),),
                          Text("(120 Reviews)",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),)
                        ],)
                      ],),
                  ),
                ),
              ),
            ],
            ),),
            ),
          Expanded(
            child: Container(height: 50.0,decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),color: primary) ,margin: EdgeInsets.only(top: 10.0),width: double.infinity,child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              BottomIcon(icon: Icons.home,color:activeColor ,text: "Home",),
                SizedBox(width: 40.0,),

              BottomIcon(icon: Icons.group,text: "Community",color: inactiveColor,),
                SizedBox(width: 40.0,),

              BottomIcon(icon: Icons.library_books,color: inactiveColor,text: "Appointment",),
            ],),),
          )
          ],
        ),
      ),
    );
  }
}
class BottomIcon extends StatelessWidget {
  BottomIcon({@required this.icon,@required this.text, @required this.color});
  IconData icon;
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){},
      child: Column(
        children: [
          Icon(icon,size: 30.0,color: color),
          Text(text,style: TextStyle(color: color))
        ],
      ),
    );
  }
}
