import 'package:analyzebuddy/assets/Names.dart';
import 'package:analyzebuddy/src/constants/colors.dart';
import 'package:flutter/material.dart';
class userProfile extends StatelessWidget {
  const userProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset('assets/images/doctorAAvtar.jpg',height: 150,width: 150,)),
                    SizedBox(height: 50,),
        
                    Row(
        
                      children: [
                        Text("Clinic Name:",style: TextStyle(fontWeight: FontWeight.bold,color: appOcreYellow,fontSize: 18),),
                        SizedBox(width: 50,),
                        Text('${ClinicName}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("Doctors Name:",style: TextStyle(fontWeight: FontWeight.bold,color: appOcreYellow,fontSize: 18),),
                        SizedBox(width: 30,),
                        Text('Dr. ${DoctorName}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("Mobile No:",style: TextStyle(fontWeight: FontWeight.bold,color: appOcreYellow,fontSize: 18),),
                        SizedBox(width: 60,),
                        Text('${drsMobileNo}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("Business E-Mail:",style: TextStyle(fontWeight: FontWeight.bold,color: appOcreYellow,fontSize: 18),),
                        SizedBox(width: 15,),
                        Text('${drsEmail}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                      ],
                    ),
                    SizedBox(height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Made With ❤️ by Tejas Gadge",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: appPurple),),
                      ],
                    ),
        
                  ],
                ),
              ),
            ),
      ),


    );
  }
}
