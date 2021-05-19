import 'package:flutter/material.dart';
import 'package:ecommerce_using_getx/view/widgets/custom_text.dart';

import '../../const.dart';

class CustomButton extends StatelessWidget {
  //const CustomButton({Key key}) : super(key: key);
  final String buttonText;
  final Function onPressed;
  final Color buttonColor;

  CustomButton(
    {
      @required this.buttonText,
      @required this.onPressed,
      this.buttonColor = primaryColor,
    }
  );

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        minWidth: double.infinity,
                        child: CustomText(buttonText.toUpperCase(),
                        color: Colors.white,
                        //isBold: true,
                        alignment: Alignment.center,
                        
                        ),
                        color: buttonColor,
                        onPressed: onPressed);
  }
}

