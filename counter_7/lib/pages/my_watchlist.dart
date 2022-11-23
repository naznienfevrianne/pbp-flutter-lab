import 'package:flutter/material.dart';
import 'package:counter_7/pages/watchlist_detail.dart';
import 'package:counter_7/util/fetch.dart';
import 'package:counter_7/models/watchlist.dart';
import 'package:counter_7/widgets/drawer.dart';

class MyWatchList extends StatefulWidget {
    const MyWatchList({Key? key}) : super(key:key);

    @override
    State<MyWatchList> createState() => _MyWatchListState();
}

class _MyWatchListState extends State<MyWatchList> {
    final Future<List<WatchList>> future = fetchMyWatchList();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: const MyDrawer(),
        body: FutureBuilder<List<WatchList>>(
          future: future,
          builder: (context, AsyncSnapshot<List<WatchList>> snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: [
                    Text(
                      "Oh no! Tidak ada watch list :(",
                    ),
                    const SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => InkWell(
                    // make anything clickable
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WatchListDetail(
                                myWatch:snapshot.data![index])),
                        );
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17.0),
                          border: Border.all(
                            color: snapshot.data![index].watched == "No" ? Colors.pink.shade300 : Colors.blue.shade300,
                            width: 4.0,
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  snapshot.data![index].title,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ])),
                      ));
                    }
                }
            },
        )
    );
  }
}
   