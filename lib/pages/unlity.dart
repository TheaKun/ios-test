import 'package:google_sheet/widgets/add_date.dart';
import 'package:hive_flutter/hive_flutter.dart';

int totals = 0;

final box = Hive.box<Add_data>('data');

int total() {
  var history2 = box.values.toList();
  List a = [];
  for (var i = 0; i < history2.length; i++) {
    a.add(history2[i].IN == "Income"
        ? int.parse(history2[i].amount)
        : int.parse(history2[i].amount) * -1);
  }
  totals = a.reduce((value, element) => value + element);
  return totals;
}

int income() {
  var history2 = box.values.toList();
  List a = [];
  for (var i = 0; i < history2.length; i++) {
    a.add(history2[i].IN == "Income" ? int.parse(history2[i].amount) : 0);
  }
  totals = a.reduce((value, element) => value + element);
  return totals;
}

int outcome() {
  var history2 = box.values.toList();
  List<int> a = [];
  for (var i = 0; i < history2.length; i++) {
    a.add(history2[i].IN == "Income" ? 0 : int.parse(history2[i].amount));
  }
  int totals = a.reduce((value, element) => value + element);
  return totals;
}
String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'អរុណសួស្តី';
  }
  if (hour < 17) {
    return 'ទិវាសួស្តី';
  }
  return 'សាយ័ន្តសួស្តី';
}
