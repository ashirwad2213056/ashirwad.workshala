import 'package:flutter/material.dart';
import 'package:workshala_csi/core/app_export.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary4.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          CustomImageView(
            imagePath: ImageConstant.imgFlagPrimary,
            height: 42.v,
            width: 46.h,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "Crypto",
              style: CustomTextStyles.bodySmallBlack90012,
            ),
          ),
        ],
      ),
    );
  }
}
