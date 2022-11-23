import 'package:counter_7/models/watchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
Future<List<WatchList>> fetchMyWatchList() async {
    var url = Uri.parse('http://tugas2pbpnaz.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin":"*",
            "Content-Type": "application/json",
        },
    );
    var data = jsonDecode(utf8.decode(response.bodyBytes));
    List<WatchList> listMyWatchlist = [];
    for (var film in data) {
        if (film != null) {
            listMyWatchlist.add(WatchList.fromJson(film));
        }
    }
    return listMyWatchlist;
}