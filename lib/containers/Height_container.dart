
 import 'package:flutter/material.dart';

class HeightContainer extends StatefulWidget {
   const HeightContainer ({super.key});

  @override
  State<HeightContainer> createState() => _HeightContainerState();
}

class _HeightContainerState extends State<HeightContainer> {
   final int height=100;

   @override
   Widget build(BuildContext context) {
     return    Container(
       height: 189,
       decoration: BoxDecoration(
           color: Color(0xff333244),
           borderRadius: BorderRadius.circular(12)
       ),
       child: Column(
         children: [
           Text("Height", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
           Text.rich(TextSpan(
               children: [
                 TextSpan(
                     text: "150",
                     style: TextStyle(color: Colors.white, fontSize: 40 ,fontWeight: FontWeight.bold)
                 ),
                 TextSpan(
                     text: "cm",
                     style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.w500)
                 ),
               ]

           )),
           Slider(activeColor: Color(0xffE83D67)  ,value: height.toDouble() ,min: 0,max: 300, onChanged: (Value){
             setState(() {
               height=Value.toInt();
             });
           },)
           ,
         ],
       ),
     )
     ;
   }
}
