import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:single_view/choose_page.dart';
import 'package:single_view/get_started.dart';

class SingleScrollView extends StatelessWidget {
  const SingleScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
  child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
      children: [Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text('Welcome back, Samantha!',style: TextStyle(fontSize: 13),),
    Container(
      width: 50, height: 50,
      decoration: BoxDecoration(
         shape: BoxShape.circle,
        color: Colors.orange,
      ) ,
    )
  ],
        ),
      ),
        SizedBox(height: 2,),
        Text('Welcome to the pet shop  \n  lets find your pet',style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold),),
        SizedBox(height: 15,),
        Container(child: SizedBox(height: 220, child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (ctx,index){
              return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChoosePage()));
                  },
                  child:Container(
                margin: EdgeInsets.only(right: 10),
                 width: 240,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.black,]
                  )
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 15,top: 15),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' 7 Ways to take \n care of your  \n pet',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                   SizedBox( height: 130,
                     child: Center(child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/image-gallery.png', height: 50,width: 50,color: Colors.white,),
                         Text('Image here',style: TextStyle(color: Colors.white,fontSize: 12),),
                       ],)),)
                  ],),)
                ,));
            }
        ),),),
       SizedBox(height: 15,),
       Container(child: Row(
         children: [
           Expanded(child: Column(
             children: [
               Container(
                 decoration: BoxDecoration (
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.blue[50],
               ),
                 height: 70,width: 70,
                 child: Icon(Icons.home_outlined,size: 30,),),
               Text('Animal'),
             ],
           )),
           Expanded(child: Column(
             children: [
               Container(
                 decoration: BoxDecoration (
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.blue[50],
                 ),
                 height: 70,width: 70,
                 child: Icon(Icons.home),),
               Text('Grooming'),
             ],
           )),
           Expanded(child: Column(
             children: [
               Container(
                 decoration: BoxDecoration (
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.blue[50],
                 ),
                 height: 70,width: 70,
                 child: Icon(Icons.food_bank),),
               Text('Food'),
             ],
           )),
           Expanded(child: Column(
             children: [
               Container(
                 decoration: BoxDecoration (
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.blue[50],
                 ),
                 height: 70,width: 70,
                 child: Icon(Icons.circle),),
               Text('Training'),
             ],
           )),
         ],
       ),),
        SizedBox(height: 15,),
        Container(
          height: 120, width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.black,]
              )
          ),
          child:
          Row(children: [
           Container(
             padding: EdgeInsets.only(left: 20,top: 20),
             child: Column(children: [
             Text('Become a member,\n get a discount',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => GetStarted()));
             }, child:Text('Join now',),style: ElevatedButton.styleFrom(
               backgroundColor: Colors.orange,
             ), ),
           ],), ) ,
            Container(
              padding: EdgeInsets.only(left: 100,top: 30),
              child: Column(
                children: [
                Image.asset('assets/images/image-gallery.png', height: 40,width: 40,color: Colors.white,),
                Text('Image here',style: TextStyle(color: Colors.white,fontSize: 10),),
              ],

              ),
            ),
          ],),)
      ],
  ),
        ),
      ),
    ));
  }
}
