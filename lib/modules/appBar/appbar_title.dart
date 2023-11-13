import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_ui/theme/custom_text_style.dart';
import 'package:flutter_hotel_booking_ui/theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

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
        child: Text(
          text,
          style: CustomTextStyles.titleSmallSecondaryContainer_1.copyWith(
            color: theme.colorScheme.secondaryContainer.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
