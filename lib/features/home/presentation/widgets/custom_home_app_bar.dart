import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/assets_data.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 24.0),
      child: Row(
        children: [
          Image.asset(AssetsData.logoImg,height: 18.0,),
          const Spacer(),
          IconButton(onPressed: (){}, icon:
          const Icon(FontAwesomeIcons.magnifyingGlass,size: 20.0,),),

        ],
      ),
    );
  }
}
