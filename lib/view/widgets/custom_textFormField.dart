import 'package:ecommerce_using_getx/const.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  //const CustomTextFormField({Key key}) : super(key: key);
final String labeltext;
final double labelfontsize;
final Color labelcolor;
final Function onValidate;
final Function onSaved; 
CustomTextFormField(
  {
    this.labeltext,
    this.labelfontsize=15,
    this.labelcolor=Colors.grey,
    this.onValidate,
    this.onSaved,
  }
);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: onValidate,
      onSaved: onSaved,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                      ),
                      labelText: labeltext,
                      labelStyle: TextStyle(
                          fontSize: labelfontsize,
                          color: labelcolor,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
  }
}