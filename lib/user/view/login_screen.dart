import 'package:flutter/material.dart';
import 'package:project/common/layout/default_layout.dart';

import '../../common/component/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Column(
        children: [
          _Title(),
          CustomTextFormField(
            hintText: "이메일을 입력하하세요",
            onChanged: (String value) {  },
          ),
          CustomTextFormField(
            hintText: "비밀번호를 입력하세요",
            obscureText: true,
            onChanged: (String value) {  },
          )
        ],
      ),);
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        '환영합니다!');
  }
}
