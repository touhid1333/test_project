import 'package:flutter/material.dart';
import 'package:mvvm_templet/screens/home/home_viewmodel.dart';
import 'package:mvvm_templet/screens/home/widgets/list_details_body.dart';

class HomeBody extends StatelessWidget {
  final HomeViewmodel homeViewmodel;

  const HomeBody({
    Key? key,
    required this.homeViewmodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: homeViewmodel.getList().length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(homeViewmodel.getList()[index].name),
            subtitle: Text(homeViewmodel.getList()[index].phone),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ListDetails(
                  list: homeViewmodel.getList()[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
