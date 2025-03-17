import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: '+92 322 2884245'),
        AreaInfoText(title: 'Email', text: 'mmuhammadharisofficiall@gmail.com'),
        AreaInfoText(
            title: 'LinkedIn', text: '@muhammad-haris-shoaib-25657b181'),
        AreaInfoText(title: 'Github', text: '@villanharry'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
