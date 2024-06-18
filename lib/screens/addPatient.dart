import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:analyzebuddy/screens/appElevatedButton.dart';
import 'package:analyzebuddy/screens/textController.dart';
import 'package:analyzebuddy/src/constants/colors.dart';

class AddPatient extends StatefulWidget {
  const AddPatient({super.key});

  @override
  State<AddPatient> createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  final _usernameController = TextEditingController();
  final _mobileNoController = TextEditingController();
  final _ageController = TextEditingController();
  final _medicalHistoryController = TextEditingController();
  final _otherAllergyController = TextEditingController();

  bool _diabetes = false;
  bool _bloodPressure = false;
  bool isLoading = false;

  final databaseRef = FirebaseDatabase.instance.ref('Doctors/Padmanaban/Add Patient');

  @override
  void dispose() {
    _usernameController.dispose();
    _mobileNoController.dispose();
    _ageController.dispose();
    _medicalHistoryController.dispose();
    _otherAllergyController.dispose();
    super.dispose();
  }

  Future<void> addPatient() async {
    if (_usernameController.text.isEmpty ||
        _mobileNoController.text.isEmpty ||
        _ageController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill all fields correctly'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }
    else if(_mobileNoController.toString().length!=10){
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Please enter Correct Mobile Number'),
        duration: Duration(seconds: 2),
      ),
      );
      return;

    }

    setState(() {
      isLoading = true;
    });

    try {
      String newPatientKey =_mobileNoController.text;
      await databaseRef.child(newPatientKey).set({
        'Name': _usernameController.text,
        'Mobile Number': _mobileNoController.text,
        'Age': _ageController.text,
        'Diabetes': _diabetes,
        'Blood Pressure': _bloodPressure,
        'Other Allergy': _otherAllergyController.text,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Patient added successfully!'),
          duration: Duration(seconds: 2),
        ),
      );

      _usernameController.clear();
      _mobileNoController.clear();
      _ageController.clear();
      _medicalHistoryController.clear();
      _otherAllergyController.clear();
      setState(() {
        isLoading = false;
        _diabetes = false;
        _bloodPressure = false;

      });
    } catch (error) {
      print('Error adding patient: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error adding patient. Please try again.'),
          duration: Duration(seconds: 2),
        ),
      );

      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          title: Center(child: Text("Adding Patient             ",style: TextStyle(color: Colors.white),),),
          backgroundColor: appBlue,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    keyboardType: TextInputType.text,
                    controller: _usernameController,
                    labelText: 'Patient\'s Name',
                    hintText: 'Enter Patient\'s Name',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Patient\'s Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 25),
                  CustomTextFormField(
                    keyboardType: TextInputType.number,
                    controller: _mobileNoController,
                    labelText: 'Mobile Number',
                    hintText: 'Enter Mobile Number',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Mobile Number';
                      } else if (value.length != 10) {

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please enter Correct Mobile Number'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 25),
                  CustomTextFormField(
                    keyboardType: TextInputType.number,
                    controller: _ageController,
                    labelText: 'Age',
                    hintText: 'Enter Patient\'s Age',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Patient\'s Age';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Enter patient\'s medical history and allergies',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  CheckboxListTile(
                    title: Text('Diabetes'),
                    value: _diabetes,
                    onChanged: (value) {
                      setState(() {
                        _diabetes = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Blood Pressure'),
                    value: _bloodPressure,
                    onChanged: (value) {
                      setState(() {
                        _bloodPressure = value ?? false;
                      });
                    },
                  ),
                  TextFormField(
                    controller: _otherAllergyController,
                    decoration: InputDecoration(
                      hintText: "Other Allergy",
                    ),
                  ),
                  SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: isLoading ? null : addPatient,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: appBlue,
                  ),
                  child: isLoading
                      ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                      : Text(
                    "Add Patient",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
