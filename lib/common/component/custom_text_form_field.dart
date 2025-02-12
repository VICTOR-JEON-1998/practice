import 'package:flutter/material.dart';
import 'package:project/common/const/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText; // 외부에서 받아올 때 여기서 1차 선언하고
  final bool obscureText;
  final bool autoFocus;
  final ValueChanged<String>? onChanged;


  const CustomTextFormField({
    required this.onChanged,
    this.autoFocus = false, // 기본값 설정
    this.obscureText = false,
    this.hintText, // 2차 선언하고
    this.errorText,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide( //실제 테두리 의미
        color: INPUT_BORDER_COLOR,
        width: 1.0,
      )
    ); // 테두리 있는 입력 칸 보더

    return TextFormField(
      cursorColor: PRIMARY_COLOR,
      obscureText: obscureText,
      autofocus: autoFocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20), // textfield 안에서 padding 넣는 법임
        hintText: hintText, // 3차 선언해서 써버림.
        errorText: errorText,
        hintStyle: TextStyle(
          color: BODY_TEXT_COLOR,
          fontSize: 14.0,
        ),
        fillColor: INPUT_BG_COLOR,
        filled: true, // False면 배경 색 없음 , true면 배경 색 있음

        border: baseBorder, // 모든 Input 상태의 기본 스타일 세팅
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith( // 모든 특성 유지한 상태에서 변경하고픈 것만 바꾸기
          borderSide: baseBorder.borderSide.copyWith(
            color: PRIMARY_COLOR,
          )
        ),
      ),
    );
  }
}
