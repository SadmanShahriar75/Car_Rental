import 'package:car_rental/app/modules/home/views/vehicle_information_view.dart';
import 'package:car_rental/custom_widgets/custom_arrow_back.dart';
import 'package:car_rental/custom_widgets/custom_elavated_button.dart';
import 'package:car_rental/custom_widgets/custom_texfromfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomerInformationView extends GetView {
  // ignore: use_super_parameters
  const CustomerInformationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customArrowBack(),
            const Text(
              'Customer Information',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.36,
              ),
            ),
            const Divider(
              color: Colors.deepPurple,
              // Color(0x5D5CFF),
              thickness: 1,
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 345,
              height: 450,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFDFDFFF)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Padding(
                padding:const  EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'First Name',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Color(0xFFFF5C5C),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    customFormField(),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Last Name',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Color(0xFFFF5C5C),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    customFormField(),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Email',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Color(0xFFFF5C5C),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    customFormField(),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Phone',
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Color(0xFFFF5C5C),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    customFormField(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            customElavatedButton(ontap: () {
              Get.to( VehicleInformationView());
            })
          ],
        ),
      ),
    ));
  }
}
