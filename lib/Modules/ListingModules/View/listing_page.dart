import 'package:flutter/material.dart';
import 'package:internship_task/Modules/DetailsModule/View/Components/custom_cont.dart';
import 'package:internship_task/Modules/DetailsModule/View/detail_page_dubai_W_S.dart';

import '../../DetailsModule/Model/duration_tiles.dart';
import '../../Utils/custom_txt.dart';
class ListingPage extends StatefulWidget {
  const ListingPage({Key? key}) : super(key: key);

  @override
  State<ListingPage> createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  List<ListingPageData> dataforLIsting = [
    ListingPageData(pic: "assets/images/skyd.jpg", txt1: "Speed Boating"),
    ListingPageData(pic: "assets/images/wd.jpg", txt1: "FlyBoarding"),
    ListingPageData(pic: "assets/images/wd2.webp", txt1: "Kite Surfing"),


  ];
  List<Price> prdata= [
    Price(pr: "AED 420"),
    Price(pr: "AED 120"),
    Price(pr: "AED 320"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:70,left: 20,right: 20),
height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(children: [
           Row(children: [
             Icon(Icons.arrow_back,),
             SizedBox(width: 150,),
             CustomTxt(txt: "My Favorites", clr:Colors.black, size: 17, fnt_wght:FontWeight.bold),

           ],),
SizedBox(height: 20,),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width:MediaQuery.of(context).size.width*.80,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: dataforLIsting.length,
                  separatorBuilder:( context, int index)=>
                      SizedBox(height: 50,) ,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(img: dataforLIsting[index].pic, name:dataforLIsting[index].txt1)),

                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 20,top: 20),
                        // height: MediaQuery.of(context).size.height,
                        // width: MediaQuery.of(context).size.width*.20,
                        height: MediaQuery.of(context).size.height*.25,
                        width:MediaQuery.of(context).size.width*.60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage(dataforLIsting[index].pic),fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10),
                      ),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // ClipRRect(
                            //   borderRadius: BorderRadius.circular(8.0),
                            //   child: Image.asset(dataforLIsting[index].pic,fit: BoxFit.fill,height:
                            //   MediaQuery.of(context).size.height*.25,width: MediaQuery.of(context).size.width,),
                            // ),
                           Row(children: [
                             ClipRRect(
                                 borderRadius: BorderRadius.circular(50),
                                 child: Image.asset("assets/images/fav.jpg",height: 35,width: 35,)),
                             Spacer(),
                             CustomContainer(hight:MediaQuery.of(context).size.height*.030,
                                 width:MediaQuery.of(context).size.width*.25, clr:Colors.red,
                                 chld: Text(" 40 % discount",style: TextStyle(color: Colors.white),),
                                 borderradius: BorderRadius.circular(4)),
                           ],),
SizedBox(height: 20,),
                            Text(dataforLIsting[index].txt1,style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),),
                            SizedBox(height: 10,),
                            CustomTxt(txt: "Dubai Water Sports", clr: Colors.white, size: 14, fnt_wght:FontWeight.normal),
                            SizedBox(height: 10,),
                            Row(children: [
                              Image.asset("assets/images/astar.png",height: 13,width: 13,),
                              SizedBox(width: 5,),
                              Image.asset("assets/images/astar.png",height: 13,width: 13,),
                              SizedBox(width: 5,),
                              Image.asset("assets/images/astar.png",height: 13,width: 13,),  SizedBox(width: 5,),
                              Image.asset("assets/images/astar.png",height: 13,width: 13,),  SizedBox(width: 5,),
                              Image.asset("assets/images/astar.png",height: 13,width: 13,),
                              SizedBox(height: 5,),
                              Text("1083"),


                            ],),
                            SizedBox(height: 10,),
Row(children: [
  Icon(Icons.location_on,color: Colors.white,),
SizedBox(width: 5,),
  CustomTxt(txt: "Marina, Dubai", clr:Colors.white, size: 14, fnt_wght:FontWeight.normal),
  SizedBox(width: 90,),
  CustomContainer(hight: MediaQuery.of(context).size.height*.030,
      width:MediaQuery.of(context).size.width*.17,
      clr:Colors.teal,
      chld:Text(prdata[index].pr,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
      borderradius: BorderRadius.circular(5)),
],),
                          ],
                        ),
                      ),
                    );

                  }),
            ),
          ],),
        ),
      ),
    );
  }
}
