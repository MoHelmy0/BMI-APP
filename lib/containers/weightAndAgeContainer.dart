import 'dart:ffi';
import 'package:flutter/material.dart';


class AGE extends StatefulWidget {
  const  AGE ({super.key, required this.num, required this.title, this.add, this.less , });

  final String title ;
  final  Int  num ;
  final  void Function()? plus;
  final void Function()? less;

  @override
  State<AGE> createState() => _AGEState();
}

class _AGEState extends State<AGE> {




  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Container(
          height: 180,
          width: 155,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff333244),
          ),
          child: Column(
            children: [
              Text(widget.title ,style: TextStyle(color: Colors.white, fontSize: 20),),
              Text(widget.num as String ,style: TextStyle(color: Colors.white, fontSize: 20),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton.small(onPressed: plus,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(100)
                    ) ,
                    child:
                    Icon(Icons.add,color: Colors.white,)
                    ,),


                  FloatingActionButton.small(onPressed: less,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(100)
                    ) ,
                    child:
                    Icon(Icons.remove,color: Colors.white,)
                    ,)

                ],
              )
            ],

          ),
        )
      ],
    );
  }
}
