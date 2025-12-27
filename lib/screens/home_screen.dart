import 'package:first/containers/Height_container.dart';
import 'package:first/containers/gender_container.dart';
import 'package:first/containers/weightAndAgeContainer.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
int weight = 30 ;
int age = 20 ;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale= false;
  bool isFemale=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: AppBar(title: Text("BMI Calculator" , style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      ),
        centerTitle: true,
      ),
      body:Column(
          children: [
            // Gender Row
            GenderContainer(IMG: Icons.male , Titele: "Male"  ,color: isMale?Colors.red :Color(0xff24263b) ,  onTap: (){

              setState(() {
                isFemale=false;
                isMale=true;
              });

            }),
            SizedBox(width: 9,),
            GenderContainer(IMG: Icons.female, Titele: "Female" ,color:isFemale?Colors.red :Color(0xff24263b) , onTap: (){

              setState(() {
                isMale=false;
                isFemale=true;
              });


            },),
            SizedBox(height: 25,),
            // Height Container
            HeightContainer(),
            // age and Weight
            SizedBox(height: 29,),


            AGE(num: weight, title: "Weight", add:setState(){
            weight++
            } , less: setState(){
            weight--
            },),
            AGE(num: age, title: "Age" add:  setState(){age++}, less:setState(() {age--}); ,),

      ]

      ),

        bottomNavigationBar: Container(
          height: 100,
          alignment: Alignment.center,
          color: Color(0xffE83D67),
          child: Text("Calculate !",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color: Colors.white),),

    ),
    );
  }
}
