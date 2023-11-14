import 'package:flutter/material.dart';
import 'package:workshala_csi/core/app_export.dart';
import 'package:workshala_csi/presentation/homepage_page/homepage_page.dart';
import 'package:workshala_csi/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:workshala_csi/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:workshala_csi/widgets/app_bar/appbar_title.dart';
import 'package:workshala_csi/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:workshala_csi/widgets/app_bar/custom_app_bar.dart';
import 'package:workshala_csi/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSixtyThree(context),
                      SizedBox(height: 64.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMdiCardsHeart,
                                    height: 36.adaptSize,
                                    width: 36.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.h, top: 4.v, bottom: 7.v),
                                    child: Text("Your Favorite",
                                        style: theme.textTheme.titleLarge))
                              ])),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRiSecurePaymentLine,
                                height: 34.adaptSize,
                                width: 34.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 26.h, top: 7.v, bottom: 2.v),
                                child: Text("payment",
                                    style: theme.textTheme.titleLarge))
                          ])),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEpPromotion,
                                height: 33.adaptSize,
                                width: 33.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 27.h, top: 5.v, bottom: 3.v),
                                child: Text("tell your friends",
                                    style: theme.textTheme.titleLarge))
                          ])),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant
                                    .imgEmojioneMonotoneLoudspeaker,
                                height: 30.adaptSize,
                                width: 30.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 28.h, top: 3.v, bottom: 2.v),
                                child: Text("promotions",
                                    style: theme.textTheme.titleLarge))
                          ])),
                      SizedBox(height: 25.v),
                      GestureDetector(
                          onTap: () {
                            onTapSettings(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgMaterialSymbolsSettings,
                                    height: 33.adaptSize,
                                    width: 33.adaptSize),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 27.h, top: 7.v),
                                    child: Text("settings",
                                        style: theme.textTheme.titleLarge))
                              ]))),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowRight,
                                height: 33.adaptSize,
                                width: 33.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 26.h, top: 6.v, bottom: 2.v),
                                child: Text("log out",
                                    style: theme.textTheme.titleLarge))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 168.v,
        centerTitle: true,
        title: Row(children: [
          AppbarTitleCircleimage(imagePath: ImageConstant.imgEllipse1120x120),
          Padding(
              padding: EdgeInsets.only(left: 17.h, top: 9.v, bottom: 5.v),
              child: Column(children: [
                AppbarTitle(text: "Vidita Singh"),
                SizedBox(height: 4.v),
                AppbarSubtitleOne(
                    text: "India",
                    margin: EdgeInsets.only(left: 3.h, right: 122.h)),
                SizedBox(height: 8.v),
                AppbarSubtitleTwo(
                    text: "since 2022",
                    margin: EdgeInsets.only(left: 3.h, right: 74.h))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildSixtyThree(BuildContext context) {
    return Container(
        height: 78.v,
        width: 336.h,
        margin: EdgeInsets.only(left: 5.h),
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 51.h, vertical: 10.v),
                  decoration: AppDecoration.outlineGray800,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Text("wallet", style: theme.textTheme.titleLarge),
                        SizedBox(height: 2.v),
                        Text("45.78",
                            style: CustomTextStyles.titleLargePrimary21)
                      ]))),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 43.h, vertical: 10.v),
                  decoration: AppDecoration.outlineGray800,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Text("Courses", style: theme.textTheme.titleLarge),
                        SizedBox(height: 2.v),
                        Text("3 Active",
                            style: CustomTextStyles.titleLargePrimary21)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Courses:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Jobs:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }
}
