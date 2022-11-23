import 'package:counter_7/widgets/drawer.dart';
import 'package:counter_7/models/watchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/pages/my_watchlist.dart';

class WatchListDetail extends StatefulWidget {
    const WatchListDetail({super.key, required this.myWatch});
    final WatchList myWatch;
    @override
    State<WatchListDetail> createState() => _WatchListDetailState();
}

class _WatchListDetailState extends State<WatchListDetail> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: const MyDrawer(),
      body: Container(
          padding: const EdgeInsets.all(20),
          height: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.myWatch.title,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'Release date: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: '${widget.myWatch.release_date}\n'),
                        const TextSpan(
                            text: 'Rating: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '${widget.myWatch.rating}/5\n'),
                        const TextSpan(
                            text: 'Watched: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '${widget.myWatch.watched}\n'),
                        const TextSpan(
                            text: 'Review: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: "${widget.myWatch.review}\n"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyWatchList()),
                      );
                    },
                    child: const SizedBox(
                        height: 40,
                        width: 200,
                        child: Center(
                          child: Text(
                            "Back",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))),
              ]),
            ],
          )),
    );
  }
} 
