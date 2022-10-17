import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomBtn extends StatelessWidget {




   CustomBtn({Key? key,required this.txt,required this.clr,required this.op,required this.color,this.icon }) : super(key: key);
  @override
  final txt;
  final clr;
  final color;
  final op;
final icon;
  @override
  Widget build(BuildContext context) {
    return   MaterialButton(
      padding: EdgeInsets.only(left: 20,right: 5),

      height: MediaQuery.of(context).size.height*.06,
      minWidth: 500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: color,
      onPressed: op,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
Spacer(),

Icon(icon,color: Colors.white),
          SizedBox(width: 50,),


          Text(
            txt,
            style: TextStyle(color:clr, fontSize: 14),
          ),
Spacer(),
          Spacer(),



        ],
      ),
    );
  }
}


class CustomAuthBtns extends StatelessWidget {




  CustomAuthBtns({Key? key,required this.txt,required this.clr,
    required this.op,required this.color, required this.img}) : super(key: key);
  @override
  final txt;
  final clr;
  final color;
  final op;
  String img;
  @override
  Widget build(BuildContext context) {
    return   MaterialButton(
      padding: EdgeInsets.only(left: 20,right: 5),

      height: MediaQuery.of(context).size.height*.06,
      minWidth: 500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: color,
      onPressed: op,
      child: Row(
        children:  [
          Text(
            txt,
            style: TextStyle(color:clr, fontSize: 14),
          ),
          Spacer(),
          Image.asset(img,height: 45,width: 45,),


        ],
      ),
    );
  }
}
