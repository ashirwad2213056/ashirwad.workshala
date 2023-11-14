import 'package:flutter/material.dart';
import 'package:workshala_csi/core/app_export.dart';
import 'package:workshala_csi/widgets/app_bar/appbar_leading_image.dart';
import 'package:workshala_csi/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:workshala_csi/widgets/app_bar/custom_app_bar.dart';
import 'package:workshala_csi/widgets/custom_elevated_button.dart';
import 'package:workshala_csi/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                    child: Column(children: [
                      Container(
                          width: 298.h,
                          margin: EdgeInsets.only(left: 10.h, right: 12.h),
                          child: Text(
                              "Please enter your e-mail address. you will receive an  e-mail along with a link which can be  used to reset your password",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallRobotoBlack900)),
                      SizedBox(height: 27.v),
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "Email  ID",
                          hintStyle: CustomTextStyles.bodyMediumRobotoBlack900,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          borderDecoration:
                              TextFormFieldStyleHelper.outlinePrimary,
                          fillColor: appTheme.blueGray100A8),
                      SizedBox(height: 18.v),
                      CustomElevatedButton(
                          height: 45.v,
                          text: "Submit",
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallRobotoWhiteA700,
                          onPressed: () {
                            onTapSubmit(context);
                          }),
                      SizedBox(height: 29.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text:
                                    "I am  not receiving password reset email.",
                                style:
                                    CustomTextStyles.bodySmallRobotoBlack90012),
                            TextSpan(
                                text: " Need help?",
                                style: CustomTextStyles.labelLargeRobotoPrimary)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 19.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitleThree(
            text: "Forgot Password", margin: EdgeInsets.only(left: 12.h)));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
