
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/models/budget.dart';
import 'package:counter_7/widgets/drawer.dart';

class AddBudget extends StatefulWidget {
    const AddBudget({super.key});

    @override
    State<AddBudget> createState() => _AddBudgetState();
}

class _AddBudgetState extends State<AddBudget> {
    final _formKey = GlobalKey<FormState>();
    String _title = "";
    int _nominal = 0;
    String _type = "";
    DateTime? _date = DateTime.now();
    @override

    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text ("Add Budget"),
            ),
            drawer: const MyDrawer(),
            body: Form(
                key: _formKey,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        // mainAxisSize: MainAxisSize.max;
                        children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Judul",
                                        labelText: "Judul",
                                    ),
                                    onChanged: (String? value) {
                                        setState(() {
                                            _title = value!;
                                        });
                                    },
                                    onSaved: (String? value) {
                                        setState(() {
                                            _title = value!;
                                        });
                                    },
                                    validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                            return 'Judul tidak boleh kosong!';
                                        }
                                        return null;
                                    },
                                ),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Nominal",
                                        labelText: "Nominal",
                                    ),
                                    keyboardType: TextInputType.number,
                                    onChanged: (String? value) {
                                        setState(() {
                                            if (value == null || value.isEmpty) {
                                                _nominal = 0;
                                            } else {
                                                _nominal = int.parse(value);
                                            }
                                        });
                                    },
                                    onSaved: (String? value) {
                                        setState(() {
                                            if (value == null || value.isEmpty) {
                                                _nominal = 0;
                                            } else {
                                                _nominal = int.parse(value);
                                            }
                                        });
                                    },
                                    validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                        return 'Nominal tidak boleh kosong!';
                                    }
                                    if (int.parse(value) == 0) {
                                        return 'Nominal tidak boleh nol!';
                                    }
                                        return null;
                                    },
                                ),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton<String>(
                                    value: null,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    hint: Text(_type == '' ? 'Pilih jenis' : _type),
                                    items: const <DropdownMenuItem<String>>[
                                        DropdownMenuItem<String>(
                                            value: 'Pengeluaran',
                                            child: Text('Pengeluaran'),
                                        ),
                                        DropdownMenuItem<String>(
                                            value: 'Pemasukan',
                                            child: Text('Pemasukan'),
                                        ),
                                    ],
                                    onChanged: (String? value) {
                                        setState(() {
                                            _type = value!;
                                        });
                                    },
                                ),
                            ),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: TextButton(
                                        onPressed: () {
                                            if (_formKey.currentState!.validate()) {
                                                Budget.add(
                                                    title: _title,
                                                    nominal: _nominal,
                                                    type: _type,
                                                );
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                        return Dialog(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(10),
                                                            ),
                                                            elevation: 15,
                                                            child: ListView(
                                                                padding: const EdgeInsets.symmetric(
                                                                    horizontal: 20.0,
                                                                    vertical: 16.0,
                                                                ),
                                                                shrinkWrap: true,
                                                                children: [
                                                                    Center(
                                                                        child: Text(
                                                                            "Berhasil menambahkan $_type $_title sebesar ${_nominal.toString()}",
                                                                            textAlign: TextAlign.center,
                                                                        ),
                                                                    ),
                                                                    TextButton(
                                                                        onPressed: () {
                                                                            Navigator.pop(context);
                                                                        },
                                                                        child: const Text('Kembali'),
                                                                    )
                                                                ],
                                                            ),
                                                        );
                                                    },
                                                );
                                                _formKey.currentState!.reset();
                                            }
                                        },
                                        style: ButtonStyle(
                                            padding:
                                            MaterialStateProperty.all(const EdgeInsets.all(12.0)),
                                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                                        ),
                                        child: const Text(
                                            "Simpan",
                                            style: TextStyle(color: Colors.white),
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        ); // scaffold
    }
}