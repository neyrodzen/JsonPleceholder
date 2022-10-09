import 'dart:io';
import 'dart:convert';

import 'package:arch/model/model.dart';

class ApiClient {
  final client = HttpClient();
  Future<List<Post>> getPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final qwery = await client.getUrl(url);
    final responce = await qwery.close();
    final stringJson = await responce.transform(utf8.decoder).toList();
    final strjson = stringJson.join();
    final json = jsonDecode(strjson) as List <dynamic>;

    final posts = PostList();
    List<Post> postList = posts.fromJsom(json );
    return postList;
  }
}
