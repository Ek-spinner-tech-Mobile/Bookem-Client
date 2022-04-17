import 'package:flutter/material.dart';

import '../../ui/widgets.dart';

class Experts extends StatelessWidget {
  const Experts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
        color: Colors.grey,
        child:
    GridView.builder(
        itemCount: 20,
        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisExtent: 180,
            mainAxisSpacing: 8),
        itemBuilder: (context, index) {
      return ExpertsRow() ;
    })

    );
  }
}
