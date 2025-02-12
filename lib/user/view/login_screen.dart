import 'package:flutter/material.dart';
import 'package:project/common/const/colors.dart';
import 'package:project/common/layout/default_layout.dart';

import '../../common/component/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
    child : SingleChildScrollView( // scroll 가능하게 만들어줌.
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag, // 다른 화면 드래그하면 키보드사라짐
      child: SafeArea(
        top: true,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column( // alt + enter 눌러주면 warp !
            crossAxisAlignment: CrossAxisAlignment.stretch, // 글자 붙게 만
            children: [
              _Title(),
              const SizedBox(height: 16.0), // 위 아래 간격 벌려주기
              _SubTitle(),
              Image.asset(
                'asset/img/misc/logo.png',
                width: MediaQuery.of(context).size.width / 3*2,
              ),
              CustomTextFormField(
                hintText: "이메일을 입력하세요",
                onChanged: (String value) {  },
              ),
              const SizedBox(height: 16.0),
              CustomTextFormField(
                hintText: "비밀번호를 입력하세요",
                obscureText: true,
                onChanged: (String value) {  },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(onPressed: (){},

                  child: Text('로그인')), // 현재 기능에서의 버
              TextButton(onPressed: (){}, child: Text('회원가입'))
            ],
          ),
        ),),
    ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        '환영합니다!',
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),);
  }
}


class _SubTitle extends StatelessWidget {
  const _SubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '이메일과 비밀번호를 입력해서 로그인 해주세요! \n 오늘도 성공적인 주문이 되길 :)',
      style: TextStyle(
        fontSize: 16,
        color: BODY_TEXT_COLOR,
      ),
    );
  }
}
