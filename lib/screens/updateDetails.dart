import 'package:analyzebuddy/src/constants/colors.dart';
import 'package:flutter/material.dart';

class updateDetails extends StatefulWidget {
  const updateDetails({super.key});

  @override
  State<updateDetails> createState() => _updateDetailsState();
}

class _updateDetailsState extends State<updateDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text("Update Visit Details",style: TextStyle(color: Colors.white),),
        backgroundColor: appBlue,
      ),
    );
  }
}
