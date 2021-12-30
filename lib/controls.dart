import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

String base_url = '';
String port = '';

Future<void> init_data(base_url, port) async {
  SharedPreferences data = await SharedPreferences.getInstance();
  base_url = data.getString('ip').toString();
  port = data.getString('port').toString();
}

// String base_url = '192.168.4.1';
// String port = '8080';
String move = 'move';

forward() {
  http.get(Uri.parse('http://$base_url:$port/$move?command=F'));
}

backward() {
  http.get(Uri.parse('http://$base_url:$port/$move?command=B'));
}

left() {
  http.get(Uri.parse('http://$base_url:$port/$move?command=L'));
}

right() {
  http.get(Uri.parse('http://$base_url:$port/$move?command=R'));
}

twist_left() {
  http.get(Uri.parse('http://$base_url:$port/$move?command=A'));
}

twist_right() {
  http.get(Uri.parse('http://$base_url:$port/$move?command=D'));
}

stop_motors() {
  http.get(Uri.parse('http://$base_url:$port/$move?command=S'));
}
