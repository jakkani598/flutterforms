
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../radiotheme/myradiolisttile.dart';
import '../utils/utils.dart';

class AddressDetailsForm extends StatefulWidget {
  const AddressDetailsForm({Key? key}) : super(key: key);

  @override
  State<AddressDetailsForm> createState() => AddressDetailsFormState();
}

class AddressDetailsFormState extends State<AddressDetailsForm> {
  int index = 0;
  final _selectStateController = TextEditingController();
  final _selectCityController = TextEditingController();
  final _pincodeController = TextEditingController();
  static List<String> stateValues = [
    'Maharastra',
    'Karnataka',
    'Telanagana',
    'Tamilanadu',
    'Andrapradesh',
    'Kerala',
    'Punjab',
    'Madhyapradesh'
  ];

  static List<String> cityValues = [
    'City1',
    'City2',
    'City3',
    'City4',
    'City5',
    'City6'
  ];

  static List<String> pincodeValues = [
    '4000123',
    '4000124',
    '4000125',
    '4000126',
    '4000127',
    '4000128'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ADDRESS DETAILS"),
        ),
        body: ListView(children: <Widget>[
          const Padding(
              padding: EdgeInsets.only(left: 15, top: 2, bottom: 2, right: 15)),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: TextField(
              obscureText: false,
              controller: _selectStateController,
              enableInteractiveSelection: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'SELECT STATE',
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.green,
                  ),
                  onPressed: () {
                    Utils.showSheet(
                      context,
                      child: buildCustomPicker(stateValues),
                      onClicked: () {
                        final value = stateValues[index];
                        _selectStateController.text = value;
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: false,
              enableInteractiveSelection: false,
              controller: _selectCityController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'SELECT CITY',
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.arrow_downward,
                    color: Colors.green,
                  ),
                  onPressed: () {
                    Utils.showSheet(
                      context,
                      child: buildCustomPicker(cityValues),
                      onClicked: () {
                        final value = cityValues[index];
                        _selectCityController.text = value;
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          const Padding(
              padding:
              EdgeInsets.only(left: 15, top: 10, bottom: 2, right: 15)),
          Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                          obscureText: false,
                          controller: _pincodeController,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'PIN CODE',
                            suffixIcon: IconButton(
                              icon: const Icon(
                                Icons.done,
                                color: Colors.green,
                              ),
                              onPressed: () {

                              },
                            ),
                          ),
                        ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Utils.showSheet(
                                  context,
                                  child: buildCustomPicker(pincodeValues),
                                  onClicked: () {
                                    final value = pincodeValues[index];
                                    _pincodeController.text = value;
                                    Navigator.pop(context);
                                  },
                                );
                              },
                              child: Text('SELECT'),
                            ),
                          ),
                        ))
                  ],
                ),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: SizedBox(
              child: TextField(
                obscureText: false,
                maxLines: 5,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 20.0),
                  border: const OutlineInputBorder(),
                  labelText: 'ENTER ADDRESS',
                  helperMaxLines: 10,
                  hintMaxLines: 5,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.done,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, bottom: 30.0, top: 15.0),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("SAVE"),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    textStyle: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ]));
  }

  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2025),
        initialDatePickerMode: DatePickerMode.day,
        initialEntryMode: DatePickerEntryMode.calendar);
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
  }

  String formateDate(DateTime date) {
    return DateFormat("dd-MM-yyyy").format(date);
  }
  Widget buildCustomPicker(List<String> data) => SizedBox(
    height: 300,
    child: CupertinoPicker(
      itemExtent: 64,
      diameterRatio: 0.7,
      looping: true,
      onSelectedItemChanged: (index) => setState(() => this.index = index),
      // selectionOverlay: Container(),
      selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
        background: Colors.pink.withOpacity(0.12),
      ),
      children: Utils.modelBuilder<String>(
        data,
            (index, value) {
          final isSelected = this.index == index;
          final color = isSelected ? Colors.pink : Colors.black;

          return Center(
            child: Text(
              value,
              style: TextStyle(color: color, fontSize: 24),
            ),
          );
        },
      ),
    ),
  );
}
