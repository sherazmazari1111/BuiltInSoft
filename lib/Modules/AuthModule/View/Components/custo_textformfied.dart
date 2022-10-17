import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomTF extends StatelessWidget {

  @override
  CustomTF({Key? key,required this.labeltxt, this.hintxt,this.obs,this.ochng
 ,this.icon,this.sficon,this.brdr,this.eabrdr,this.erorbrdr,this.fbrdr,this.disablebrdr}) : super(key: key);
  final labeltxt;
  final hintxt;
  final obs;
  final ochng;

  final sficon;
  final icon;
  final brdr;
  final fbrdr;
  final eabrdr;
  final erorbrdr;
  final disablebrdr;
  @override
  Widget build(BuildContext context) {
    // String emial='', password='';
    return TextFormField(
      onChanged: ochng,
      obscureText: obs,
      decoration: InputDecoration(

        // border: InputBorder.none,
        border: brdr,
        // focusedBorder: InputBorder.none,
        focusedBorder: fbrdr,
        // enabledBorder: InputBorder.none,
        enabledBorder: eabrdr,
        // errorBorder: InputBorder.none,
        errorBorder: erorbrdr,
        // disabledBorder: InputBorder.none,
        disabledBorder: disablebrdr,
        labelText: labeltxt,
        hintText: hintxt,
        // prefixIcon: Icon(pficon),
        suffixIcon:Icon(sficon),
        icon: icon,
      ),
    );
  }
}