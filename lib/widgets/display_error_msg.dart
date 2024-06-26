import 'package:flutter/material.dart';
import 'package:flutter_todo_riverpod/utils/utils.dart';
import 'package:flutter_todo_riverpod/widgets/widgets.dart';

class DisplayErrorMessage extends StatelessWidget {
  const DisplayErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;

    return CommonContainer(
      width: deviceSize.width,
      height: deviceSize.height * 0.3,
      child: const Center(
        child: Text('Something went wrong'),
      ),
    );
  }
}
