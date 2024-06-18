import 'package:analyzebuddy/screens/addPatient.dart';
import 'package:analyzebuddy/screens/updateDetails.dart';
import 'package:flutter/material.dart';
import 'package:analyzebuddy/src/constants/colors.dart';
import 'package:analyzebuddy/assets/Names.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text("Hello !!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: appBlue),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text("Dr. ${DoctorName}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: appBlue),),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(

                    onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddPatient()));
                      // AddPatient();
                      // print("Tapped");
                    },
                    child:
                    Container(
                      decoration: BoxDecoration(
                        color: ContainerColor.shade200,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 3.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      width: 150,
                      height: 150,
                      child:
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,color: Colors.white,size: 40,),
                          Text("Add Patient",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => updateDetails()));

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ContainerColor.shade200,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 3.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      width: 150,
                      height: 150,
                      child:
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.change_circle_outlined,color: Colors.white,size: 40,),
                          Text("Update Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: size.height*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddPatient()));

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ContainerColor.shade200,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 3.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      width: 150,
                      height: 150,
                      child:
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,color: Colors.white,size: 40,),
                          Text("Add Patient",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width:20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddPatient()));

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ContainerColor.shade200,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 3.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      width: 150,
                      height: 150,
                      child:
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,color: Colors.white,size: 40,),
                          Text("Add Patient",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
                        ],
                      ),
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
