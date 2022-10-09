import 'package:arch/model/posts_model.dart';
import 'package:flutter/material.dart';

class ReloadButton extends StatelessWidget {
  const ReloadButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: ()=> ModelProvider.read(context)?.model!.reloadPosts(),
    child: const Text('reload'));
  }
}