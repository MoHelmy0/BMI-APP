import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer ({super.key, required this.IMG , required this.Titele, required this.onTap, this.color});
  final   IconData IMG ;
  final   String  Titele ;
  final void Function()? onTap;
  final Color? color ;
  @override
  Widget build(BuildContext context) {
    return InkWell( onTap: onTap,
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(child: Container(
            height: 180,
            width: 155,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: color ,
            ),
            child:Column(
              children: [
                Icon(Icons.male,size: 144 ,color: Colors.white,),
                Text("Male", style: TextStyle(fontSize: 20,color: Colors.white ),),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
