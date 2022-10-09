class ModelPost {

}

class Post {
  int userId;
  int id;
  String title;
  String body;
  Post(Map<String, dynamic> map)
      : userId = map['userId'],
        id = map['id'],
        title = map['title'],
        body = map['body'];
}

class PostList {
  List<Post> fromJsom(List<dynamic> list) {
    return list.map((post) => Post(post)).toList();
  }
}
