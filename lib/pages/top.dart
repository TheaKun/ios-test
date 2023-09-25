import 'package:google_sheet/pages/database.dart';

List<Money> geter_top() {
  Money upwork = Money();
  upwork.name = 'upwork';
  upwork.fee = '546';
  upwork.time = 'today';
  upwork.image = 'food.png';
  upwork.buy = true;
  Money dowork = Money();
  dowork.name = 'upwork';
  dowork.fee = '546';
  dowork.time = 'today';
  dowork.image = 'food.png';
  dowork.buy = true;
  Money paybill = Money();
  paybill.name = 'upwork';
  paybill.fee = '546';
  paybill.time = 'today';
  paybill.image = 'starbuck.png';
  paybill.buy = false;
  return [upwork, paybill, dowork];
}
