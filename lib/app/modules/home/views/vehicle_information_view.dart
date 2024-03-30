import 'package:car_rental/app/modules/home/controllers/home_controller.dart';
import 'package:car_rental/app/modules/home/views/additional_charges_view.dart';
import 'package:car_rental/custom_widgets/custom_arrow_back.dart';
import 'package:car_rental/custom_widgets/custom_elavated_button.dart';
import 'package:car_rental/custom_widgets/custom_texfromfield.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:get/get.dart';

class VehicleInformationView extends GetView {
  // ignore: use_super_parameters
  VehicleInformationView({Key? key}) : super(key: key);
  final _homecontroller = Get.put(HomeController());

  // Initial Selected Value
  String? dropdownvalue; // Changed to nullable String

  // List of items in our dropdown menu
  var items = [
    'Toyota',
    'Honda',
    'Ford',
    'Chevrolet',
  ];

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
                'Vehicle Information',
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
                height: 220,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDFDFFF)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Vehicle Type',
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

                      ///////////////////////////////////////////////////////////
                      customFormField(
                          hintext: "Sedan",
                          suffixicon: InkWell(
                            onTap: () {},
                            child: Obx(() => DropdownButton(
                                  // Initial Value
                                  value: _homecontroller.dropdownvalue.value,

                                  // Down Arrow Icon
                                  icon: const Icon(Icons.keyboard_arrow_down),

                                  // Array list of items
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),

                                  // After selecting the desired option, it will
                                  // change button value to selected value
                                  onChanged: (String? newValue) {
                                    _homecontroller
                                        .updateSelectedValue(newValue!);
                                  },
                                )),
                          )),

                      //////////////////////////////////////////////////////////////
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Vehicle Model',
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
                          hintext: "Sedan",
                          suffixicon: const Icon(
                            Icons.search,
                            color: Color(0xFF5D5CFF),
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              /////////////////////////////////////////////////////////////////////////////
              Container(
                width: 345,
                height: 190,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDFDFFF)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          CachedNetworkImage(
                            imageUrl: _homecontroller.mapdetails?["data"]?[0]?["imageURL"] ?? "",
                            height: 70, width: 140,
                                
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),

                          


                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Toyota Camry',
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 17,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/user.png",
                                      height: 12,
                                      width: 12,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      '4 seat',
                                      style: TextStyle(
                                        color: Color(0xFF928F9C),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/bag.png",
                                      height: 12,
                                      width: 12,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      '3 bags',
                                      style: TextStyle(
                                        color: Color(0xFF928F9C),
                                        fontSize: 14,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: Color(0xFFD6D6FF),
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${_homecontroller.mapdetails?["data"]?[0]?["rates"]?["hourly"]?.toString() ?? "N/A"} Hour',
                            style: const TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontSize: 13,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '${_homecontroller.mapdetails?["data"]?[0]?["rates"]?["daily"]?.toString() ?? "N/A"} Day',
                            style: const TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontSize: 13,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '${_homecontroller.mapdetails?["data"]?[0]?["rates"]?["weekly"]?.toString() ?? "N/A"} Week',
                            style: const TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontSize: 13,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              customElavatedButton(ontap: () {
                Get.to(AdditionalChargesView());
              })
            ],
          ),
        ),
      ),
    );
  }
}
