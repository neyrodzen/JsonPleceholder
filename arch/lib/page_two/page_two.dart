// ignore_for_file: unused_element

import 'package:arch/model/posts_model.dart';
import 'package:arch/page_two/buttons/reload_button.dart';
import 'package:arch/page_two/widget_posts.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final model = PostsModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModelProvider(
        model: model,
        child: Container(
          color: Colors.green,
          child: Center(
              child: Column(children: [
            const SizedBox(
              height: 60,
            ),
            const ReloadButton(),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('rtrtrt'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: WidgetPosts(),
              ),
            ),
          ])),
        ),
      ),
    );
  }
}
