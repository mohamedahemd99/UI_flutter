import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'searchMap.dart';
const primary=Color(0xff3bbdbf);
const font=Color(0xff1a2e43);
const hint=Color(0xff808182);
const loginTextStyle=TextStyle(color: font,fontSize: 17.0,fontWeight: FontWeight.bold);
const hintLoginTextStyle=TextStyle(color: font,fontSize: 15.0);
const hintLoginTextFieldStyle=TextStyle(color: hint,fontSize: 15.0);
const alignmentLoginTextStyle=  TextAlign.center;
const background=Color(0xffefefef);
const inactiveColor=Colors.white70;
const activeColor=Colors.white;
const fontTextStyle=TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: font);
const homeFontTextStyle=TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: font);
const homeHintTextStyle= TextStyle(fontSize: 15.0,color: font);
const fontDoctorTextStyle=TextStyle(color: font,fontSize: 18.0,fontWeight:FontWeight.bold );
const yellowButtom=Color(0xffffe617);
const searchPageColor=Color(0xff514de2);
const bottomIconSearch=Color(0xff8fa7ef);
const String firstImageUrl="images/nn.jpg";
const String secondImageUrl="images/ll.jpg";
const String thirdImageUrl="images/ww.jpg";
const String fourthImageUrl="images/mrs.jpg";

//textfield
class LoginTextField extends StatelessWidget {
  LoginTextField({@required this.icon,@required this.hinttexts});
  String hinttexts;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(bottom: 10.0,top: 10.0),
      child:TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide:BorderSide(color: hint) ,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: hint),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            prefixIcon:
            Icon(
              icon,
              color: font,),
            hintText: hinttexts,hintStyle:hintLoginTextFieldStyle ),),);
  }
}
//images for create account and sign in
class SignInImage extends StatelessWidget {
  SignInImage({@required this.image1 });
  String image1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){},
      child: Container(
        width:40.0,
        child:Image.asset(image1),
      ),
    );
  }
}
//buttoms
class Buttom extends StatelessWidget {
  Buttom ({@required this.text,@required this.heigth,@required this.onPress,@required this.color,@required this.textfont}) ;
  String text;
  double heigth;
  Function onPress;
  Color color;
  Color textfont;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end,children: [
      Container(
          height: heigth,
          margin:EdgeInsets.only(top: 20.0) ,
          child: FlatButton(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),onPressed: onPress, child:Center(child: Text(text,style: TextStyle(color: textfont,fontSize: 20.0),)),color: color,)),
    ],);
  }
}
//logo
class TopLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )
      ),
      child: Container(child: Center(child: Image(image:AssetImage('images/WhatsApp Image 2021-06-07 at 11.07.10 PM.jpeg')),)),
    );
  }
}

//doctor time table
class TimeButtom extends StatelessWidget {
TimeButtom({@required this.boxColor,@required this.fontBoxColor});
Color boxColor;
Color fontBoxColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      margin: EdgeInsets.only(left: 15.0),
      height: 30.0,
      decoration: BoxDecoration(color: boxColor,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Center(child: Text("08:00 PM",style: TextStyle(color: fontBoxColor,fontWeight: FontWeight.bold))),
    ));
  }
}

//date bottoom
class DayButtom extends StatelessWidget {
  DayButtom({@required this.boxcolor,@required this.day,@required this.dayno,@required this.font});
  Color boxcolor;
  String day;
  String dayno;
  Color font;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      margin: EdgeInsets.only(left: 15.0,right: 15.0,bottom: 15.0),
      decoration: BoxDecoration(
          color: boxcolor,
          borderRadius: BorderRadius.all(Radius.circular(5.0))
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text(day,style: TextStyle(color: font,fontWeight: FontWeight.bold),),SizedBox(height: 10.0,),Text(dayno,style: TextStyle(color: font,fontWeight: FontWeight.bold))],
        ),
      ),
    ));
  }
}
//small & big text in doctor's profile
class TextWeight extends StatelessWidget {

  TextWeight({@required this.bigFont,@required this.smallFont});
  String bigFont;
  String smallFont;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bigFont,style:TextStyle(color: font,fontSize: 18.0,fontWeight:FontWeight.bold )),
          Text(smallFont,style: TextStyle(color: hint,fontSize: 15.0,),),
        ],),);
  }
}
//doctor details in doctor's profile
class DoctorDetailsButtom extends StatelessWidget {
  DoctorDetailsButtom({@required this.lable,@required this.icon,@required this.exp});

  String lable;
  IconData icon;
  String exp;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: activeColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Container(
          margin: EdgeInsets.only(left:10.0,top: 10.0,bottom: 5.0),
          child: Text(lable)),
      Container(margin: EdgeInsets.only(left:10.0,bottom: 10.0),child: Row(children: [Icon(icon,color: Colors.orangeAccent,),Text(exp)],))
    ],),);
  }
}
//doctor card in search
class DoctorSearchDetails extends StatelessWidget {
  DoctorSearchDetails({@required this.imageURL,@required this.name ,@required this. onpress});
  String imageURL;
  String name;
  Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.only(right: 5.0,left: 5.0),
          height: 155.0,
          width: 140.0,
          decoration: BoxDecoration(
              color: activeColor,
              borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
          child: Container(
            margin: EdgeInsets.all(7.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.star,color: Colors.deepOrange,size: 15.0,),
                      Text("5.0",style: TextStyle(color: font),),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),

                  child: Container(
                    alignment: Alignment.center,
                    color: background,
                    height: 65.0,
                    width: 65.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      child: Container(
                        color:primary ,
                        height: 60.0,
                        width: 60.0,
                        child: Image.asset(imageURL,fit: BoxFit.fill,),
                      ),
                    ),
                  ),
                ),
                Container(margin: EdgeInsets.only(top: 5.0,bottom: 10.0),child: Text(name,textAlign:TextAlign.center,style: TextStyle(color: font), )),
                Container(
                  decoration: BoxDecoration(
                      color: activeColor,
                    border: Border.all(
                      style: BorderStyle.solid,color: background,width:2.0
                    )


                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.phone,color: searchPageColor,),Text("0121412552")],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
//scroll list
