import 'package:briefcase/lib/widgets/name_widget.dart';
import 'package:flutter/material.dart';

class HeaderPhoneWidget extends StatelessWidget {
  const HeaderPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BackButton(color: Colors.white),
          Spacer(),
          NameWidget(),
        ],
      ),
    );
  }
}
