import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/add_budget.dart';
import 'package:counter_7/pages/budget_data.dart';
import 'package:counter_7/pages/my_watchlist.dart';

class MyDrawer extends StatelessWidget {
    const MyDrawer({super.key});
    @override
    Widget build(BuildContext context) {
        return Drawer(
                child: Column(
                    children: [
                        // Menambahkan clickable menu
                        ListTile(
                            title: const Text('Counter'),
                            onTap: () {
                                // Route menu ke halaman utama
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MyHomePage()),
                                );
                            },
                        ),
                        ListTile(
                            title: const Text('Tambah Budget'),
                            onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const AddBudget()),
                                );
                            },
                        ),
                        ListTile(
                            title: const Text('Data Budget'),
                            onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const BudgetData()),
                                );
                            },
                        ),
                        ListTile(
                            title: const Text('My Watch List'),
                            onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const MyWatchList()),
                                );
                            },
                        ),
                    ],
                ),
            );
     }
}