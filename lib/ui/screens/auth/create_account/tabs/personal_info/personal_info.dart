import 'package:digital_clinic/ui/screens/auth/create_account/tabs/personal_info/layouts/enter_address.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/components/input_field.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/personal_info/layouts/select_gender.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/personal_info/layouts/select_user_type.dart';
import 'package:digital_clinic/ui/screens/auth/create_account/tabs/personal_info/layouts/upload_photo.dart';
import 'package:digital_clinic/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalInfoTab extends StatefulWidget {
  @override
  _PersonalInfoTabState createState() => _PersonalInfoTabState();
}

class _PersonalInfoTabState extends State<PersonalInfoTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GenderStatusProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SelectUserTypeColorProvider(),
        ),
      ],
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Text(
                'Complete your profile please. This info might be useful for your doctors',
              ),
              SizedBox(height: 15),
              UploadPhoto(),
              Divider(
                color: Colors.grey[200],
                thickness: 3.0,
              ),
              // user select either doctor or a patient
              SelectedUserType(),
              SizedBox(height: 15),
              InputField(
                label: 'FULL NAME',
                hintText: 'Enter your full name',
              ),
              SizedBox(height: 15),
              SelectGender(),
              SizedBox(height: 15),
              InputField(
                label: 'AGE',
                hintText: 'Enter your age',
              ),
              SizedBox(height: 15),
              Divider(
                color: Colors.grey[200],
                thickness: 3.0,
              ),
              SizedBox(height: 15),
              InputField(
                label: 'CITY',
                hintText: 'Enter your city',
              ),
              SizedBox(height: 15),
              Address(),
              SizedBox(height: 15),
              InputField(
                label: 'EMERGENCY NUMBER',
                hintText: 'Enter the number',
              ),
              SizedBox(height: 15),
              CustomButton(
                label: 'NEXT',
                onPressed: () {
                  // move to health tab
                  DefaultTabController.of(context).animateTo(1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
