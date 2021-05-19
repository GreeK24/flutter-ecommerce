import 'package:flutter/material.dart';

//import '../../const.dart';

class CustomText extends StatelessWidget {
  //const CustomText({Key key}) : super(key: key);
  final String text;
  final Color color;
  final double fontsize;
  final String fontfamily;
  final bool isBold;
  final Alignment alignment;
  CustomText(this.text,
      {this.color = Colors.black,
      this.fontsize = 14,
      this.fontfamily = 'roboto',
      this.alignment=Alignment.topLeft,
      this.isBold=false});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(text,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontFamily: fontfamily,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,
      ),
      ),
    );
  }
}
