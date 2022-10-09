import 'package:arch/api_client/api_client.dart';
import 'package:flutter/cupertino.dart';
import 'model.dart';

class PostsModel extends ChangeNotifier {
  List<Post> _posts = <Post>[];

  List<Post> get posts => _posts;

  void reloadPosts() async {
    ApiClient apiClient = ApiClient();
    final posts = await apiClient.getPosts();
    _posts += posts;
    notifyListeners();
  }
}

class ModelProvider extends InheritedNotifier {
  const ModelProvider({
    super.key,
    required this.model,
    required super.child,
  }) : super(notifier: model);
  final PostsModel? model;

  static ModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ModelProvider>();
  }

  static ModelProvider? read(BuildContext context) {
    return context
        .getElementForInheritedWidgetOfExactType<ModelProvider>()
        ?.widget as ModelProvider;
  }
}
