import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final _dio = Dio();

  // trying to fetch list
  final mapdetails = {}.obs;
  void fetchListData() async {
    try {
      final detailsdata = await _dio
          .get("https://exam-server-7c41747804bf.herokuapp.com/carsList");

      mapdetails.value = detailsdata.data;
      print(mapdetails);
      print(detailsdata.data);
    } catch (e) {
      print(e);
    }
  }


    
     // Define your observable variable
  var dropdownvalue = 'Toyota'.obs;

  // Function to update the selected value
  void updateSelectedValue(String newValue) {
    dropdownvalue.value = newValue;
  }







  @override
  void onInit() {
   
    fetchListData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
