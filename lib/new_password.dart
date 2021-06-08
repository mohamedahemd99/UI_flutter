import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const primary=Color(0xff3bbdbf);
const font=Color(0xff1a2e43);
const hint=Color(0xff808182);
class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child:Container(
                  decoration: BoxDecoration(
                      color:primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      )
                  ),
                  child: Container(child: Center(child: Image(image:AssetImage('images/WhatsApp Image 2021-06-07 at 11.07.10 PM.jpeg')),)),
                )
            ),
            Expanded(
                flex: 3,
                child:Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch ,
                    children: [
                      Padding(padding: EdgeInsets.all(15.0),),
                      Container(margin:EdgeInsets.only(left: 15.0),child: Text("New Password",style: TextStyle(color: font,fontSize: 30.0,fontWeight: FontWeight.bold,),)),
                      SizedBox( height: 15.0,),
                      Container(margin:EdgeInsets.only(left: 15.0,bottom: 15.0),child: Text("Please enter new password",style: TextStyle(color: hint,fontSize: 15.0))),
                      Container(margin:EdgeInsets.all(15.0),child: TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: hint),borderRadius: BorderRadius.all(Radius.circular(10.0))),focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: hint),borderRadius: BorderRadius.all(Radius.circular(10.0))) ,prefixIcon: Icon(Icons.enhanced_encryption,color: font,),hintText: "Password*",),)),
                      Container(margin:EdgeInsets.all(15.0),child:TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: hint),borderRadius: BorderRadius.all(Radius.circular(10.0))),focusedBorder:OutlineInputBorder(borderSide: BorderSide(color: hint),borderRadius: BorderRadius.all(Radius.circular(10.0))) ,prefixIcon: Icon(Icons.enhanced_encryption,color: font,),hintText: "Confirm Password*",),)),
                      Container(height:80.0,margin:EdgeInsets.all(15.0),child: FlatButton(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),onPressed: (){}, child:Center(child: Text("Submit",style: TextStyle(color: font,fontSize: 20.0),)),color: Color(0xffffe617),), )

                    ],
                  ),
                )
            ),
          ],
        ),
      ) ,
    );
  }
}
