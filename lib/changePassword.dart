import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'const.dart';
import 'login_screen.dart';
class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  void showAlertDialog(BuildContext context)=>
      showDialog(
    context:context,
    child: Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(padding: EdgeInsets.all(8.0),
      child:Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(margin:EdgeInsets.only(top: 40.0),child: Center(child: Text("Password Changed",style:fontTextStyle ,))),
            SizedBox(height: 20.0,),
            Container(margin: EdgeInsets.only(bottom:5.0,top:15.0),child: Center(child: Text("Your Password has been changed",style: hintLoginTextStyle,))),
            Container(margin: EdgeInsets.only(top:5.0,bottom: 40.0),child: Center(child: Text("successfully!",style: hintLoginTextStyle,))),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),color:Color(0xffffe617) ,),margin: EdgeInsets.only(left:90.0,right: 90.0, top: 20.0,bottom: 40.0), child:FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));},child:Center(child: Text("Login",style: TextStyle(color: font,fontSize: 20.0,fontWeight: FontWeight.bold),),),),)
          ],
      ) ,
      ),

    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: TopLogo(),
            ),
            Expanded(
              flex: 3,
              child:Container(
                margin: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                margin:EdgeInsets.only(bottom: 30.0,top: 10.0),

                      child:Text("Change Password",style:fontTextStyle),
                    ),

                    LoginTextField(icon: Icons.enhanced_encryption, hinttexts:"Old Password*"),
                    LoginTextField(icon: Icons.enhanced_encryption, hinttexts:"New Password*"),
                    LoginTextField(icon: Icons.enhanced_encryption, hinttexts:"New Password*"),

                    Buttom(textfont: font,color: yellowButtom,text: "Change Password",heigth: 60,onPress: (){
                      showAlertDialog(context);
                    },),

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
