import 'package:book_reader/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.red,
          image: const DecorationImage(
            image: AssetImage(AssetsData.testImg,),fit: BoxFit.fill
          )
        ),

      ),
    );
  }
}
