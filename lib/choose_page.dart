import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:single_view/single_scroll_view.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(children: [
          Container(
            height: 300,width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.black,]
                )
            ),
            child: Column(
            children: [
              ListTile(
               leading: InkWell(
                 onTap: (){
                   Navigator.pop(context,SingleScrollView());
                 },
                 child: Container(
                 height: 30,width: 30,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.grey,
                 ),
                 child :Icon(Icons.arrow_back,color: Colors.white,size: 20,),),),
               trailing:   Container(
                   height: 30,width: 30,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: Colors.grey,
                   ),
                   child: Icon(Icons.favorite_outline_rounded,color: Colors.white,size: 20,)),
              ),
              SizedBox(height: 50,),
              Image.asset('assets/images/image-gallery.png', height: 70,width: 70,color: Colors.white,),
              Text('Image here',style: TextStyle(color: Colors.white,fontSize: 15),),
            ],
          ),),
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 15,),
            Text('7 Ways to take care of your pet',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,
            SizedBox(height: 30,),
            Text('There are a number of ways to care for pets at home, every animal is different, but in general the method can still be the same.'),
            SizedBox(height: 20,),
            Text('If you have a pet, you definitely want your pet to be safe and comfortable at home.'),
            SizedBox(height: 20,),
            Text('In fact, it is not uncommon for owners to allow pets to roam in the house, usually dogs or cats.'),


          ],)

        ],),

      ) ,
    ));
  }
}
