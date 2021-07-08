import 'package:flutter/material.dart';

class GridePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          childAspectRatio: (itemWidth / itemHeight),
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          crossAxisCount: 4,
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      );
  }
}