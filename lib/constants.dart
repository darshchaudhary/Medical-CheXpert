import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

const kActiveContainerColour = Color(0xFF0249B7);
const kActiveIconColour = Colors.white;
const kActiveTextColour = Colors.white;
const kInactiveContainerColour = Colors.white;
const kInactiveIconColour = Colors.grey;
const kInactiveTextColour = Colors.grey;

const kBackgroundColour = Color(0xFFE9EAF6);
const kLogoDarkBlue = Color(0xFF0249B7);
const kLogoLightBlue = Color(0xFF90CDF9);
const kLogoRed = Color(0xFFEE1405);

const List<String> kDropDownItems = <String>[
  'Doctor',
  'Patient',
];

List<Widget> pageSelect = <Widget>[
  Text(
      'Doctor',
    style: GoogleFonts.poppins(
      fontSize: 18
    ),
  ),
  Text(
      'Patient',
    style: GoogleFonts.poppins(
      fontSize: 18
    ),

  ),
];

const kBoxShadow = BoxShadow(
    color: Colors.black12,
    offset: Offset(2.0, 4.0),
    blurRadius: 4.0
);

const List<String> kSpecialList = [
  "Allergy and Immunology",
  "Anesthesiology",
  "Bariatric Surgery",
  "Cardiology",
  "Cardiothoracic Surgery",
  "Cardiovascular Surgery",
  "Child Psychiatry",
  "Clinical Genetics",
  "Colorectal Surgery",
  "Critical Care Medicine",
  "Dermatology",
  "Diagnostic Radiology",
  "Emergency Medicine",
  "Endocrinology",
  "Family Medicine",
  "Forensic Psychiatry",
  "Gastroenterology",
  "General Surgery",
  "Geriatrics",
  "Gynecologic Oncology",
  "Hand Surgery",
  "Hematology",
  "Infectious Disease",
  "Internal Medicine",
  "Interventional Cardiology",
  "Maternal-Fetal Medicine",
  "Nephrology",
  "Neurology",
  "Obstetrics and Gynecology",
  "Oncology",
  "Ophthalmology",
  "Orthopedics",
  "Otolaryngology (ENT)",
  "Pediatrics",
  "Psychiatry",
  "Pulmonology",
  "Radiology",
  "Rheumatology",
  "Urology"
];