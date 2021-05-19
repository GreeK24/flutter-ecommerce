import 'package:ecommerce_using_getx/const.dart';
import 'package:ecommerce_using_getx/view/widgets/custom_button.dart';
import 'package:ecommerce_using_getx/view/widgets/custom_social_button.dart';
import 'package:ecommerce_using_getx/view/widgets/custom_text.dart';
import 'package:ecommerce_using_getx/view/widgets/custom_textFormField.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: Container(
        
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Container(
              
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 40),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),

              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          'Welcome',
                          color: Colors.black,
                          fontsize: 20,
                          isBold: true,
                        ),
                        CustomText(
                          'Sign Up',
                          color: primaryColor,
                          fontsize: 15,
                          isBold: true,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      'Sign in to continue',
                      //alignment: Alignment.topLeft,
                      color: Colors.grey[500],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextFormField(
                      labeltext: 'Email',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      labeltext: 'Password',
                    ),

                    SizedBox(
                      height: 5,
                    ),

                    CustomText(
                      'Forgot Password?',
                      alignment: Alignment.topRight,
                      fontsize: 14,
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      //buttonColor: Colors.blue,
                      buttonText: 'sign in',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      '_OR_',
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    /* MaterialButton(onPressed: (){

                   },
                   child: Container(
                     padding: EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5),
                       border: Border.all(
                         color: Colors.grey[200],
                         width: 1,
                       ),
                     ),
                     child: Row(
                       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Image(
                         color: Colors.blue,
                         width: 40,
                         height: 40,
                         image: NetworkImage('https://cdn3.iconfinder.com/data/icons/glypho-social-and-other-logos/64/logo-facebook-512.png',
                         
                         ),
                       ),
                       SizedBox(width: 30,),
                       CustomText('Sign In With Facebook'),
                     ],),
                   ),
                   ),*/
                    CustomSocialButton(
                      onPressed: (){

                      },
                      imageUrl:
                          'https://cdn3.iconfinder.com/data/icons/glypho-social-and-other-logos/64/logo-facebook-512.png',
                      buttonText: 'Sign In With Facebook',
                      buttonIconColor: Colors.blue,
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //'https://pngimg.com/uploads/google/google_PNG19635.png'
                    CustomSocialButton(
                      onPressed: (){
                        
                      },
                      imageUrl:
                          'https://pngimg.com/uploads/google/google_PNG19635.png',
                      buttonText: 'Sign in with google',
                    ),

                    //SizedBox(height: 100,),
                  ],
                ),
              ),
              //sizedbox here
            ),
          ),
        ),
      ),
    );
  }
}
