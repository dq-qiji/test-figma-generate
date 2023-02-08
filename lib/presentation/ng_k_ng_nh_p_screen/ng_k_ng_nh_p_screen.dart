import 'controller/ng_k_ng_nh_p_controller.dart';
import 'package:c_qun_s_application2/core/app_export.dart';
import 'package:c_qun_s_application2/widgets/custom_button.dart';
import 'package:c_qun_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class NgKNgNhPScreen extends GetWidget<NgKNgNhPController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgTime,
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(32.00),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(left: 64)),
                      Container(
                          height: getVerticalSize(519.00),
                          width: size.width,
                          margin: getMargin(top: 48),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.img43541191,
                                height: getVerticalSize(519.00),
                                width: getHorizontalSize(430.00),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 16, top: 15),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_ch_o_m_ng_b_n_n2".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600)),
                                          TextSpan(
                                              text: "lbl_titotsina".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.cyan600,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left)))
                          ])),
                      CustomButton(
                          height: 56,
                          width: 398,
                          text: "lbl_ng_nh_p".tr,
                          margin: getMargin(top: 24)),
                      CustomButton(
                          height: 56,
                          width: 398,
                          text: "lbl_ng_k".tr,
                          margin: getMargin(top: 16),
                          variant: ButtonVariant.FillCyan100,
                          fontStyle: ButtonFontStyle.InterMedium16Cyan600),
                      Padding(
                          padding: getPadding(top: 33, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(176.00),
                                    margin: getMargin(top: 6, bottom: 10),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray700)),
                                Padding(
                                    padding: getPadding(left: 24),
                                    child: Text("lbl_ho_c".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(176.00),
                                    margin:
                                        getMargin(left: 25, top: 6, bottom: 10),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray700))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 151, right: 151, bottom: 63),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgFire,
                      height: getSize(32.00),
                      width: getSize(32.00),
                      radius: BorderRadius.circular(getHorizontalSize(6.00))),
                  CustomIconButton(
                      height: 32,
                      width: 32,
                      margin: getMargin(left: 16),
                      onTap: () {
                        onTapBtnFacebook();
                      },
                      child:
                          CustomImageView(svgPath: ImageConstant.imgFacebook)),
                  CustomImageView(
                      svgPath: ImageConstant.imgGoogle,
                      height: getSize(32.00),
                      width: getSize(32.00),
                      radius: BorderRadius.circular(getHorizontalSize(6.00)),
                      margin: getMargin(left: 16),
                      onTap: () {
                        onTapImgGoogle();
                      })
                ]))));
  }

  onTapBtnFacebook() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapImgGoogle() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
