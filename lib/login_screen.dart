import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
const primary=Color(0xff3bbdbf);
const font=Color(0xff1a2e43);
const hint=Color(0xff808182);
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
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
                  child: Center(child: Image(image:AssetImage('images/WhatsApp Image 2021-06-07 at 11.07.10 PM.jpeg')),),
                )
            ),
            Expanded(
                flex: 3,
                child:Container(
                  margin: EdgeInsets.only(left:15.0,right: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(margin:EdgeInsets.only(bottom: 20.0,top: 10.0), child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("Login",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: font)),
                          SizedBox(height: 10.0,),
                          Text("Login into your Account!")
                        ],
                      ),),
                      Container(margin:EdgeInsets.only(bottom: 10.0),child:TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: hint) ,borderRadius: BorderRadius.all(Radius.circular(10.0))),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: hint),borderRadius: BorderRadius.all(Radius.circular(10.0))),prefixIcon: Icon(Icons.call,color: font,),hintText: "Mobile Number*"),),),
                      Container(margin:EdgeInsets.only(bottom: 10.0,top: 10.0),child:TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: hint) ,borderRadius: BorderRadius.all(Radius.circular(10.0))),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: hint),borderRadius: BorderRadius.all(Radius.circular(10.0))),prefixIcon: Icon(Icons.enhanced_encryption,color: font,),hintText: "Password*"),),),
                      Container(child: Text("Forget Password",style: TextStyle(color: font),textAlign: TextAlign.right,),),
                      Column(mainAxisAlignment: MainAxisAlignment.end,children: [Container(height: 40.0,margin:EdgeInsets.only(top: 20.0) ,child: FlatButton(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),onPressed: (){}, child:Center(child: Text("Login",style: TextStyle(color: font,fontSize: 20.0),)),color: Color(0xffffe617),)),
                      ],),
                      SizedBox(height: 10.0,),
                      Container(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(margin:EdgeInsets.only(bottom: 10.0),child: Text("Login through Social media",style: TextStyle(color: font,fontSize: 17.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                          Row(crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            FlatButton(onPressed: (){},child: Container(width:40.0,child: Image(image: AssetImage("images/fb.jpg",)))),
                            FlatButton(onPressed: (){},child: Container(width:40.0,child: Image(image: AssetImage("images/google.jpg",)))),
                            ],),
                          Container(margin:EdgeInsets.only(bottom: 10.0),child: Text("Don't have an account?",style: TextStyle(color: font,fontSize: 17.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                          Column(mainAxisAlignment: MainAxisAlignment.end,children: [Container(height: 40.0,margin:EdgeInsets.only(top: 20.0) ,child: FlatButton(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),onPressed: (){}, child:Center(child: Text("Create An Account",style: TextStyle(color: font,fontSize: 20.0),)),color: Color(0xffffe617),)),
                          ],),
                        ],
                      ),),

                    ],
                  ),
                )
            ),


          ],
        ),
      ),
    );
  }
}
