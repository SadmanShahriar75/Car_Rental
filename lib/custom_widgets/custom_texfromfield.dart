import 'package:flutter/material.dart';

Widget customFormField({
  String? hintext,
  suffixicon,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: TextFormField(
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(15, 15, 20, 15),

        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(5),
        // ),

        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(0xFFD6D6FF)),
          borderRadius: BorderRadius.circular(5),
        ),

        suffixIcon: suffixicon,
        hintText: hintext,
        hintStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
