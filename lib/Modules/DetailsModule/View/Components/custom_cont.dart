import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key , required this.hight,required this.width,
    required this.clr,required this.chld,required this.borderradius}) : super(key: key);
final hight;
final width;
final clr;
final chld;
final borderradius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width:width,
      child: chld,
      decoration: BoxDecoration(
        color: clr,
borderRadius: borderradius,
      ),
    );
  }
}
