import 'package:flutter/material.dart';
//모든 Page에서 해당 레이아웃을 바꿀 것이기 때문에, DefaultLayout만 수정하면 됨.

// 공통된 수정 요소가 생길 때 보다 더욱 편리할 것임
class DefaultLayout extends StatelessWidget {
  final Widget child; // DefaultLayout은 child를 받아서 뿌려주는 기능을 수행함.

  const DefaultLayout({
    required this.child,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: child,
    );
  }
}
