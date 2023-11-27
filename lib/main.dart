import 'package:cart/controller/counter_controller.dart';
import 'package:cart/view/first_page/first_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CounterController(),
      child: MaterialApp(
        home:Product_Page(),
      ),
    );
  }
}
