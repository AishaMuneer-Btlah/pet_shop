import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:single_view/choose_page.dart';
import 'package:single_view/single_scroll_view.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.blue[700],
      body: Container(
        padding: EdgeInsets.only(left: 40,right: 40,top: 40),
        child: Center(child: Column(
        children: [
          Text(' Pet shop and ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          Text(' Care Tips',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(height: 170,),
          Image.asset('assets/images/image-gallery.png', height: 70,width: 70,color: Colors.white,),
          Text('Image here',style: TextStyle(color: Colors.white,fontSize: 15),),
          SizedBox(height: 150,),
          ElevatedButton(onPressed: (){
            Navigator.pop(context,SingleScrollView());
          }, child:Text('Get Started',),style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          ), ),
        ],), ),)
    ));
  }
}
