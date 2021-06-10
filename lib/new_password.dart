import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'login_screen.dart';
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
                child:TopLogo(),
            ),
            Expanded(
                flex: 3,
                child:Container(
                  margin: EdgeInsets.only(left: 15.0,right: 15.0),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch ,
                    children: [
                      Padding(padding: EdgeInsets.all(15.0),),
                      Container(child: Text("New Password",style: fontTextStyle,)),
                      SizedBox( height: 15.0,),
                      Container(margin:EdgeInsets.only(bottom: 15.0),child: Text("Please enter new password",style:hintLoginTextStyle)),
                      LoginTextField(icon: Icons.enhanced_encryption, hinttexts:"Password*"),
                      SizedBox(height: 10.0,),
                      LoginTextField(icon: Icons.enhanced_encryption, hinttexts:"Confirm Password*"),
                      Buttom(text: "Submit", heigth:70.0,onPress:(){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },)
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

