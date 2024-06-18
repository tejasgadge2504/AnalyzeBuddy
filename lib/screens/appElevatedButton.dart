import 'package:analyzebuddy/src/constants/colors.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String buttonName;


  const customButton({
    super.key,
    this.buttonName=''
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
      style: ElevatedButton.styleFrom(
        backgroundColor: appBlue,

      ),
      child: Text("${buttonName}",style: TextStyle(color: Colors.white),),
    );
  }
}
