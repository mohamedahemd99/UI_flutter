import 'dart:collection';
import 'const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'doctor_screen.dart';

class SearchMap extends StatefulWidget {
  @override
  _SearchMapState createState() => _SearchMapState();
}

class _SearchMapState extends State<SearchMap> {
  var myMarkers = HashSet<Marker>();
  BitmapDescriptor customMarker,customMarker1,customMarker2,customMarker3;
  getCustomMarker()async{
    customMarker=await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, firstImageUrl);
    customMarker1=await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, secondImageUrl);
    customMarker2=await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, thirdImageUrl);
    customMarker3=await BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, fourthImageUrl);

  }
  @override
  void initState() {
    super.initState();
    getCustomMarker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: searchPageColor,
      appBar:AppBar(
        backgroundColor: searchPageColor,
        leading:IconButton(icon: Icon(Icons.menu) , onPressed:(){}) ,
        centerTitle: true,
        title:Text("Search",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0) ,) ,
        actions: [
          IconButton(highlightColor: activeColor ,icon: Icon(Icons.map), onPressed:(){

          })
        ],
      ) ,
        body:ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)) ,

          child: Stack(

            children: [

              GoogleMap(

                zoomControlsEnabled: false,
                padding: EdgeInsets.all(10.0),
                initialCameraPosition: CameraPosition(
                  target:LatLng(31.2556260, 29.9866080 ), zoom: 6),
                onMapCreated:(controller) {
                  setState(() {
                    myMarkers.add(
                        Marker(onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>DoctorScreen()));
                        },
                          markerId: MarkerId("1"),
                          position: LatLng(30.2556260, 29.9866080  ),
                          infoWindow:InfoWindow(
                              title: "",
                              snippet:""
                          ),
                          icon: customMarker ,

                        )
                    );
                    myMarkers.add(
                        Marker(onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>DoctorScreen()));
                        },
                          markerId: MarkerId("2"),
                          position: LatLng(29.2556260, 29.9866080  ),
                          infoWindow:InfoWindow(
                              title: "",
                              snippet:""
                          ),
                          icon: customMarker1 ,
                        ));
                    myMarkers.add(
                        Marker(onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>DoctorScreen()));
                        },
                          markerId: MarkerId("3"),
                          position: LatLng(28.2556260, 29.9866080  ),
                          infoWindow:InfoWindow(
                              title: "",
                              snippet:""
                          ),
                          icon: customMarker2 ,
                        ),
                    );
                    myMarkers.add(
                        Marker(onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>DoctorScreen()));
                        },
                          markerId: MarkerId("4"),
                          position: LatLng(31.2556260, 29.9866080  ),
                          infoWindow:InfoWindow(
                              title: "",
                              snippet:""
                          ),
                          icon: customMarker3 ,

                        )                    );
                  });
                },
                markers: myMarkers,
              ),

              //Searching Text field
              Container(
                height: 50.0,
                margin: EdgeInsets.only(left:15.0,right:15.0,top:30.0),
                alignment: Alignment.topCenter,
                child:TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                          ,borderRadius:BorderRadius.all(Radius.circular(10.0))
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ) ,
                    prefixIcon: Icon(Icons.search,color:Colors.grey[300],),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey[300],fontWeight: FontWeight.bold,fontSize: 15.0),
                  ),
                ) ,

              ),
              Container(
                margin: EdgeInsets.only(top: 280.0),
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                    children: <Widget>[
                      DoctorSearchDetails(imageURL: firstImageUrl,name: "Urologist",onpress: (){
                        setState(() {
                        });

                      },),
                      DoctorSearchDetails(imageURL: secondImageUrl,name: "Orthopaedic",onpress: (){},),
                      DoctorSearchDetails(imageURL: thirdImageUrl,name: "Dentist",onpress: (){},),
                      DoctorSearchDetails(imageURL: fourthImageUrl,name: "Neurologist",onpress: (){},),

                    ]
                )
              ],
              ),
              ),
              //Bottom bar
              Column(

                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [


                  Container(

                    height: 60.0,
                    margin: EdgeInsets.only(right:5.0,left: 5.0,bottom: 10.0),
                    decoration:BoxDecoration(
                      border: Border.all(color: background,style:BorderStyle.solid,width: 2.0 ),
                      color: Colors.white,
                      borderRadius:BorderRadius.all(Radius.circular(30.0),),
                    ) ,
                    child: Row(
                      children: [
                        Expanded(child:FlatButton(onPressed: (){},child: IconButton(icon: Icon(Icons.home,color: Colors.grey[400],size: 30.0,), onPressed: (){},highlightColor: bottomIconSearch,)) ),
                        Expanded(child:FlatButton(onPressed: (){},child: IconButton(icon: Icon(Icons.business_center,color: Colors.grey[400],size: 30.0,), onPressed: (){},highlightColor: bottomIconSearch,)) ),
                        Expanded(child:FlatButton(onPressed: (){},child: IconButton(icon: Icon(Icons.search,color: Colors.grey[400],size: 30.0,), onPressed: (){},highlightColor: bottomIconSearch,)) ),
                        Expanded(child:FlatButton(onPressed: (){},child: IconButton(icon: Icon(Icons.person,color: Colors.grey[400],size: 30.0,), onPressed: (){},highlightColor: bottomIconSearch,)) ),

                      ],
                    ),
                  ),
                ],
              ),


            ],
          ),
        )


    );
  }
}


