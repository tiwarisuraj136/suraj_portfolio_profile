import 'package:flutter/material.dart';
import 'package:suraj_portfolio_profile/res/size_helpers.dart';
import 'package:suraj_portfolio_profile/views/home/components/social_icon.dart';
import 'package:suraj_portfolio_profile/views/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          SocialMediaIcon(
            onTap: () {
              openEmail(email: "tiwarisuraj136@gmail.com");
            },
            icon: 'email2.svg',
            height: displayHeight(context) * 0.035,
            width: displayWidth(context) * 0.035,
          ),
          const Spacer(),
          SocialMediaIcon(
            icon: 'github.svg',
            onTap: () => launchUrlString("https://github.com/tiwarisuraj136"),
            height: displayHeight(context) * 0.030,
            width: displayWidth(context) * 0.030,
          ),
          const Spacer(),
          SocialMediaIcon(
            icon: 'linkedln.svg',
            onTap: () =>
                launchUrlString("https://linkedin.com/in/suraj-tiwari-030747199"),
            height: displayHeight(context) * 0.030,
            width: displayWidth(context) * 0.030,
          ),
          const Spacer(),
        /*  SocialMediaIcon(
            icon: 'dribble.svg',
            onTap: () => launchUrlString("https://dribbble.com/ankit-me180898"),
            height: displayHeight(context) * 0.030,
            width: displayWidth(context) * 0.030,
          ),
          const Spacer(),*/
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          SocialMediaIcon(
            onTap: () {
              openEmail(email: "tiwarisuraj136@gmail.com");
            },
            icon: 'email2.svg',
            height: displayHeight(context) * 0.030,
            width: displayWidth(context) * 0.030,
          ),
          const SizedBox(
            width: 16,
          ),
          SocialMediaIcon(
            icon: 'github.svg',
            onTap: () => launchUrlString("https://github.com/tiwarisuraj136"),
            height: displayHeight(context) * 0.025,
            width: displayWidth(context) * 0.025,
          ),
          const SizedBox(
            width: 16,
          ),
          SocialMediaIcon(
            icon: 'linkedln.svg',
            onTap: () =>
                launchUrlString("https://linkedin.com/in/suraj-tiwari-030747199"),
            height: displayHeight(context) * 0.025,
            width: displayWidth(context) * 0.025,
          ),
          const SizedBox(
            width: 16,
          ),
        /*  SocialMediaIcon(
            icon: 'dribble.svg',
            onTap: () => launchUrlString("https://dribbble.com/ankit-me180898"),
            height: displayHeight(context) * 0.025,
            width: displayWidth(context) * 0.025,
          ),*/
        ],
      ),
      mobile: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          SocialMediaIcon(
            onTap: () {
              openEmail(email: "tiwarisuraj136@gmail.com");
            },
            icon: 'email2.svg',
            height: displayHeight(context) * 0.030,
            width: displayWidth(context) * 0.030,
          ),
          const SizedBox(
            width: 16,
          ),
          SocialMediaIcon(
            icon: 'github.svg',
            onTap: () => launchUrlString("https://github.com/tiwarisuraj136"),
            height: displayHeight(context) * 0.025,
            width: displayWidth(context) * 0.025,
          ),
          const SizedBox(
            width: 16,
          ),
          SocialMediaIcon(
            icon: 'linkedln.svg',
            onTap: () =>
                launchUrlString("https://linkedin.com/in/suraj-tiwari-030747199"),
            height: displayHeight(context) * 0.025,
            width: displayWidth(context) * 0.025,
          ),
          const SizedBox(
            width: 16,
          ),
        /*  SocialMediaIcon(
            icon: 'dribble.svg',
            onTap: () => launchUrlString("https://dribbble.com/ankit-me180898"),
            height: displayHeight(context) * 0.025,
            width: displayWidth(context) * 0.025,
          ),*/
        ],
      ),
    );
  }

  Future<void> openEmail({required String email}) async {
    try {
      final Uri launchUri = Uri(scheme: 'mailto', path: email);
      debugPrint('canLaunchUrl openEmail: ${await canLaunchUrl(launchUri)}');
      if (await canLaunchUrl(launchUri)) {
        await launchUrl(launchUri);
      }
    } catch (e) {
      debugPrint('openEmail : ${e.toString()}');
    }
  }
}
