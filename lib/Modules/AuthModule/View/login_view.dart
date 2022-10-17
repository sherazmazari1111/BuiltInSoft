import 'package:flutter/material.dart';
import 'package:internship_task/Modules/AuthModule/View/Components/custo_textformfied.dart';
import 'package:internship_task/Modules/HomeModule/View/detail_page_dubai_W_S.dart';
import 'package:internship_task/Modules/Utils/custom_btn.dart';
import 'package:internship_task/Modules/Utils/custom_txt.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100,left: 20,right: 20,bottom: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
CustomTxt(txt: "Login", clr: Colors.black, size: 35, fnt_wght:FontWeight.bold),
             SizedBox(height: 5,),
             CustomTxt(txt: "Login with your username or email", clr: Colors.grey[500],size: 14, fnt_wght: FontWeight.normal),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10,top: 10,),
                height: MediaQuery.of(context).size.height*.17,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
borderRadius: BorderRadius.circular(5),
                  

                ),
      // child: TextField(decoration: InputDecoration(labelText: 'Email',),),
                child: Column(
                  children: [
                    CustomTF(labeltxt: 'Email Adress',obs: false,),
                    SizedBox(height: 5,),
                    CustomTF(labeltxt: 'Password',obs: true,sficon:Icons.remove_red_eye_outlined,brdr:InputBorder.none,),


                  ],
                ),

              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: (){},
                    child: CustomTxt(txt: "Forget Password?", clr: Colors.grey, size: 14, fnt_wght: FontWeight.normal)),
              ),
              SizedBox(height: 30,),
            CustomBtn(txt: "Sign In", clr:Colors.white, op: (){ Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>  DubaiWatersports()),

            );}, color:Colors.teal[800]),
              SizedBox(height: 30,),
              // Divider(thickness: 1),
              Row(children: [
                Container(
                  height: MediaQuery.of(context).size.height*.001,
                  width: MediaQuery.of(context).size.width*.42,
                  color: Colors.grey,
                ),
                Spacer(),
                CustomTxt(txt: "or", clr: Colors.grey, size: 14, fnt_wght: FontWeight.normal),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height*.001,
                  width: MediaQuery.of(context).size.width*.42,
                  color: Colors.grey,
                ),
              ],),
              SizedBox(height: 30,),
              CustomAuthBtns(txt: "Sign in with facebook", clr:Colors.white, op:(){}, color:Colors.blue[900] , img:"assets/images/facebbok.png",),
              SizedBox(height: 15,),
              CustomAuthBtns(txt: "Sign in with google", clr:Colors.white, op:(){}, color:Colors.red , img:"assets/images/google.png",),
              SizedBox(height: 15,),
              CustomAuthBtns(txt: "Sign in with apple", clr:Colors.white, op:(){}, color:Colors.black, img:"assets/images/apple.jpg",),
              Spacer(),
              Align(
                alignment: Alignment.center,
                  child: CustomTxt(txt: "Don't have an account?SignUp", clr: Colors.black, size:14, fnt_wght: FontWeight.normal)),


            ],),
        ),
      ),
    );
  }
}
