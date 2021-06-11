import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui_flutter/doctor_screen.dart';
import 'const.dart';

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
        leading:IconButton(onPressed: (){},icon: Icon(Icons.menu,color: primary,size: 35.0,)),
        title:  Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
            Container(margin: EdgeInsets.only(right:10.0,left: 10.0,bottom: 10.0),child: TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),borderRadius: BorderRadius.all(Radius.circular(20))),focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),borderRadius: BorderRadius.all(Radius.circular(20))),filled: true,fillColor: Colors.white,hintText: "search..",hintStyle:TextStyle(color: Color(0xffd8d8d8)),suffixIcon:Icon(Icons.search,color:primary,)),)),
            Container(
              margin:  EdgeInsets.only(right:10.0,left: 10.0,bottom: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child:  Image.asset("images/pp.jpg",fit: BoxFit.fill,height: 120.0,)
              ),
            ),
            Expanded(flex:5,child: Column(
              children: [
                Container(margin: EdgeInsets.only(right:10.0,left: 10.0,bottom: 5.0),child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Categories",style:homeFontTextStyle,),SizedBox(width: 239.0,),Text("View All",style:homeHintTextStyle,)],),),
                Container(margin: EdgeInsets.only(right:10.0,left: 10.0,bottom: 15.0,top: 15.0),child:Row(children: [
                  Expanded(
                    child: Category(image: "images/nn.jpg",marginRight:30.0,marginLeft: 0.0 ,),
                  ),
                  Expanded(
                    child: Category(image:"images/analysis.jpg", marginLeft:15.0 , marginRight:15.0)
                  ),
                  Expanded(
                    child: Category(image: "images/rays2.jpg", marginLeft: 30.0, marginRight: 0.0)
                  ),
                ],
                ),),

                Container(margin: EdgeInsets.only(right:10.0,left: 10.0),child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Avaliable Doctors",style:homeFontTextStyle,),SizedBox(width: 179.0,),Text("View All",style: homeHintTextStyle,)],),),
              ],
            )),
            Expanded(flex:3,child: Container(margin: EdgeInsets.only(right:10.0,left: 10.0,),child: Row(children: [
              Expanded(
                child: AvaliableDoctorsIcon(image: "images/nn.jpg",marginRight: 20.0,marginLeft: 0.0,),
              ),
              Expanded(
                child:GestureDetector(onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorScreen(),));
                },child: AvaliableDoctorsIcon(image: "images/ww.jpg",marginLeft: 10.0,marginRight: 10.0,))
              ),
              Expanded(
                child:AvaliableDoctorsIcon(image: "images/mrs.jpg",marginLeft: 20.0,marginRight: 0.0,)
              ),
            ],
            ),),),
          Container(height:50.0,decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),color: primary) ,margin: EdgeInsets.only(top: 10.0),width: double.infinity,child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            BottomIcon(icon: Icons.home,color:activeColor ,text: "Home",),
              SizedBox(width: 40.0,),

            BottomIcon(icon: Icons.group,text: "Community",color: inactiveColor,),
              SizedBox(width: 40.0,),

            BottomIcon(icon: Icons.library_books,color: inactiveColor,text: "Appointment",),
          ],),)
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {

  Category({@required this.image,@required this.marginLeft,@required this.marginRight});
  double marginLeft;
  double marginRight;
  String image;
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: marginRight,left: marginLeft),
      child: Column(mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(10.0),child: Container(margin: EdgeInsets.only(bottom: 10.0),child: Image.asset(image,fit: BoxFit.fitHeight,))),
          Text("Doctors",style: TextStyle(color: font,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
        ],),
    );
  }
}

class AvaliableDoctorsIcon extends StatelessWidget {
  AvaliableDoctorsIcon({@required this.image,@required this.marginLeft,@required this.marginRight});
  double marginLeft;
  double marginRight;
  String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        margin: EdgeInsets.only(right: marginRight,left: marginLeft),
        decoration: BoxDecoration(
          color: activeColor,
        ),
        child: Column(mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container(margin: EdgeInsets.all(3.0),child: ClipRRect(borderRadius:BorderRadius.circular(10.0),child: Image.asset(image,fit: BoxFit.fill,)))),
            Text("Dr.Wade Warren",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),textAlign: TextAlign.center ),
            Text("Specialist Dentist",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0,),textAlign: TextAlign.center,),
            Row(children: [
              Icon(Icons.star,color: Colors.yellow,),
              Text("4.5",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),),
              Text("(120 Reviews)",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 10.0),)
            ],)
          ],),
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
