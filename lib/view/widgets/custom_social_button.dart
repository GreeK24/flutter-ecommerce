import 'package:ecommerce_using_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  //const CustomSocialButton({Key key}) : super(key: key);
  final String imageUrl;
  final String buttonText;
  final Color buttonIconColor;
  final Function onPressed;

  CustomSocialButton(
    {
     @required this.imageUrl,
     @required this.buttonText,
      this.buttonIconColor,
     @required this.onPressed,
    }
  );

  @override
  Widget build(BuildContext context) {
    
   return MaterialButton(onPressed: onPressed,
                   child: Container(
                     padding: EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                       color: Colors.grey.shade50,
                       border: Border.all(
                         color: Colors.grey[200],
                         width: 1,
                       ),
                     ),
                     child: Row(
                       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Image(
                         color: buttonIconColor,
                         width: 40,
                         height: 40,
                         //'https://cdn3.iconfinder.com/data/icons/glypho-social-and-other-logos/64/logo-facebook-512.png'

                         image: NetworkImage(imageUrl,
                         
                         ),
                       ),
                       SizedBox(width: 30,),
                       CustomText(buttonText),
                     ],),
                   ),
                   );
  }
}