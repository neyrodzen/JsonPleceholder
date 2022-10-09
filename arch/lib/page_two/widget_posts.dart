import 'package:arch/model/posts_model.dart';
import 'package:flutter/cupertino.dart';

class WidgetPosts extends StatelessWidget {
  const WidgetPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ModelProvider.watch(context)?.model!.posts.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        final text = ModelProvider.watch(context)?.model!.posts[index].id;
        return Text('$text');
      },
    );
  }
}
