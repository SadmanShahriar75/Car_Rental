import 'package:car_rental/app/modules/home/views/summary_view.dart';
import 'package:car_rental/custom_widgets/custom_arrow_back.dart';
import 'package:car_rental/custom_widgets/custom_elavated_button.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

// ignore: must_be_immutable
class AdditionalChargesView extends GetView {
  AdditionalChargesView({Key? key}) : super(key: key);

  bool _isChecked = true;

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
                'Additional Charges',
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
                height: 180,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDFDFFF)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool? value) {
                                    _isChecked = value ?? false;
                                  }),
                             const  Text(
                                'Collision Damage Waiver',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                         const Text('\$9.00',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool? value) {
                                    _isChecked = value ?? false;
                                  }),
                            const  Text(
                                'Liability Insurance',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                      const    Text('\$15.00',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool? value) {
                                    _isChecked = value ?? false;
                                  }),
                            const  Text(
                                'Rental Tax',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        const  Text('\$11.5%',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 320,
              ),
              customElavatedButton(ontap: () {
                Get.to( SummaryView());
              })
            ],
          ),
        ),
      ),
    );
  }
}
