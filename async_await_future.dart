import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  // Using ".then"
  // fetchPost().then((value) => {print(value)});

  // Using "async & await"
  // final post = await fetchPost();
  // print(post);

  // Fetching real data
  final post = await fetchPost();
  print(post.userId);
  print(post.postId);
  print(post.title);
}

Future<Post> fetchPost() async {
  // Simulate fetching
  // const post = {
  //   "id": 1,
  //   "title": "Post 1",
  // };

  // const delay = Duration(seconds: 3);
  // return Future.delayed(delay, () => post);

  // Fetching real data with http package
  var API_URL = "jsonplaceholder.typicode.com";
  var url = Uri.http(API_URL, '/posts/3');

// Await the http get response, then decode the json-formatted response.
  final response = await http.get(url);

  Map<String, dynamic> data = convert.jsonDecode(response.body);
  return Post(data["userId"], data["id"], data["title"]);
}

class Post {
  int userId;
  int postId;
  String title;

  Post(this.userId, this.postId, this.title);
}
