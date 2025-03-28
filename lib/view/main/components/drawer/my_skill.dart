import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    image!,
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  // const Spacer(),
                  // Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              // const SizedBox(
              //   height: defaultPadding / 2,
              // ),
              // LinearProgressIndicator(
              //   value: value,
              //   backgroundColor: Colors.black,
              //   color: Colors.cyan,
              // ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 20,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.96,
          title: 'Flutter',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.96, title: 'Dart', image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'Laravel',
          image: 'assets/icons/laravel.png',
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.5, title: 'PHP', image: 'assets/icons/php.png'),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          title: 'NodeJS',
          image: 'assets/icons/nodejs.png',
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.5, title: 'Javascript', image: 'assets/icons/js.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.8,
            title: 'Firebase',
            image: 'assets/icons/firebase.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.85,
            title: 'Shared Preferences',
            image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.8,
            title: 'Responsive Design',
            image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.9,
            title: 'Clean Architecture',
            image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.5, title: 'GetX', image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.93,
            title: 'Provider',
            image: 'assets/icons/dart.png'),
      ],
    );
  }
}
