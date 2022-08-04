import 'package:flutter/material.dart';
import 'package:mvvm_templet/common/widgets/app_drawar.dart';
import 'package:mvvm_templet/common/widgets/custom_appbar.dart';
import 'package:mvvm_templet/screens/home/home_viewmodel.dart';
import 'package:mvvm_templet/screens/home/widgets/home_body.dart';
import 'package:mvvm_templet/screens/view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return View(
      builder: (_, viewmodel, __) {
        return Scaffold(
          appBar: const CustomAppbar(
            automaticallyImplyLeading: true,
          ),
          body: HomeBody(
            homeViewmodel: viewmodel,
          ),
          drawer: const CustomDrawar(),
        );
      },
      viewmodel: HomeViewmodel(),
    );
  }
}
