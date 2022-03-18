import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zekr/view/widgets/hesn_elmoslem_widget/un_counted_widget.dart';
import 'package:zekr/view/widgets/hesn_elmoslem_widget/zekr_container_widget.dart';
import 'package:zekr/view/widgets/home_screen_widgets/app_bar_container_gradient.dart';

import '../../../logic/controller/out_home_controller.dart';

class Roqia extends StatelessWidget {
  Roqia({Key? key}) : super(key: key);
  final controller = Get.put(OutHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          flexibleSpace: AppBarGradient(),
          centerTitle: true,
          title: Text(
            'الرُّقية الشرعية',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: controller.roqiaZekrScreen.length == 0
              ? 0
              : controller.roqiaZekrScreen.length,
          itemBuilder: (_, index) {
            return GetBuilder<OutHomeController>(
              builder: (_) {
                return UnCounted(
                    zekrBody: controller.roqiaZekrScreen[index].zekr.toString(),
                    category:
                    controller.roqiaZekrScreen[index].category.toString());
              },
            );
          },
        ));
  }
}
