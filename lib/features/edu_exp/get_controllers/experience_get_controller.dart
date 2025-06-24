import 'package:get/get.dart';
class ExperienceGetController extends GetxController {
  RxInt selectedEmploymentTypeIndex = 0.obs;

  List<String> employmentTypes = [
    "FULL-TIME",
    "PART-TIME",
    "CONTRACTOR",
    "INTERN",
  ];
}
