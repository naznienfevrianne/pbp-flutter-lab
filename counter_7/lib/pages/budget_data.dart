import 'package:flutter/material.dart';
import 'package:counter_7/models/budget.dart';
import 'package:counter_7/widgets/drawer.dart';

class BudgetData extends StatefulWidget{
  const BudgetData({super.key});

  @override
  State<BudgetData> createState() => _BudgetDataState();
}
class _BudgetDataState extends State<BudgetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: Budget.listBudget.map((Budget o) {
              return Card(
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            o.title,
                            style: const TextStyle(fontSize:24.0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            o.nominal.toString(),
                            style: const TextStyle(fontSize:16.0),
                          ),
                          Text(
                            o.type,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}