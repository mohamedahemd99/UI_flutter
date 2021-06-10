import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

class Buttom extends StatelessWidget {
  Buttom ({@required this.text,@required this.heigth,@required this.onPress}) ;
  String text;
  double heigth;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end,children: [
      Container(
          height: heigth,
          margin:EdgeInsets.only(top: 20.0) ,
          child: FlatButton(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),onPressed: onPress, child:Center(child: Text(text,style: TextStyle(color: font,fontSize: 20.0),)),color: Color(0xffffe617),)),
    ],);
  }
}
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

