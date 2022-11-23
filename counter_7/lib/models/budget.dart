import 'package:counter_7/pages/add_budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/budget_data.dart';
class Budget {
    static List<Budget> listBudget = [];
    String title;
    int nominal;
    String type;


    Budget({
        required this.title,
        required this.nominal,
        required this.type,
    }) ;

    static void add({
        required title,
        required nominal,
        required type
    }) {
        listBudget.add(Budget(
            title: title,
            nominal: nominal,
            type: type,
        ));
    }
}