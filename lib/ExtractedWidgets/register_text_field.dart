import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerTextField extends StatelessWidget {
  ContainerTextField({required this.labelText});

  String labelText;

  void validatorFunc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: Colors.black),
            borderRadius: BorderRadius.circular(15),
          ),
            labelText: labelText,
          labelStyle: GoogleFonts.poppins()
        ),
        validator: (value) {validatorFunc;},
      ),
    );
  }
}
