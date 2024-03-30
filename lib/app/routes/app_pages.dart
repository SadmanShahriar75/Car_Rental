import 'package:car_rental/app/modules/home/views/reservation_destails_view.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  ReservationDestailsView(),
      binding: HomeBinding(),
    ),
  ];
}
