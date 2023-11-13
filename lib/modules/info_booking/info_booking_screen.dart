import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_ui/modules/appBar/appbar_leading_iconbutton.dart';
import 'package:flutter_hotel_booking_ui/modules/appBar/appbar_title.dart';
import 'package:flutter_hotel_booking_ui/modules/appBar/custom_app_bar.dart';
import 'package:flutter_hotel_booking_ui/theme/app_decoration.dart';
import 'package:flutter_hotel_booking_ui/theme/custom_text_style.dart';
import 'package:flutter_hotel_booking_ui/theme/theme_helper.dart';
import 'package:flutter_hotel_booking_ui/utils/image_constant.dart';
import 'package:flutter_hotel_booking_ui/utils/size_utils.dart';
import 'package:flutter_hotel_booking_ui/widgets/custom_icon_button.dart';
import 'package:flutter_hotel_booking_ui/widgets/custom_image_view.dart';
import 'package:flutter_hotel_booking_ui/widgets/custom_text_form_field.dart';

class InfoBookingScreen extends StatelessWidget {
  final String hotelName;

  InfoBookingScreen({Key? key, required this.hotelName})
      : super(
          key: key,
        );

  TextEditingController hvtnController = TextEditingController();

  TextEditingController sinthoiController = TextEditingController();

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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 6.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  Text(
                    "Thông tin khách hàng",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 28.v),
                  CustomTextFormField(
                    controller: hvtnController,
                    hintText: "Họ và tên",
                    hintStyle: theme.textTheme.titleSmall!,
                    borderDecoration:
                        TextFormFieldStyleHelper.outlineSecondaryContainer,
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 18.v),
                  CustomTextFormField(
                    controller: sinthoiController,
                    hintText: "Số điện thoại",
                    hintStyle: theme.textTheme.titleSmall!,
                    borderDecoration:
                        TextFormFieldStyleHelper.outlineSecondaryContainer,
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 18.v),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: "Email",
                    hintStyle: theme.textTheme.titleSmall!,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    borderDecoration:
                        TextFormFieldStyleHelper.outlineSecondaryContainer,
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 31.v),
                  Text(
                    "Chọn lịch đặt/trả phòng",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 28.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 22.v,
                    ),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildUserInfo(context),
                        SizedBox(height: 10.v),
                        Divider(
                          indent: 12.h,
                        ),
                        SizedBox(height: 22.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 31.h,
                            right: 18.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "T2",
                                style: CustomTextStyles.titleMediumGray500,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 28.h),
                                child: Text(
                                  "T3",
                                  style: CustomTextStyles.titleMediumGray500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 28.h),
                                child: Text(
                                  "T4",
                                  style: CustomTextStyles.titleMediumGray500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 28.h),
                                child: Text(
                                  "T5",
                                  style: CustomTextStyles.titleMediumGray500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 28.h),
                                child: Text(
                                  "T6",
                                  style: CustomTextStyles.titleMediumGray500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 28.h),
                                child: Text(
                                  "T7",
                                  style: CustomTextStyles.titleMediumGray500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 27.h),
                                child: Text(
                                  "CN",
                                  style: CustomTextStyles.titleMediumGray500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 31.v),
                        _buildHeader(context),
                        SizedBox(height: 10.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 98.h,
                            margin: EdgeInsets.only(right: 11.h),
                            padding: EdgeInsets.symmetric(vertical: 10.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Text(
                              "Xác nhận",
                              style: CustomTextStyles.titleMediumWhiteA700_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildPreview(context),
                  SizedBox(height: 18.v),
                  _buildRoom(context),
                  SizedBox(height: 23.v),
                  SizedBox(
                    width: 388.h,
                    child: Text(
                      "Phương thức  thanh toán",
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  _buildPaymentOptions(context),
                  SizedBox(height: 21.v),
                  _buildConfirmation(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 70.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgAngleLeftSecondarycontainer,
        margin: EdgeInsets.only(
          left: 40.h,
          top: 27.v,
          bottom: 27.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Thông tin đặt phòng",
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildUserInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(20.h),
            decoration: IconButtonStyleHelper.outlineSecondaryContainerTL10,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              bottom: 16.v,
            ),
            child: Text(
              "Tháng 11, 2023",
              style: CustomTextStyles.titleMediumSecondaryContainer_1,
            ),
          ),
          Spacer(
            flex: 47,
          ),
          CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(20.h),
            decoration: IconButtonStyleHelper.outlineSecondaryContainerTL10,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup13,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      height: 324.v,
      width: 350.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 50.adaptSize,
              width: 50.adaptSize,
              margin: EdgeInsets.only(
                top: 100.v,
                right: 50.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.primary,
                  width: 2.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: _buildEightyNine(
                    context,
                    labelOne: "23",
                    labelTwo: "24",
                    labelThree: "25",
                    labelFour: "26",
                    labelFive: "27",
                    labelSix: "28",
                    labelSeven: "29",
                  ),
                ),
                SizedBox(height: 37.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    right: 19.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "30",
                        style: CustomTextStyles.titleMediumGray300,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 29.h),
                        child: Text(
                          "31",
                          style: CustomTextStyles.titleMediumGray300,
                        ),
                      ),
                      Spacer(
                        flex: 19,
                      ),
                      Text(
                        "1",
                        style: theme.textTheme.titleMedium,
                      ),
                      Spacer(
                        flex: 21,
                      ),
                      Text(
                        "2",
                        style: theme.textTheme.titleMedium,
                      ),
                      Spacer(
                        flex: 20,
                      ),
                      Text(
                        "3",
                        style: theme.textTheme.titleMedium,
                      ),
                      Spacer(
                        flex: 19,
                      ),
                      Text(
                        "4",
                        style: theme.textTheme.titleMedium,
                      ),
                      Spacer(
                        flex: 19,
                      ),
                      Text(
                        "5",
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 37.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    right: 14.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "6",
                        style: theme.textTheme.titleMedium,
                      ),
                      Spacer(
                        flex: 17,
                      ),
                      Text(
                        "7",
                        style: theme.textTheme.titleMedium,
                      ),
                      Spacer(
                        flex: 18,
                      ),
                      Text(
                        "8",
                        style: theme.textTheme.titleMedium,
                      ),
                      Spacer(
                        flex: 17,
                      ),
                      Text(
                        "9",
                        style: theme.textTheme.titleMedium,
                      ),
                      Spacer(
                        flex: 15,
                      ),
                      Text(
                        "10",
                        style: theme.textTheme.titleMedium,
                      ),
                      Spacer(
                        flex: 14,
                      ),
                      Text(
                        "11",
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                      Spacer(
                        flex: 15,
                      ),
                      Text(
                        "12",
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 37.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "13",
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        "14",
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        "15",
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        "16",
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        "17",
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        "18",
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        "19",
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 37.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: _buildEightyNine(
                    context,
                    labelOne: "20",
                    labelTwo: "21",
                    labelThree: "22",
                    labelFour: "23",
                    labelFive: "24",
                    labelSix: "25",
                    labelSeven: "26",
                  ),
                ),
                SizedBox(height: 22.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50.adaptSize,
                      child: Text(
                        "27",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(
                      width: 50.adaptSize,
                      child: Text(
                        "28",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(
                      width: 50.adaptSize,
                      child: Text(
                        "29",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(
                      width: 50.adaptSize,
                      child: Text(
                        "30",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(
                      width: 50.adaptSize,
                      child: Text(
                        "1",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleMediumGray500,
                      ),
                    ),
                    SizedBox(
                      width: 50.adaptSize,
                      child: Text(
                        "2",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleMediumGray500,
                      ),
                    ),
                    SizedBox(
                      width: 50.adaptSize,
                      child: Text(
                        "3",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleMediumGray500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPreview(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineSecondaryContainer4.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Lịch đặt phòng",
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: _buildMonthDay(
              context,
              dateOne: "Check in",
              dateTwo: "Check out",
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Thứ 7",
                  style: CustomTextStyles.headlineLargeSecondaryContainer,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.v),
                  child: CustomIconButton(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    decoration: IconButtonStyleHelper.fillPrimaryTL15,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                    ),
                  ),
                ),
                Text(
                  "Thứ 2",
                  textAlign: TextAlign.right,
                  style: CustomTextStyles.headlineLargeSecondaryContainer,
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: _buildMonthDay(
              context,
              dateOne: "Ngày 11, Tháng 11",
              dateTwo: "Ngày 20, Tháng 11",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRoom(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer4.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: 22.h,
              bottom: 1.v,
            ),
            child: _buildTwenty(
              context,
              textOne: "Phòng",
              textTwo: "01",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              right: 22.h,
              bottom: 1.v,
            ),
            child: _buildTwenty(
              context,
              textOne: "Người lớn",
              textTwo: "02",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: _buildTwenty(
              context,
              textOne: "Trẻ em",
              textTwo: "01",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentOptions(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer4.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCreditCard,
                height: 25.v,
                width: 32.h,
                margin: EdgeInsets.symmetric(vertical: 7.v),
              ),
              Container(
                height: 39.v,
                width: 276.h,
                margin: EdgeInsets.only(left: 16.h),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 276.h,
                        child: Text(
                          "Thẻ ngân hàng",
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.titleSmallSecondaryContainer_1,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            12.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCamera,
                height: 25.v,
                width: 30.h,
                margin: EdgeInsets.symmetric(vertical: 7.v),
              ),
              Container(
                height: 39.v,
                width: 276.h,
                margin: EdgeInsets.only(left: 18.h),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 276.h,
                        child: Text(
                          "Đặt cọc và thanh toán trực tiếp",
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.titleSmallSecondaryContainer_1,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(
                            12.h,
                          ),
                          border: Border.all(
                            color: theme.colorScheme.secondaryContainer
                                .withOpacity(1),
                            width: 1.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIconPaypal,
                height: 25.v,
                width: 37.h,
                margin: EdgeInsets.symmetric(vertical: 7.v),
              ),
              Container(
                height: 39.v,
                width: 276.h,
                margin: EdgeInsets.only(left: 11.h),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 276.h,
                        child: Text(
                          "Thẻ Paypal",
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.titleSmallSecondaryContainer_1,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 25.v,
                        width: 24.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(
                            12.h,
                          ),
                          border: Border.all(
                            color: theme.colorScheme.secondaryContainer
                                .withOpacity(1),
                            width: 1.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmation(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineSecondaryContainer5.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: SizedBox(
        width: 388.h,
        child: Text(
          "Xác nhận",
          maxLines: null,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: CustomTextStyles.titleLargeWhiteA700,
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildEightyNine(
    BuildContext context, {
    required String labelOne,
    required String labelTwo,
    required String labelThree,
    required String labelFour,
    required String labelFive,
    required String labelSix,
    required String labelSeven,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelOne,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Text(
          labelTwo,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Text(
          labelThree,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Text(
          labelFour,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Text(
          labelFive,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Text(
          labelSix,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Text(
          labelSeven,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildMonthDay(
    BuildContext context, {
    required String dateOne,
    required String dateTwo,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 170.h,
          child: Text(
            dateOne,
            maxLines: null,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleSmallSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
            ),
          ),
        ),
        Container(
          width: 170.h,
          margin: EdgeInsets.only(left: 21.h),
          child: Text(
            dateTwo,
            maxLines: null,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: CustomTextStyles.titleSmallSecondaryContainer.copyWith(
              color: theme.colorScheme.secondaryContainer.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTwenty(
    BuildContext context, {
    required String textOne,
    required String textTwo,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(
              width: 80.h,
              child: Text(
                textOne,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleSmallSecondaryContainer_1.copyWith(
                  color: theme.colorScheme.secondaryContainer.withOpacity(1),
                ),
              ),
            ),
            Text(
              textTwo,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallSecondaryContainer_1.copyWith(
                color: theme.colorScheme.secondaryContainer.withOpacity(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
