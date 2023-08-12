import 'dart:convert';

import 'package:ddobagi_app/screens/guide.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

class Chatting extends StatefulWidget {
  const Chatting({super.key});

  @override
  State<Chatting> createState() => _ChattingState();
}

class _ChattingState extends State<Chatting> {
  bool first1 = false;
  bool first2 = false;
  bool first3 = false;
  bool second1 = false;
  bool second2 = false;
  bool second3 = false;
  bool third1 = false;
  bool forth1 = false;
  bool forth2 = false;
  List<String> first = <String>['조명', '레이더', '선풍기'];
  List<String> light1 = <String>['정사면체', '정육면체', '직육면체', '정이십연체', '원통'];
  String lights = "";
  List<String> rader1 = <String>['정육면체', '직육면체'];
  List<String> height1 = <String>['5', '6', '7', '8', '9'];
  List<String> height2 = <String>['5', '6', '7', '8', '9'];
  String heights = "";
  String heights1 = "";
  String raders = "";
  List<String> side1 = <String>['5', '6', '7', '8', '9'];
  String sides = "";
  List<String> led1 = <String>['빨간색', '노란색', '초록색', '3색'];
  String leds = "";
  List<String> board1 = <String>['아두이노', 'ESP32', 'ESP8266', '라즈베리파이', '전용 기판'];
  List<String> board2 = <String>['아두이노', 'ESP32', 'ESP8266', '라즈베리파이', '전용 기판'];
  String boards = "";
  String boards1 = "";
  bool fifth1 = false;
  bool fifth2 = false;
  bool isLoading = false;
  final TextEditingController lastController1 = TextEditingController();
  final TextEditingController lastController2 = TextEditingController();

  // Future<void> postrequest(BuildContext context) async {
  //   String url = 'http://54.193.3.150:8600/chat';

  //   http.Response response = await http.post(Uri.parse(url), body: <String, String>{
  //     'prompt':
  //         "작은 조명를 만들것인데, 이때 가로 : 4cm, 세로 : 4cm, 높이 : 10cm, 이고 직육면체인 조명을 블렌더 파이썬 스크립트를 만들어줘."
  //   });
  //   if (response.statusCode == 200) {
  //     print("성공했습니다");
  //     print(response.bodyBytes);
  //   } else {
  //     print(response.statusCode);
  //     print("실패했습니다");
  //   }
  // }

  Future<void> postrequest(BuildContext context) async {
    setState(() {
      isLoading = true;
    });
    var dio = Dio();
    String url = 'http://192.168.1.46:8600/chat';

    final response = await dio.post(url, data: {
      'prompt':
          '작은 조명를 만들것인데, 이때 가로 : 4cm, 세로 : 4cm, 높이 : 10cm, 이고 직육면체인 조명을 블렌더 파이썬 스크립트를 만들어줘'
    });
    print(response.statusCode);
    print(response.data);
    if (response.statusCode == 200) {
      setState(() {
        isLoading = false;
      });
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder: (_) => const Guide()));
    }
  }

  Future<void> postrequest1(BuildContext context) async {
    setState(() {
      isLoading = true;
    });
    var dio = Dio();
    String url = 'http://192.168.1.46:8600/chat';

    final response = await dio.post(url, data: {
      'prompt':
          '작은 조명를 만들것인데, 이때 가로 : 4cm, 세로 : 4cm, 높이 : 10cm, 이고 직육면체인 조명을 블렌더 파이썬 스크립트를 만들어줘'
    });
    print(response.statusCode);
    print(response.data);
    if (response.statusCode == 200) {
      setState(() {
        isLoading = false;
      });
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder: (_) => const Guide()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: null,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
          child: isLoading
              ? const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SpinKitWaveSpinner(color: const Color(0xffFFD647))
                  ],
                )
              : Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 67.h, left: 33.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Drawing",
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    color: const Color(0xffFFD647),
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Text(
                                  "으로 너만의",
                                  style: TextStyle(
                                      fontSize: 22.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "키트를 제작해봐!",
                            style: TextStyle(
                                fontSize: 22.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 33.w, top: 16.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "무엇을 만들지 알려줘",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff565656),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Stack(
                      children: [
                        AnimatedOpacity(
                          opacity: fifth2 ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 280),
                          child: Padding(
                            padding: EdgeInsets.only(left: 33.w, right: 33.w),
                            child: TextField(
                              controller: lastController2,
                              autofocus: fifth2 ? true : false,
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: const Color(0xff565656),
                                  fontFamily: 'pretender'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: 5.w, right: 0, bottom: 0),
                                hintText: '추가사항을 입력해주세요!',
                                hintStyle: TextStyle(
                                    fontSize: 18.sp,
                                    color: const Color(0xff000000)
                                        .withOpacity(0.6),
                                    fontFamily: 'pretender'),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                // enabledBorder: const UnderlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.grey),
                                // ),
                                // focusedBorder: const UnderlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.grey),
                                // ),
                              ),
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: fifth1 ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 280),
                          child: Padding(
                            padding: EdgeInsets.only(left: 33.w, right: 33.w),
                            child: TextField(
                              controller: lastController1,
                              autofocus: fifth1 ? true : false,
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: const Color(0xff565656),
                                  fontFamily: 'pretender'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: 5.w, right: 0, bottom: 0),
                                hintText: '추가사항을 입력해주세요!',
                                hintStyle: TextStyle(
                                    fontSize: 18.sp,
                                    color: const Color(0xff000000)
                                        .withOpacity(0.6),
                                    fontFamily: 'pretender'),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                // enabledBorder: const UnderlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.grey),
                                // ),
                                // focusedBorder: const UnderlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.grey),
                                // ),
                              ),
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: forth2 ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 280),
                          child: AnimatedPadding(
                            padding: EdgeInsets.only(
                                top: fifth1 || fifth2 ? 70.h : 0),
                            duration: const Duration(milliseconds: 280),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 33.w, right: 33.w),
                                  child: Container(
                                    width: 305.w,
                                    height: 47.h,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.h, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) => Container(
                                                  height: 800.h,
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 40.h,
                                                          left: 25.w,
                                                          bottom: 35.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "보드의 종류를 선택해주세요!",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      21.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      for (int i = 0;
                                                          i < 5;
                                                          i++)
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 25.w,
                                                                  bottom: 10.h),
                                                          child: InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                boards1 =
                                                                    board2[i];
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              height: 50.h,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    board2[i],
                                                                    style: TextStyle(
                                                                        fontSize: 17
                                                                            .sp,
                                                                        color: Colors
                                                                            .black
                                                                            .withOpacity(0.7)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ));
                                      },
                                      child: TextField(
                                        enabled: false,
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: const Color(0xff565656),
                                            fontFamily: 'pretender'),
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {
                                                setState(() {});
                                              },
                                              icon: const Icon(
                                                  Icons.arrow_drop_down)),
                                          contentPadding: EdgeInsets.only(
                                              left: 5.w,
                                              right: 0,
                                              top: 10.h,
                                              bottom: 0),
                                          hintText:
                                              boards1 == "" ? '보드 종류' : boards1,
                                          hintStyle: TextStyle(
                                              fontSize: 18.sp,
                                              color: const Color(0xff000000),
                                              fontFamily: 'pretender'),
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          // enabledBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                          // focusedBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: forth1 ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 280),
                          child: AnimatedPadding(
                            padding: EdgeInsets.only(
                                top: fifth1 || fifth2 ? 70.h : 0),
                            duration: const Duration(milliseconds: 280),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 33.w, right: 33.w),
                                  child: Container(
                                    width: 305.w,
                                    height: 47.h,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.h, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) => Container(
                                                  height: 800.h,
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 40.h,
                                                          left: 25.w,
                                                          bottom: 35.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "보드의 종류를 선택해주세요!",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      21.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      for (int i = 0;
                                                          i < 5;
                                                          i++)
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 25.w,
                                                                  bottom: 10.h),
                                                          child: InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                boards =
                                                                    board1[i];
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              height: 50.h,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    board1[i],
                                                                    style: TextStyle(
                                                                        fontSize: 17
                                                                            .sp,
                                                                        color: Colors
                                                                            .black
                                                                            .withOpacity(0.7)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ));
                                      },
                                      child: TextField(
                                        enabled: false,
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: const Color(0xff565656),
                                            fontFamily: 'pretender'),
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {
                                                setState(() {});
                                              },
                                              icon: const Icon(
                                                  Icons.arrow_drop_down)),
                                          contentPadding: EdgeInsets.only(
                                              left: 5.w,
                                              right: 0,
                                              top: 10.h,
                                              bottom: 0),
                                          hintText:
                                              boards == "" ? '보드 종류' : boards,
                                          hintStyle: TextStyle(
                                              fontSize: 18.sp,
                                              color: const Color(0xff000000),
                                              fontFamily: 'pretender'),
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          // enabledBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                          // focusedBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: third1 ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 280),
                          child: AnimatedPadding(
                            padding: EdgeInsets.only(
                                top: forth1 || forth2
                                    ? fifth1 || fifth2
                                        ? 140.h
                                        : 70.h
                                    : 0),
                            duration: const Duration(milliseconds: 280),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 33.w, right: 33.w),
                                  child: Container(
                                    width: 305.w,
                                    height: 47.h,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.h, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) => Container(
                                                  height: 800.h,
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 40.h,
                                                          left: 25.w,
                                                          bottom: 35.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "LED 종류를 입력해주세요!",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      21.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      for (int i = 0;
                                                          i < 4;
                                                          i++)
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 25.w,
                                                                  bottom: 10.h),
                                                          child: InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                leds = led1[i];
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              height: 50.h,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    led1[i],
                                                                    style: TextStyle(
                                                                        fontSize: 17
                                                                            .sp,
                                                                        color: Colors
                                                                            .black
                                                                            .withOpacity(0.7)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ));
                                      },
                                      child: first2
                                          ? Text("")
                                          : TextField(
                                              enabled: false,
                                              style: TextStyle(
                                                  fontSize: 18.sp,
                                                  color:
                                                      const Color(0xff565656),
                                                  fontFamily: 'pretender'),
                                              decoration: InputDecoration(
                                                suffixIcon: IconButton(
                                                    padding: EdgeInsets.zero,
                                                    onPressed: () {
                                                      setState(() {});
                                                    },
                                                    icon: const Icon(
                                                        Icons.arrow_drop_down)),
                                                contentPadding: EdgeInsets.only(
                                                    left: 5.w,
                                                    right: 0,
                                                    top: 10.h,
                                                    bottom: 0),
                                                hintText: leds == ""
                                                    ? 'led 색상 선택'
                                                    : leds,
                                                hintStyle: TextStyle(
                                                    fontSize: 18.sp,
                                                    color:
                                                        const Color(0xff000000),
                                                    fontFamily: 'pretender'),
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                // enabledBorder: const UnderlineInputBorder(
                                                //   borderSide: BorderSide(color: Colors.grey),
                                                // ),
                                                // focusedBorder: const UnderlineInputBorder(
                                                //   borderSide: BorderSide(color: Colors.grey),
                                                // ),
                                              ),
                                            ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: second2 ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 280),
                          child: AnimatedPadding(
                            padding: EdgeInsets.only(
                                top: third1
                                    ? forth1 || forth2
                                        ? fifth1 || fifth2
                                            ? 210.h
                                            : 140.h
                                        : 70.h
                                    : 0.h),
                            duration: const Duration(milliseconds: 280),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 33.w, right: 33.w),
                                  child: Container(
                                    width: 305.w,
                                    height: 47.h,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.h, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) => Container(
                                                  height: 800.h,
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 40.h,
                                                          left: 25.w,
                                                          bottom: 35.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "높이를 입력해주세요!(cm)",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      21.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      for (int i = 0;
                                                          i < 5;
                                                          i++)
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 25.w,
                                                                  bottom: 10.h),
                                                          child: InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                heights1 =
                                                                    height2[i];
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              height: 50.h,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    height2[i],
                                                                    style: TextStyle(
                                                                        fontSize: 17
                                                                            .sp,
                                                                        color: Colors
                                                                            .black
                                                                            .withOpacity(0.7)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ));
                                      },
                                      child: TextField(
                                        enabled: false,
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: const Color(0xff565656),
                                            fontFamily: 'pretender'),
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {
                                                setState(() {});
                                              },
                                              icon: const Icon(
                                                  Icons.arrow_drop_down)),
                                          contentPadding: EdgeInsets.only(
                                              left: 5.w,
                                              right: 0,
                                              top: 10.h,
                                              bottom: 0),
                                          hintText: heights1 == ""
                                              ? '높이 입력'
                                              : heights1 + "cm",
                                          hintStyle: TextStyle(
                                              fontSize: 18.sp,
                                              color: const Color(0xff000000),
                                              fontFamily: 'pretender'),
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          // enabledBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                          // focusedBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: second1 ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 280),
                          child: AnimatedPadding(
                            padding: EdgeInsets.only(
                                top: third1
                                    ? forth1 || forth2
                                        ? fifth1 || fifth2
                                            ? 210.h
                                            : 140.h
                                        : 70.h
                                    : 0.h),
                            duration: const Duration(milliseconds: 280),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 33.w, right: 33.w),
                                  child: Container(
                                    width: 305.w,
                                    height: 47.h,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.h, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) => Container(
                                                  height: 800.h,
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 40.h,
                                                          left: 25.w,
                                                          bottom: 35.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "높이를 입력해주세요!(cm)",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      21.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      for (int i = 0;
                                                          i < 5;
                                                          i++)
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 25.w,
                                                                  bottom: 10.h),
                                                          child: InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                heights =
                                                                    height1[i];
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              height: 50.h,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    height1[i],
                                                                    style: TextStyle(
                                                                        fontSize: 17
                                                                            .sp,
                                                                        color: Colors
                                                                            .black
                                                                            .withOpacity(0.7)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ));
                                      },
                                      child: TextField(
                                        enabled: false,
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: const Color(0xff565656),
                                            fontFamily: 'pretender'),
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {
                                                setState(() {});
                                              },
                                              icon: const Icon(
                                                  Icons.arrow_drop_down)),
                                          contentPadding: EdgeInsets.only(
                                              left: 5.w,
                                              right: 0,
                                              top: 10.h,
                                              bottom: 0),
                                          hintText: heights == ""
                                              ? '높이 입력'
                                              : heights + "cm",
                                          hintStyle: TextStyle(
                                              fontSize: 18.sp,
                                              color: const Color(0xff000000),
                                              fontFamily: 'pretender'),
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          // enabledBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                          // focusedBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: first2 ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 280),
                          child: AnimatedPadding(
                            padding: EdgeInsets.only(
                                top: second1 || second2 || second3
                                    ? third1
                                        ? forth1 || forth2
                                            ? fifth1 || fifth2
                                                ? 280.h
                                                : 210.h
                                            : 140.h
                                        : 70.h
                                    : 0),
                            duration: const Duration(milliseconds: 280),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 33.w, right: 33.w),
                                  child: Container(
                                    width: 305.w,
                                    height: 47.h,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.h, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {},
                                      child: TextField(
                                        enabled: false,
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: const Color(0xff565656),
                                            fontFamily: 'pretender'),
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {
                                                setState(() {});
                                              },
                                              icon: const Icon(
                                                  Icons.arrow_drop_down)),
                                          contentPadding: EdgeInsets.only(
                                              left: 5.w,
                                              right: 0,
                                              top: 10.h,
                                              bottom: 0),
                                          hintText:
                                              raders == "" ? '레이더 종류' : raders,
                                          hintStyle: TextStyle(
                                              fontSize: 18.sp,
                                              color: const Color(0xff000000),
                                              fontFamily: 'pretender'),
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          // enabledBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                          // focusedBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: first1 ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 280),
                          child: AnimatedPadding(
                            padding: EdgeInsets.only(
                                top: second1 || second2 || second3
                                    ? third1
                                        ? forth1 || forth2
                                            ? fifth1 || fifth2
                                                ? 280.h
                                                : 210.h
                                            : 140.h
                                        : 70.h
                                    : 0),
                            duration: const Duration(milliseconds: 280),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 33.w, right: 33.w),
                                  child: Container(
                                    width: 305.w,
                                    height: 47.h,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            width: 1.h, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) => Container(
                                                  height: 800.h,
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 40.h,
                                                          left: 25.w,
                                                          bottom: 35.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "다면체를 선택해주세요.",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      21.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      for (int i = 0;
                                                          i < 5;
                                                          i++)
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 25.w,
                                                                  bottom: 10.h),
                                                          child: InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                lights =
                                                                    light1[i];
                                                              });
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              height: 50.h,
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    light1[i],
                                                                    style: TextStyle(
                                                                        fontSize: 17
                                                                            .sp,
                                                                        color: Colors
                                                                            .black
                                                                            .withOpacity(0.7)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ));
                                      },
                                      child: TextField(
                                        enabled: false,
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: const Color(0xff565656),
                                            fontFamily: 'pretender'),
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: () {
                                                setState(() {});
                                              },
                                              icon: const Icon(
                                                  Icons.arrow_drop_down)),
                                          contentPadding: EdgeInsets.only(
                                              left: 5.w,
                                              right: 0,
                                              top: 10.h,
                                              bottom: 0),
                                          hintText:
                                              lights == "" ? '다면체 종류' : lights,
                                          hintStyle: TextStyle(
                                              fontSize: 18.sp,
                                              color: const Color(0xff000000),
                                              fontFamily: 'pretender'),
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          // enabledBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                          // focusedBorder: const UnderlineInputBorder(
                                          //   borderSide: BorderSide(color: Colors.grey),
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedPadding(
                          duration: const Duration(milliseconds: 280),
                          padding: EdgeInsets.only(
                              left: 33.w,
                              right: 33.w,
                              top: first1 == true ||
                                      first2 == true ||
                                      first3 == true
                                  ? //첫번쨰 선택 이후
                                  second1 || second2 || second3
                                      ? third1
                                          ? forth1 || forth2
                                              ? fifth1 || fifth2
                                                  ? 350.h
                                                  : 280.h
                                              : 210.h
                                          : 140.h
                                      : 70.h
                                  : 0.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    first1 = true;
                                    first2 = false;
                                    first3 = false;
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) => Container(
                                              height: 800.h,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 40.h,
                                                      left: 25.w,
                                                      bottom: 35.h,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "다면체를 선택해주세요.",
                                                          style: TextStyle(
                                                              fontSize: 21.sp,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  for (int i = 0; i < 5; i++)
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 25.w,
                                                          bottom: 10.h),
                                                      child: InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            lights = light1[i];
                                                            second1 = true;
                                                            second2 = false;
                                                            second3 = false;
                                                          });

                                                          Navigator.pop(
                                                              context);
                                                          showModalBottomSheet(
                                                              context: context,
                                                              builder:
                                                                  (context) =>
                                                                      Container(
                                                                        height:
                                                                            800.h,
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.only(
                                                                                top: 40.h,
                                                                                left: 25.w,
                                                                                bottom: 35.h,
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    "높이를 입력해주세요!(cm)",
                                                                                    style: TextStyle(fontSize: 21.sp, color: Colors.black, fontWeight: FontWeight.w500),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            for (int i = 0;
                                                                                i < 5;
                                                                                i++)
                                                                              Padding(
                                                                                padding: EdgeInsets.only(left: 25.w, bottom: 10.h),
                                                                                child: InkWell(
                                                                                  onTap: () {
                                                                                    setState(() {
                                                                                      third1 = true;
                                                                                      heights = height1[i];
                                                                                    });
                                                                                    Navigator.pop(context);
                                                                                    showModalBottomSheet(
                                                                                        context: context,
                                                                                        builder: (context) => Container(
                                                                                              height: 800.h,
                                                                                              child: Column(
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsets.only(
                                                                                                      top: 40.h,
                                                                                                      left: 25.w,
                                                                                                      bottom: 35.h,
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          "LED 종류를 입력해주세요!",
                                                                                                          style: TextStyle(fontSize: 21.sp, color: Colors.black, fontWeight: FontWeight.w500),
                                                                                                        )
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  for (int i = 0; i < 4; i++)
                                                                                                    Padding(
                                                                                                      padding: EdgeInsets.only(left: 25.w, bottom: 10.h),
                                                                                                      child: InkWell(
                                                                                                        onTap: () {
                                                                                                          setState(() {
                                                                                                            forth1 = true;
                                                                                                            forth2 = false;
                                                                                                            leds = led1[i];
                                                                                                          });
                                                                                                          Navigator.pop(context);
                                                                                                          showModalBottomSheet(
                                                                                                              context: context,
                                                                                                              builder: (context) => Container(
                                                                                                                    height: 800.h,
                                                                                                                    child: Column(
                                                                                                                      children: [
                                                                                                                        Padding(
                                                                                                                          padding: EdgeInsets.only(
                                                                                                                            top: 40.h,
                                                                                                                            left: 25.w,
                                                                                                                            bottom: 35.h,
                                                                                                                          ),
                                                                                                                          child: Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Text(
                                                                                                                                "보드의 종류를 선택해주세요!",
                                                                                                                                style: TextStyle(fontSize: 21.sp, color: Colors.black, fontWeight: FontWeight.w500),
                                                                                                                              )
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        for (int i = 0; i < 5; i++)
                                                                                                                          Padding(
                                                                                                                            padding: EdgeInsets.only(left: 25.w, bottom: 10.h),
                                                                                                                            child: InkWell(
                                                                                                                              onTap: () {
                                                                                                                                setState(() {
                                                                                                                                  boards = board1[i];
                                                                                                                                  fifth1 = true;
                                                                                                                                  fifth2 = false;
                                                                                                                                });
                                                                                                                                Navigator.pop(context);
                                                                                                                              },
                                                                                                                              child: Container(
                                                                                                                                height: 50.h,
                                                                                                                                child: Row(
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                  children: [
                                                                                                                                    Text(
                                                                                                                                      board1[i],
                                                                                                                                      style: TextStyle(fontSize: 17.sp, color: Colors.black.withOpacity(0.7)),
                                                                                                                                    )
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ));
                                                                                                        },
                                                                                                        child: Container(
                                                                                                          height: 50.h,
                                                                                                          child: Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Text(
                                                                                                                led1[i],
                                                                                                                style: TextStyle(fontSize: 17.sp, color: Colors.black.withOpacity(0.7)),
                                                                                                              )
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                ],
                                                                                              ),
                                                                                            ));
                                                                                  },
                                                                                  child: Container(
                                                                                    height: 50.h,
                                                                                    child: Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          height1[i],
                                                                                          style: TextStyle(fontSize: 17.sp, color: Colors.black.withOpacity(0.7)),
                                                                                        )
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ));
                                                        },
                                                        child: Container(
                                                          height: 50.h,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                light1[i],
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17.sp,
                                                                    color: Colors
                                                                        .black
                                                                        .withOpacity(
                                                                            0.7)),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ));
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(103.w, 50.h),
                                    elevation: 2.h,
                                    backgroundColor: first1
                                        ? const Color(0xffFFD647)
                                        : Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.r),
                                            bottomLeft:
                                                Radius.circular(20.r)))),
                                child: Text(
                                  first[0],
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: first1 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    first1 = false;
                                    first2 = true;
                                    first3 = false;
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) => Container(
                                              height: 800.h,
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 40.h,
                                                      left: 25.w,
                                                      bottom: 35.h,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "레이더 모형을 선택해주세요.",
                                                          style: TextStyle(
                                                              fontSize: 21.sp,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  for (int i = 0; i < 2; i++)
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 25.w,
                                                          bottom: 10.h),
                                                      child: InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            raders = rader1[i];
                                                            second1 = false;
                                                            second2 = true;
                                                            second3 = false;
                                                          });
                                                          Navigator.pop(
                                                              context);
                                                          showModalBottomSheet(
                                                              context: context,
                                                              builder:
                                                                  (context) =>
                                                                      Container(
                                                                        height:
                                                                            800.h,
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.only(
                                                                                top: 40.h,
                                                                                left: 25.w,
                                                                                bottom: 35.h,
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    "높이를 입력해주세요!(cm)",
                                                                                    style: TextStyle(fontSize: 21.sp, color: Colors.black, fontWeight: FontWeight.w500),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            for (int i = 0;
                                                                                i < 5;
                                                                                i++)
                                                                              Padding(
                                                                                padding: EdgeInsets.only(left: 25.w, bottom: 10.h),
                                                                                child: InkWell(
                                                                                  onTap: () {
                                                                                    setState(() {
                                                                                      heights1 = height2[i];
                                                                                      forth1 = false;
                                                                                      forth2 = true;
                                                                                    });
                                                                                    Navigator.pop(context);
                                                                                    showModalBottomSheet(
                                                                                        context: context,
                                                                                        builder: (context) => Container(
                                                                                              height: 800.h,
                                                                                              child: Column(
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsets.only(
                                                                                                      top: 40.h,
                                                                                                      left: 25.w,
                                                                                                      bottom: 35.h,
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          "보드의 종류를 선택해주세요!",
                                                                                                          style: TextStyle(fontSize: 21.sp, color: Colors.black, fontWeight: FontWeight.w500),
                                                                                                        )
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  for (int i = 0; i < 5; i++)
                                                                                                    Padding(
                                                                                                      padding: EdgeInsets.only(left: 25.w, bottom: 10.h),
                                                                                                      child: InkWell(
                                                                                                        onTap: () {
                                                                                                          setState(() {
                                                                                                            boards1 = board2[i];
                                                                                                            fifth1 = false;
                                                                                                            fifth2 = true;
                                                                                                          });
                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        child: Container(
                                                                                                          height: 50.h,
                                                                                                          child: Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Text(
                                                                                                                board2[i],
                                                                                                                style: TextStyle(fontSize: 17.sp, color: Colors.black.withOpacity(0.7)),
                                                                                                              )
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                ],
                                                                                              ),
                                                                                            ));
                                                                                  },
                                                                                  child: Container(
                                                                                    height: 50.h,
                                                                                    child: Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          height2[i],
                                                                                          style: TextStyle(fontSize: 17.sp, color: Colors.black.withOpacity(0.7)),
                                                                                        )
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ));
                                                        },
                                                        child: Container(
                                                          height: 50.h,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                rader1[i],
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17.sp,
                                                                    color: Colors
                                                                        .black
                                                                        .withOpacity(
                                                                            0.7)),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ));
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(103.w, 50.h),
                                  elevation: 1.5,
                                  backgroundColor: first2
                                      ? const Color(0xffFFD647)
                                      : Colors.white,
                                ),
                                child: Text(
                                  first[1],
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: first2 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    first1 = false;
                                    first2 = false;
                                    first3 = true;
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (context) => Container(
                                        height: 500.h,
                                        child: Column(
                                          children: [
                                            ListTile(
                                              leading: Icon(Icons.camera),
                                              title: Text('Camera'),
                                              onTap: () {
                                                // Handle Camera action
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            ListTile(
                                              leading: Icon(Icons.photo),
                                              title: Text('Gallery'),
                                              onTap: () {
                                                // Handle Gallery action
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(103.w, 50.h),
                                    elevation: 2.h,
                                    backgroundColor: first3
                                        ? const Color(0xffFFD647)
                                        : Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.r),
                                            bottomRight:
                                                Radius.circular(20.r)))),
                                child: Text(
                                  first[2],
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: first3 ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 33.w, right: 33.w, top: 80.h),
                      child: ElevatedButton(
                        onPressed: () async {
                          await postrequest(context);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          backgroundColor: const Color(0xffFFE147),
                          minimumSize: Size(double.infinity, 53.h),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r)),
                        ),
                        child: Text(
                          "다음으로",
                          style: TextStyle(
                              fontSize: 23.sp,
                              color: Colors.white,
                              fontFamily: 'pretendar'),
                        ),
                      ),
                    ),
                  ],
                ),
        )),
      ),
    );
  }
}
