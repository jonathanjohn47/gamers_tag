import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../get_controllers/edu_exp_get_controller.dart';

class EduExpScreen extends StatelessWidget {
  EduExpScreen({super.key});

  final EduExpGetController getController = Get.put(EduExpGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return mobileUi();
          } else {
            return webUi();
          }
        },
      ),
    );
  }

  Widget mobileUi() {
    return Container();
  }

  Widget webUi() {
    return Container();
  }
}
