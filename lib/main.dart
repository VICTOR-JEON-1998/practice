import 'package:flutter/material.dart';
import 'package:project/common/component/custom_text_form_field.dart';
import 'package:project/user/view/login_screen.dart';

void main() {
  runApp(
    _App()
  );
}

//private 값 생성 시 _ 붙음
class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(), // 보통 초기 화면을 넣어줌.
    );
  }
}
