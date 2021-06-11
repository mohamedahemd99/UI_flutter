import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'const.dart';
class DoctorScreen extends StatefulWidget {
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //background image
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/ww.jpg"),
                fit: BoxFit.cover)),
        child: Column(children: [
          //backward arrow
          Row(children:[
            Container(
              height: 40.0,
              width: 40.0,
              decoration:
              BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)), color: primary,),

              margin: EdgeInsets.only(top: 25.0,left:10.0),
            child: IconButton(icon:Center(child: Icon(Icons.arrow_back_ios,size: 20.0,color: activeColor,)),color: primary,onPressed: () {
              Navigator.pop(context);

            },),
          )],),
          Expanded(flex: 3,child:
              Container()
          ),
          Expanded(flex:15,child: Container(
            child: Stack(
              children: [
                Align(
                  child:ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0),topRight: Radius.circular(50.0)),
                    child: Container(
                      child: BackdropFilter(
                        filter:ImageFilter.blur(sigmaX: 20,sigmaY: 20),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 35.0,right: 15.0,left: 15.0,bottom: 9.0),
                            child: Row(children: [
                              Text("Dr.Angila Wilson",style: TextStyle(color: font,fontSize: 20.0,fontWeight:FontWeight.bold ),) ,
                              SizedBox(width: 175.4,),
                              Text("400 EGP",style: TextStyle(color: primary,fontSize: 15.0,fontWeight: FontWeight.bold),textAlign:TextAlign.right ,) ,
                            ],),
                          ),
                          Container(margin:EdgeInsets.only(left: 15.0,right: 15.0,bottom: 5.0),child: Text("Specialist Dentist",style:  TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,fontSize: 15.0,),)),
                          Container(margin:EdgeInsets.only(left: 15.0,right: 15.0),child: Text("Massachsetts General Hopital, Boston, MA",style:  TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,fontSize: 15.0,))),
                        //deatils buttons
                          Row(children: [
                            Expanded(child:DoctorDetailsButtom(lable: "Patients",icon:Icons.group ,exp:"+400",)),
                            Expanded(child:DoctorDetailsButtom(lable:"Experience" ,icon:Icons.bookmark ,exp:"6 years" ,)),
                            Expanded(child:DoctorDetailsButtom(lable: "Review",icon:Icons.star ,exp:"4.5" ,)),
                          ],),
                            //DateInfo
                            Container(
                              margin: EdgeInsets.only(left:15.0,right: 15.0,bottom: 15.0),
                              child: Row(children: [
                                TextWeight(bigFont:"My clinic" ,smallFont:"Elgiza,Cairo" ,),
                                SizedBox(width: 108.0,),
                                TextWeight(smallFont:"Sat_Fri Morning 8 AM / 8PM" ,bigFont:"Working Time" ,),
                              ],),
                            ),
                          //Day

                          Container(
                            margin: EdgeInsets.only(left:15.0,right: 15.0,bottom: 10.0),
                            child: Row(children: [
                              Container(
                                child: Text("Schedule",style: fontDoctorTextStyle,),
                              ),
                              SizedBox(width: 222.4,),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15.0)),color: background),
                                child:Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    children: [
                                      Text("Oct 18,2021",style:TextStyle(fontSize: 10.0,color: Colors.grey[800],fontWeight: FontWeight.bold),),
                                      Icon(Icons.arrow_drop_down)
                                    ],
                                  ),
                                ),
                              ),
                            ],),
                          ),
                          //DayButton
                          Container(
                            child: Row(
                              children: [
                                DayButtom(boxcolor:activeColor ,day:"Fri" ,dayno:"15" ,font: hint,),
                                DayButtom(boxcolor:primary ,day:"Sat" ,dayno:"16" ,font: activeColor,),
                                DayButtom(boxcolor:activeColor ,day:"Sun" ,dayno:"17" ,font: hint,),
                                DayButtom(boxcolor:activeColor ,day:"Mon" ,dayno:"18" ,font: hint),
                                DayButtom(boxcolor:activeColor ,day:"Tue" ,dayno:"19" ,font: hint),

                              ],
                            ),
                          ),
                          //Time
                          Container(
                            margin: EdgeInsets.only(left: 15.0),
                            child: Text("Time",style: fontDoctorTextStyle,),
                          ),
                          //TimeButton
                          Container(
                            margin: EdgeInsets.only(left: 5.0,right: 70.0,bottom: 10.0),
                            child: Row(
                              children: [
                                TimeButtom(boxColor: activeColor,fontBoxColor: hint,),
                                TimeButtom(boxColor: activeColor,fontBoxColor: hint,),
                                TimeButtom(boxColor: activeColor,fontBoxColor: hint,),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0,right: 70.0),
                            child: Row(
                              children: [
                                TimeButtom(boxColor: activeColor,fontBoxColor: hint,),
                                TimeButtom(boxColor: primary,fontBoxColor: activeColor,),
                                TimeButtom(boxColor: activeColor,fontBoxColor: hint,),
                              ],
                            ),
                          ),
                          //Botton Button
                          Container(margin: EdgeInsets.only(left: 15.0,right: 15.0),child: Buttom(textfont:Colors.grey[100] ,color: primary,text: "Get Appiontment", heigth: 40.0, onPress: (){}))

                        ],
                      ),
                        color: Colors.grey.withOpacity(0.2 ),
                      ),
                ),
                    ),
                  ) ,
                )

              ],
            ),
          ))
        ],

        ),
      ),
    );
  }
}
