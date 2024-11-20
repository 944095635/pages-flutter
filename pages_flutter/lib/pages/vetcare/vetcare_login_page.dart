import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled/size_extension.dart';

/// 登录屏
class VetcareLoginPage extends StatefulWidget {
  const VetcareLoginPage({super.key});

  @override
  State<VetcareLoginPage> createState() => _VetcareLoginPageState();
}

class _VetcareLoginPageState extends State<VetcareLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/vetcare/LogInPage.png"),
          Positioned(
            left: 30,
            right: 30,
            bottom: 90,
            height: 374,
            child: SlideInUp(
              from: 600,
              duration: const Duration(milliseconds: 850),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      blurStyle: BlurStyle.outer,
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20,
                      sigmaY: 20,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.white54,
                            Colors.white24,
                          ],
                        ),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Expanded(
                            child: Center(
                              child: Text(
                                "Take Care Of\r\nYour Pet",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Color(0xFF544864),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FilledButton(
                                  style: ButtonStyle(
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    minimumSize: const WidgetStatePropertyAll(
                                      Size.fromHeight(52),
                                    ),
                                    backgroundBuilder:
                                        (context, states, child) {
                                      return DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFB77EFF),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 10,
                                              offset: Offset(0, 4),
                                            )
                                          ],
                                        ),
                                        child: child,
                                      );
                                    },
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Log In",
                                    textHeightBehavior: TextHeightBehavior(
                                      applyHeightToLastDescent: false,
                                    ),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                15.verticalSpace,
                                FilledButton(
                                  style: ButtonStyle(
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    minimumSize: const WidgetStatePropertyAll(
                                      Size.fromHeight(52),
                                    ),
                                    backgroundBuilder:
                                        (context, states, child) {
                                      return DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF5F5F5),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 10,
                                              offset: Offset(0, 4),
                                            )
                                          ],
                                        ),
                                        child: child,
                                      );
                                    },
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/vetcare/Logo.png",
                                        width: 20,
                                        height: 20,
                                      ),
                                      15.horizontalSpace,
                                      const Text(
                                        "Log In With Google",
                                        textHeightBehavior: TextHeightBehavior(
                                          applyHeightToLastDescent: false,
                                        ),
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF343434),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                20.verticalSpace,
                                const Text.rich(
                                  textHeightBehavior: TextHeightBehavior(
                                    applyHeightToLastDescent: false,
                                  ),
                                  TextSpan(
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF343434),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Don’t have an account?",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " Sign In",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
