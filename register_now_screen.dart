import 'package:flutter/material.dart';
import 'package:workshala_csi/core/app_export.dart';
import 'package:workshala_csi/widgets/custom_elevated_button.dart';
import 'package:workshala_csi/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterNowScreen extends StatelessWidget {
  RegisterNowScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController firstnameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroupOrange300,
                          height: 135.v,
                          width: 163.h),
                      SizedBox(height: 20.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "WORK",
                                style: CustomTextStyles.displaySmallPrimary_1),
                            TextSpan(
                                text: "SHALA",
                                style: theme.textTheme.displaySmall)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 27.v),
                      _buildFirstName(context),
                      SizedBox(height: 21.v),
                      _buildLastName(context),
                      SizedBox(height: 23.v),
                      _buildEmail(context),
                      SizedBox(height: 27.v),
                      _buildFirstname(context),
                      SizedBox(height: 26.v),
                      _buildPassword(context),
                      SizedBox(height: 27.v),
                      _buildConfirmpassword(context),
                      SizedBox(height: 30.v),
                      _buildSignUp(context),
                      SizedBox(height: 20.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtIfyoualreadyregistered(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 62.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "If you already registered ",
                                            style: CustomTextStyles
                                                .bodyMediumInterGray500),
                                        TextSpan(
                                            text: "Log In",
                                            style: CustomTextStyles
                                                .labelLargeInterPrimaryBold)
                                      ]),
                                      textAlign: TextAlign.left)))),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 7.h),
        child: CustomTextFormField(
            controller: firstNameController, hintText: "First Name"));
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 7.h),
        child: CustomTextFormField(
            controller: lastNameController, hintText: "Last Name"));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 7.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Email",
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildFirstname(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: CustomTextFormField(
            controller: firstnameController,
            hintText: "Mobile",
            textInputType: TextInputType.phone));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 7.h),
        child: CustomTextFormField(
            controller: confirmpasswordController,
            hintText: "Confirm Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        height: 45.v,
        text: "Sign Up",
        margin: EdgeInsets.only(left: 16.h, right: 20.h),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToDeepPurpleFcDecoration,
        buttonTextStyle: CustomTextStyles.titleMediumInterWhiteA700,
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Navigates to the categoriesScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.categoriesScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtIfyoualreadyregistered(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
