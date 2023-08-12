import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Guide extends StatefulWidget {
  const Guide({super.key});

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  bool idpressed = true;
  bool pwpressed = false;
  bool idEmpty = false;
  bool emailEmpty = false;
  bool confirmEmpty = false;
  bool emailEmpty1 = false;
  bool confirmEmpty1 = false;
  bool buttonNull = true;
  bool buttonNull1 = true;
  bool buttonNull2 = true;
  bool buttonNull3 = true;

  bool pwbuttonNull = true;
  bool pwbuttonNull1 = true;

  String email = '';
  String confirm = '';
  String email1 = '';
  String confirm1 = '';
  String id = '';
  String findid = '';
  String findemail = '';
  int page = 0;
  PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 55.w, right: 55.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          idpressed = true;
                          pwpressed = false;
                          pageController.jumpToPage(0);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, elevation: 0),
                      child: Text(
                        "다운로드",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: idpressed ? Colors.blue : Colors.grey,
                            fontWeight: FontWeight.w600),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          idpressed = false;
                          pwpressed = true;
                          pageController.jumpToPage(1);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, elevation: 0),
                      child: Text(
                        "가이드",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: pwpressed ? Colors.blue : Colors.grey,
                            fontWeight: FontWeight.w600),
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 187.5.w,
                  height: 2.h,
                  decoration: BoxDecoration(
                      color: idpressed ? Colors.blue : Colors.grey),
                ),
                Container(
                  width: 187.5.w,
                  height: 2.h,
                  decoration: BoxDecoration(
                      color: pwpressed ? Colors.blue : Colors.grey),
                ),
              ],
            ),
            Expanded(
                child: PageView(
              controller: pageController,
              onPageChanged: ((value) {
                setState(() {
                  page = value;
                });
                if (value == 0) {
                  setState(() {
                    idpressed = true;
                    pwpressed = false;
                  });
                } else {
                  setState(() {
                    idpressed = false;
                    pwpressed = true;
                  });
                }
              }),
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 180.h, bottom: 15.h),
                        child: Icon(
                          Icons.insert_drive_file,
                          size: 160.h,
                          color: Colors.blue,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, elevation: 2),
                        child: Text(
                          "파일 다운로드",
                          style: TextStyle(
                              fontSize: 25.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: 10.h,
                                bottom: 15.h,
                                left: 10.w,
                                right: 10.w),
                            child: Text(
                              "1단계: STL 파일 준비 및 3D 프린터 설정\n\nSTL 파일 가져오기: 제공한 코드를 바탕으로 블렌더에 코드를 삽입해 확인한 뒤, STL로 변환하여 저장합니다.\n\n3D 프린터 선택: 사용할 3D 프린터를 선택하고, 해당 모델의 재료를 확인합니다. 프린터의 빌드 플레이트 크기와 프린팅 해상도도 고려해야 합니다.\n\n3D 프린터 설정: 선택한 프린터에 맞게 슬라이싱 소프트웨어를 사용하여 프린터 설정을 구성합니다. 인쇄 속도, 레이어 높이, 인쇄 지원 구조 등을 조정합니다.\n\n2단계: 3D 프린트\n\n프린팅 전 확인: 프린트 전에 3D 프린터의 작동 상태를 확인하고, 빌드 플레이트를 깨끗하게 청소합니다.\n\n인쇄: 슬라이싱된 파일을 3D 프린터에 업로드하고 인쇄를 시작합니다. 프린트 중에는 잘못된 층이나 기타 문제가 없는지 주시하며 프린터가 제대로 작동하는지 확인합니다.\n\n인쇄 완료 및 제거: 인쇄가 완료되면 프린트물을 충분히 식힌 뒤 주의하여 제거합니다. 필요한 경우 후속 가공을 위해 서포트를 제거합니다.\n\n3단계: 3D 모델 조립 및 마무리\n\n3D 모델 조립: 프린트한 STL 파일의 여러 부품을 조립합니다. 각 부품의 정확한 위치와 방향을 확인하여 부드러운 조립을 완료합니다.\n\n완성 및 후속 처리: 조립이 완료되면 모델의 외관을 점검하고 필요한 경우 다듬어 DIY 키트를 완성합니다. ",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.black,
                                  fontFamily: 'pretendar'),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
