import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_task/Modules/ListingModules/View/listing_page.dart';
// import 'package:internship_task/Modules/HomeModule/Model/duration_tiles.dart';
// import 'package:internship_task/Modules/HomeModule/View/Components/custom_cont.dart';
import 'package:internship_task/Modules/Utils/custom_btn.dart';
import 'package:internship_task/Modules/Utils/custom_txt.dart';

// import '../../HomeModule/Model/duration_tiles.dart';
// import '../../HomeModule/Model/duration_tiles.dart';
import '../Model/duration_tiles.dart';
import 'Components/custom_cont.dart';
class DetailPage extends StatefulWidget {

  DetailPage({Key? key,required this.img,required this.name}) : super(key: key);
String img;
String name;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<DurationView> data =[
    DurationView(txt: "30 mins",),
    DurationView(txt: "35 mins",),
    DurationView(txt: "40 mins",),
    DurationView(txt: "50 mins",),
    DurationView(txt: "60 mins",),
    DurationView(txt: "80 mins",),

  ];
  List<Amenities> data2 = [
    Amenities(img: "assets/images/ac.png", text: "AC",),
    Amenities(img: "assets/images/wifi.png", text: "Wifi"),
    Amenities(img: "assets/images/tv.png", text: "TV"),
    Amenities(img: "assets/images/wifi.png", text: "Wifi"),
    Amenities(img: "assets/images/ac.png", text: "AC"),
    Amenities(img: "assets/images/wifi.png", text: "Wifi"),

  ];
  int _liked=0;
  void _increas(){
    setState(() {
      _liked++;
    });
  }
  int _count=0;
void _icrease(){
  setState(() {
    _count++;
  });
}

  void _increament(){
    setState(() {
      _count++;
    });
  }
  void _decreament(){
    if (_count < 1)
      return;
    setState(() {
      _count--;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(children: [

        Container(
          padding: EdgeInsets.only(bottom: 30,left: 30,right: 30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
child: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
  CustomBtn(txt: "Book Now", clr: Colors.white, op: (){}, color: Colors.teal[800],
icon: Icons.send_rounded,
  ),

  ],),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight: Radius.circular(30)),
          child: Image.asset(widget.img),
        ),
Positioned(
  top: 30,
  left: 20,
  child:   CustomContainer(hight: MediaQuery.of(context).size.height*.050,

      width:MediaQuery.of(context).size.width*.09,

    clr:Colors.white,

    chld:InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  ListingPage()),

          );
        },
        child: Icon(Icons.arrow_back)) , borderradius:BorderRadius.circular(30),),
),
        Positioned(
          top: 30,
          right: 20,
          child:   CustomContainer(hight: MediaQuery.of(context).size.height*.050,

            width:MediaQuery.of(context).size.width*.09,

            clr:Colors.white,

            chld:InkWell(
                onTap: (){},
                child:Image.asset("assets/images/redheart1.png")) , borderradius:BorderRadius.circular(25),),
        ),
        Positioned(
          bottom: 100,
          left: 33,

          child: Container(
            padding: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 20),
            height: MediaQuery.of(context).size.height*.70,
            width: MediaQuery.of(context).size.width*.85,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                color: Colors.grey,
                blurRadius: 5,

              )],
            ),
            child: SingleChildScrollView(
              child: Column(
// mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(children: [
                    CustomTxt(txt: widget.name, clr:Colors.black, size: 17, fnt_wght:FontWeight.bold),
Spacer(),
                   CustomContainer(hight: MediaQuery.of(context).size.height*.040,
                       width: MediaQuery.of(context).size.width*.17,
                        clr: Colors.teal[800],
                       chld:Center(child: CustomTxt(txt: "AED 420/hr", clr:Colors.white, size:14, fnt_wght:FontWeight.bold),),
                       borderradius: BorderRadius.circular(5),
                   ),
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [
                    Image.asset("assets/images/rate.png",height: 30,width: 30,),
                    SizedBox(width: 5,),
                    Image.asset("assets/images/rate.png",height: 30,width: 30,),
                    SizedBox(width: 5,),
                    Image.asset("assets/images/rate.png",height: 30,width: 30,),
                    SizedBox(width: 5,),
                    Image.asset("assets/images/rate.png",height: 30,width: 30,),
                    SizedBox(width: 5,),
                    Image.asset("assets/images/rate.png",height: 30,width: 30,),
                    SizedBox(width: 5,),
                    Text("1068",style: TextStyle(color: Colors.black),),

                  ],),
SizedBox(height: 10,),
Row(children: [
  CustomTxt(txt: "fulfiled by", clr: Colors.pink, size:14, fnt_wght:FontWeight.bold),
  Spacer(),
  InkWell(
    onTap: _increament,
    child: Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),

      ),
      child: Icon(Icons.add),
    ),
  ),

  SizedBox(width: 10,),
  Text("${_count}"),
  SizedBox(width: 10,),
  InkWell(
    onTap: _decreament,
    child: Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(color: Colors.grey[200],
      borderRadius: BorderRadius.circular(30),

      ),
      child: Icon(Icons.remove),
    ),
  ),

],),
                  SizedBox(height: 10,),
                 Row(children: [
                   CustomTxt(txt: "Dubai Water Sports", clr:Colors.black, size: 17, fnt_wght:FontWeight.bold),
                   Spacer(),
                   CustomTxt(txt: "No of Persons", clr:Colors.black, size: 14, fnt_wght:FontWeight.bold),
                 ],),
                  SizedBox(height: 15,),
                  Text("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 30,),
                  CustomTxt(txt: "More services like this", clr:Colors.pink, size: 14, fnt_wght:FontWeight.bold),
                  SizedBox(height: 15,),
                  CustomTxt(txt: "Duration", clr:Colors.black, size: 17, fnt_wght:FontWeight.bold),
                  SizedBox(height: 15,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.040,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                        itemCount: data.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder:( context, int index)=>SizedBox(width: 20,) ,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.20,
                              width:  MediaQuery.of(context).size.width*0.23,
                              child: Center(child: Text(data[index].txt),),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          );

                        }),
                  ),
                  SizedBox(height: 20,),
                  CustomTxt(txt: "Amenities", clr:Colors.black, size: 17, fnt_wght:FontWeight.bold),
SizedBox(height: 5,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.10,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                        itemCount: data2.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder:( context, int index)=>SizedBox(width: 20,) ,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: MediaQuery.of(context).size.height*0.20,
                            width:  MediaQuery.of(context).size.width*0.23,
                            child: Column(children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Image.asset(data2[index].img),
                              ),
                              SizedBox(height: 5,),
                              Text(data2[index].text),
                            ],),

                          );

                        }),
                  ),
                  SizedBox(height: 20,),
                  CustomTxt(txt: "Overview", clr:Colors.black, size: 17, fnt_wght:FontWeight.bold),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    height: MediaQuery.of(context).size.height*.07,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color:Colors.grey),
                    ),
                    child: Row(children: [
                      CustomTxt(txt: "4.8", clr:Colors.black, size:14, fnt_wght: FontWeight.normal),
                      SizedBox(width: 5,),
                      Image.asset("assets/images/astar.png",height: 20,width: 20,),
                      SizedBox(width: 5,),
                      CustomTxt(txt: "Rating", clr:Colors.black, size:14, fnt_wght: FontWeight.normal),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/speed.jpg",height: 40,width: 40,),
                      SizedBox(width: 20,),
                      Text("${_liked}"),
                      SizedBox(width: 5,),
                      InkWell(
                          onTap:_increas ,
                          child: Image.asset("assets/images/fav.jpg",height: 40,width: 40,)),
                      SizedBox(width: 0,),
                      CustomTxt(txt: "Like", clr:Colors.black, size:14, fnt_wght: FontWeight.normal),


                    ],),

                  ),


                ],),
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          right: 25,
          child: InkWell(
           onTap: (){},
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(color: Colors.teal[800],
                borderRadius: BorderRadius.circular(40),

              ),
              child: Icon(Icons.messenger,color: Colors.white,),
            ),
          ),
        ),

      ],),
    );
  }
}
