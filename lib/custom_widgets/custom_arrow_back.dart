

import 'package:flutter/material.dart';
import 'package:get/get.dart';


Widget customArrowBack () {
  return  Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: InkWell(
      onTap: () {
        Get.back();
        
      },
      child:const  Row(
        children: [
          Icon(Icons.arrow_back_ios),
          Text(
        'Back',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        
        ),
      ),
        ],
      ),
    ),
  );
}