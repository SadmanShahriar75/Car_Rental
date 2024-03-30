import 'package:flutter/material.dart';

Widget customElavatedButton({
  ontap,
}) {
  return Center(
    child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          minimumSize: const Size(175, 48),
    
          backgroundColor: const  Color(0xFF5D5CFF),
          // const Color(0x5D5CFF)
        ),
        child: const Text(
          'Next',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        )),
  );
}
