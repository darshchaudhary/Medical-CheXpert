import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medical_chexpert/doctor_registration_page.dart';
import 'login_page.dart';
import 'ExtractedWidgets/register_text_field.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'ExtractedWidgets/gender_containers.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

enum Gender{
  male,
  female,
  other
}

enum Page{
  doctor,
  patient
}

List displayPage = [
  PatientRegistrationPage(),
  DoctorRegistrationPage()
];



var selectedGender;
var selectedPage;
class PatientRegistrationPage extends StatefulWidget {
  const PatientRegistrationPage({super.key});
  @override
  State<PatientRegistrationPage> createState() => _PatientRegistrationPageState();
}

class _PatientRegistrationPageState extends State<PatientRegistrationPage> {

  final List<bool> _selectedRegister = <bool>[false, true];

  String dropdownValue = kDropDownItems.first;
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    double screenWidth = size.width;
    double screenHeight = size.height;
    print(selectedGender);



    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE9EAf6),
          body: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(
                height: 970
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 5,
                    child: Form(
                        child: Column(
                          children: [

                            Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.white,
                                      boxShadow: [kBoxShadow]
                                  ),
                                  margin: EdgeInsets.fromLTRB(22.5, 22.5, 22.5, 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                          },
                                          child: Text(
                                            'Already have an account? Login.',
                                            style: TextStyle(
                                                color: Color(0xFF0448B4)
                                            ),
                                          )
                                      ),
                                      Expanded(
                                        child: ContainerTextField(
                                          labelText: 'Name:',
                                        ),
                                      ),
                                      Expanded(
                                        child: ContainerTextField(
                                          labelText: 'Username:',
                                        ),
                                      ),
                                      Expanded(
                                        child: ContainerTextField(
                                          labelText: 'Password:',
                                        ),
                                      ),
                                      Expanded(
                                        child: ContainerTextField(
                                          labelText: 'E-mail:',
                                        ),
                                      ),
                                      Expanded(
                                        child: ContainerTextField(
                                          labelText: 'Phone No.:',
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(horizontal: 15),
                                          child: DOBInputField(
                                            firstDate: DateTime(1900),
                                            lastDate: DateTime.now(),
                                            showLabel: true,
                                            dateFormatType: DateFormatType.DDMMYYYY,
                                            fieldLabelText: 'Date of Birth:',
                                            autovalidateMode: AutovalidateMode.always,
                                            inputDecoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 1.0, color: Colors.black),
                                                  borderRadius: BorderRadius.circular(15)
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child: GenderContainer(
                                genderIcon: FontAwesomeIcons.mars,
                                buttonText: 'MALE',
                                onTap: () {
                                  setState(() {
                                    selectedGender = Gender.male;
                                  });
                                },
                                genderColour: selectedGender == Gender.male ? kActiveContainerColour : kInactiveContainerColour,
                                genderContentColour: selectedGender == Gender.male ? kActiveIconColour : kInactiveIconColour,
                              )
                          ),
                          Expanded(
                              child: GenderContainer(
                                genderIcon: FontAwesomeIcons.venus,
                                buttonText: 'FEMALE',
                                onTap: () {
                                  setState(() {
                                    selectedGender = Gender.female;
                                  });
                                },
                                genderColour: selectedGender == Gender.female ? kActiveContainerColour : kInactiveContainerColour,
                                genderContentColour: selectedGender == Gender.female ? kActiveIconColour : kInactiveIconColour,
                              )
                          ),
                          Expanded(
                              child: GenderContainer(
                                genderIcon: FontAwesomeIcons.transgender,
                                buttonText: 'OTHER',
                                onTap: () {
                                  setState(() {
                                    selectedGender = Gender.other;
                                  });
                                },
                                genderColour: selectedGender == Gender.other ? kActiveContainerColour : kInactiveContainerColour,
                                genderContentColour: selectedGender == Gender.other ? kActiveIconColour : kInactiveIconColour,
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    //flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [kBoxShadow],
                          color: Color(0xFF0249B7),
                        ),
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 15),
                        child: TextButton(
                          child: Text(
                            'SUBMIT',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 30
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'bottomNav');
                          },
                        ),
                      )
                  )


                ],
              ),
            ),
          ),
      ),
    );
  }
}



