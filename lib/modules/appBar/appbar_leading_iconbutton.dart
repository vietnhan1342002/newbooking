import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_ui/utils/image_constant.dart';
import 'package:flutter_hotel_booking_ui/utils/size_utils.dart';
import 'package:flutter_hotel_booking_ui/widgets/custom_icon_button.dart';
import 'package:flutter_hotel_booking_ui/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 30.adaptSize,
          width: 30.adaptSize,
          decoration: IconButtonStyleHelper.fillGrayTL5,
          child: CustomImageView(
            imagePath: ImageConstant.imgAngleLeftSecondarycontainer,
          ),
        ),
      ),
    );
  }
}
