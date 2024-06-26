import 'package:flutter/material.dart';
import 'package:suraj_portfolio_profile/res/constants.dart';
import 'package:suraj_portfolio_profile/views/home/components/social_media_column.dart';

class SocialMediaIconList extends StatelessWidget {
  const SocialMediaIconList({Key? key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            Colors.white70.withOpacity(0.2),
            buttonColor.withOpacity(0.2),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(
          color: buttonColor.withOpacity(0.2),
          width: 2,
        ),
      ),
      child: const Center(child: SocialMediaIconColumn()),
    );
  }
}
//height: displayHeight(context) * 0.30,
      // width: displayWidth(context) * 0.04,