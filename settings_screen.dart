import 'package:flutter/material.dart';
import 'package:workshala_csi/core/app_export.dart';
import 'package:workshala_csi/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:workshala_csi/widgets/app_bar/appbar_subtitle.dart';
import 'package:workshala_csi/widgets/app_bar/custom_app_bar.dart';
import 'package:workshala_csi/widgets/custom_switch.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Settings",
                  style: CustomTextStyles.titleLargePrimary23,
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMaterialSymbol,
                      height: 36.v,
                      width: 37.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 7.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "Account",
                        style: CustomTextStyles.titleLargePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Edit Profile",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Change Password",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Privacy",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 42.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMaterialSymbolPrimary,
                      height: 36.v,
                      width: 37.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "Notification",
                        style: CustomTextStyles.titleLargePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              _buildFiftyNine(context),
              SizedBox(height: 20.v),
              _buildSixty(context),
              SizedBox(height: 42.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIcBaselineMis,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "Other",
                        style: CustomTextStyles.titleLargePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              _buildFiftySix(context),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: _buildFiftyEight(
                  context,
                  regionName: "Language",
                  countryName: "English",
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: _buildFiftyEight(
                  context,
                  regionName: "Region",
                  countryName: "India",
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 71.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse1,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 5.v,
          bottom: 5.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Vidita Singh",
        margin: EdgeInsets.only(left: 17.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Notification",
            style: theme.textTheme.titleLarge,
          ),
          CustomSwitch(
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Updates",
            style: theme.textTheme.titleLarge,
          ),
          CustomSwitch(
            value: isSelectedSwitch1,
            onChange: (value) {
              isSelectedSwitch1 = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Dark Mode",
            style: theme.textTheme.titleLarge,
          ),
          CustomSwitch(
            value: isSelectedSwitch2,
            onChange: (value) {
              isSelectedSwitch2 = value;
            },
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFiftyEight(
    BuildContext context, {
    required String regionName,
    required String countryName,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            regionName,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.gray800,
            ),
          ),
        ),
        Container(
          width: 79.h,
          margin: EdgeInsets.only(top: 3.v),
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.outlineGray80044,
          child: Text(
            countryName,
            style: CustomTextStyles.titleSmallLatoGray50001.copyWith(
              color: appTheme.gray50001,
            ),
          ),
        ),
      ],
    );
  }
}
