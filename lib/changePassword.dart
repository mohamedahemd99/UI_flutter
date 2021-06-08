import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
const primary=Color(0xff3bbdbf);
const font=Color(0xff1a2e43);
const hint=Color(0xff808182);
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
            Container(margin:EdgeInsets.only(top: 40.0),child: Center(child: Text("Password Changed",style: TextStyle(color: font,fontWeight: FontWeight.bold,fontSize: 25.0),))),
            SizedBox(height: 20.0,),
            Container(margin: EdgeInsets.only(bottom:5.0,top:15.0),child: Center(child: Text("Your Password has been changed",style: TextStyle(fontWeight: FontWeight.bold,color: hint,fontSize: 17.0),))),
            Container(margin: EdgeInsets.only(top:5.0,bottom: 40.0),child: Center(child: Text("successfully!",style: TextStyle(fontWeight: FontWeight.bold,color: hint,fontSize: 17.0),))),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),color:Color(0xffffe617) ,),margin: EdgeInsets.only(left:90.0,right: 90.0, top: 20.0,bottom: 40.0), child:FlatButton(onPressed: (){},child:Center(child: Text("Login",style: TextStyle(color: font,fontSize: 20.0,fontWeight: FontWeight.bold),),),),)
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
                margin: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                margin:EdgeInsets.only(bottom: 30.0,top: 10.0),

                      child:Text("Change Password",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: font)),
                    ),

                    Container(margin:EdgeInsets.only(bottom: 10.0,top: 10.0),child:TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: hint) ,borderRadius: BorderRadius.all(Radius.circular(10.0))),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: hint),borderRadius: BorderRadius.all(Radius.circular(10.0))),prefixIcon: Icon(Icons.enhanced_encryption,color: font,),hintText: "Old Password*"),),),
                    Container(margin:EdgeInsets.only(bottom: 10.0,top: 10.0),child:TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: hint) ,borderRadius: BorderRadius.all(Radius.circular(10.0))),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: hint),borderRadius: BorderRadius.all(Radius.circular(10.0))),prefixIcon: Icon(Icons.enhanced_encryption,color: font,),hintText: "New Password*"),),),
                    Container(margin:EdgeInsets.only(bottom: 10.0,top:10.0),child:TextField(decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide:BorderSide(color: hint) ,borderRadius: BorderRadius.all(Radius.circular(10.0))),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: hint),borderRadius: BorderRadius.all(Radius.circular(10.0))),prefixIcon: Icon(Icons.enhanced_encryption,color: font,),hintText: "New Password*"),),),
                    Column(mainAxisAlignment: MainAxisAlignment.end,children: [
                      Container(height: 80.0,margin:EdgeInsets.only(top: 80.0) ,child: FlatButton(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),onPressed: (){
                        setState(() {
                          showAlertDialog(context);
                        });
                      },
                        child:Center(child: Text("Change Password",style: TextStyle(color: font,fontSize: 20.0),)),color: Color(0xffffe617),)),
                    ],),
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
