import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';


class MainBookListView extends StatelessWidget {
  const MainBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox (
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.separated(
        separatorBuilder: (context, index) => Container(width: 16.0,),
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => const CustomListViewItem(),),
    );
  }
}
