import '../categories_screen/widgets/categories_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:workshala_csi/core/app_export.dart';
import 'package:workshala_csi/widgets/custom_elevated_button.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 357.h,
                margin: EdgeInsets.only(left: 3.h),
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 32.v),
                decoration: AppDecoration.outlinePrimary3
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder52),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 4.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowLeftBlack900,
                                    height: 13.v,
                                    width: 7.h,
                                    margin: EdgeInsets.only(bottom: 8.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text("Categories",
                                        style: CustomTextStyles
                                            .titleMediumInterBlack900))
                              ]))),
                  SizedBox(height: 17.v),
                  SizedBox(
                      width: 315.h,
                      child: Text(
                          "Choose 3-5 catogries and we’ll optimize the\nvacancies for you.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallInterBlack900)),
                  SizedBox(height: 20.v),
                  _buildCategories(context)
                ])),
            bottomNavigationBar: _buildSkip(context)));
  }

  /// Section Widget
  Widget _buildCategories(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.h),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 105.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 51.h,
                    crossAxisSpacing: 51.h),
                physics: BouncingScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return CategoriesItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildSkip(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 29.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomElevatedButton(
              height: 39.v,
              width: 143.h,
              text: "Skip",
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientPrimaryToDeepPurpleFcDecoration,
              buttonTextStyle: CustomTextStyles.titleMediumInterWhiteA700,
              onPressed: () {
                onTapSkip(context);
              }),
          CustomElevatedButton(
              height: 39.v,
              width: 142.h,
              text: "Next",
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientPrimaryToDeepPurpleFcDecoration,
              buttonTextStyle: CustomTextStyles.titleMediumInterWhiteA700,
              onPressed: () {
                onTapNext(context);
              })
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the androidLargeOneScreen when the action is triggered.
  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeOneScreen);
  }

  /// Navigates to the androidLargeOneScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.androidLargeOneScreen);
  }
}
