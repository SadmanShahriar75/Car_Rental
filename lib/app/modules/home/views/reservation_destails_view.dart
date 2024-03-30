import 'package:car_rental/app/modules/home/views/customer_information_view.dart';
import 'package:car_rental/custom_widgets/custom_elavated_button.dart';
import 'package:car_rental/custom_widgets/custom_texfromfield.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

// ignore: must_be_immutable
class ReservationDestailsView extends GetView {
  // ignore: use_super_parameters
  ReservationDestailsView({Key? key}) : super(key: key);

  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      _selectedDate = pickedDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Reservation Details',
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

            // here is the container box
            Container(
              width: 345,
              height: 500,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFDFDFFF)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Reservation ID',
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
                            text: 'Pickup Date',
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
                    customFormField(
                        hintext: "Select Date and Time",
                        suffixicon: InkWell(
                            onTap: () => _selectDate(context),
                            child: Icon(Icons.calendar_month_outlined))),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Return Date',
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
                    customFormField(
                        hintext: "Select Date and Time",
                        suffixicon: InkWell(
                            onTap: () => _selectDate(context),
                            child: const Icon(Icons.calendar_month_outlined))),
                  const   SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Duration',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: TextFormField(
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(15, 15, 20, 15),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xFFD6D6FF)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "1 Week 2 Days",
                              hintStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                   const  SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Discount',
                      style: TextStyle(
                        color: Color(0xFF1A1A1A),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
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

            //custom Elevated button
            const SizedBox(
              height: 50,
            ),
            customElavatedButton( ontap: (){
              Get.to(const CustomerInformationView());

            } ),
          ],
        ),
      ),
    ));
  }
}
