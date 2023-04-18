import 'package:flutter/material.dart';
import 'package:health_app/pages/intropage.dart';
void main()
{
  runApp(myapp());
}
class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: intropage(),
    );
  }
}