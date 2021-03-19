import 'package:digital_clinic/models/pageview.dart';
import 'package:digital_clinic/ui/screens/onboarding/viewmodel/pageview.dart';
import 'package:digital_clinic/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

class PageViewBody extends StatefulWidget {
  const PageViewBody({
    Key key,
  }) : super(key: key);

  @override
  _PageViewBodyState createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  @override
  Widget build(BuildContext context) {
    var pageViewModel = context.watch<OnboardingViewModel>();

    return Container(
      width: double.infinity,
      height: 72.4.h,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: PageController(initialPage: 0),
        itemCount: onboarding.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              _Image(index: index),
              SizedBox(height: 5.0.h),
              _Title(index: index),
              SizedBox(height: 2.0.h),
              _Description(index: index),
              Spacer(),
            ],
          );
        },
        onPageChanged: (pageNo) {
          pageViewModel.updateIndex(pageNo);
        },
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        onboarding[index].description,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 11.0.sp,
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Text(
        onboarding[index].title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.4.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(onboarding[index].img),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            CustomColors.moodyBlue.withOpacity(1.0),
            BlendMode.hardLight,
          ),
        ),
      ),
    );
  }
}