import 'package:book_reader/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_home_app_bar.dart';
import 'featured_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomHomeAppBar(),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: MainBookListView(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0,top: 40.0),
            child: Text('Best Seller',style: Styles.mediumTitle,),
          )




        ],
      ),
    );
  }
}
