import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'const.dart';
import 'home.dart';
import 'changePassword.dart';
import 'doctor_screen.dart';
import 'new_password.dart';
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
                child:TopLogo(),
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
                          Text("Login",style: fontTextStyle),
                          SizedBox(height: 10.0,),
                          Text("Login into your Account!",style: hintLoginTextStyle,)
                        ],
                      ),),
                      LoginTextField(icon: Icons.call, hinttexts: "Mobile Number"),
                      LoginTextField(icon: Icons.enhanced_encryption,hinttexts: "Password*",),
                      GestureDetector(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>ChangePassword()));},child: Container(child: Text("Forget Password",style: hintLoginTextStyle,textAlign: TextAlign.right,),)),
                      Buttom(textfont: font,color: yellowButtom,text: "Login",heigth: 40.0,onPress:(){Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen()));}),
                      SizedBox(height: 10.0,),
                      Container(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(margin:EdgeInsets.only(bottom: 10.0),child: Text("Login through Social media",style:loginTextStyle,textAlign:alignmentLoginTextStyle)),
                          Row(crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SignInImage(image1: "images/fb.jpg",),
                            SignInImage(image1:"images/google.jpg" )
                            ],),
                          Container(margin:EdgeInsets.only(bottom: 10.0),child: Text("Don't have an account?",style: loginTextStyle,textAlign: alignmentLoginTextStyle,)),
                          Buttom(textfont: font,color: yellowButtom,text: "Create an account",heigth: 40.0,onPress: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>NewPassword()));
                          },),
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
