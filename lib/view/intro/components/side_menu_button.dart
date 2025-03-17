import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../res/constants.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback? onTap;
  const MenuButton({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(milliseconds: 200),
          builder: (context, value, child) {
            return InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: defaultPadding * 2.0 * value,
                width: defaultPadding * 2.0 * value,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.cyan.withOpacity(.5),
                          offset: const Offset(1, 1)),
                      BoxShadow(
                          color: Color(0xFF0044FF).withOpacity(.5),
                          offset: const Offset(-1, -1)),
                    ]),
                child: Center(
                    child: ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                            colors: [Colors.cyan, Color(0xFF0044FF)])
                        .createShader(bounds);
                  },
                  child: Icon(
                    // Icons.menu,
                    FontAwesomeIcons.info,
                    color: Colors.white,
                    size: defaultPadding * 1.2 * value,
                  ),
                )),
              ),
            );
          },
        ),
        const Spacer(
          flex: 5,
        )
      ],
    );
  }
}
