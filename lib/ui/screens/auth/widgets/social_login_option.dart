import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class SocialLoginsOption extends StatelessWidget {
  const SocialLoginsOption({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OR CONNECT USING',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 3.1.h),
        //Spacer(),
        _SocialLogins(),
        SizedBox(height: 3.1.h),
      ],
    );
  }
}

class _SocialLogins extends StatelessWidget {
  const _SocialLogins({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SocialItem(icon: FontAwesomeIcons.google),
        SizedBox(width: 10),
        _SocialItem(icon: FontAwesomeIcons.facebook),
        SizedBox(width: 10),
        _SocialItem(icon: FontAwesomeIcons.twitter),
      ],
    );
  }
}

class _SocialItem extends StatelessWidget {
  const _SocialItem({
    Key key,
    this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: CustomColors.backgroundColor.withOpacity(0.3),
          shape: BoxShape.circle,
          border: Border.all(color: CustomColors.moodyBlue)),
      child: Icon(
        icon,
        color: CustomColors.moodyBlue,
        size: 17.0.sp,
      ),
    );
  }
}
