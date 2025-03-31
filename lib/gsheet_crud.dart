import 'package:gsheets/gsheets.dart';
import 'package:flutter_gsheet/gsheet_setup.dart';

InsertDataIntoSheet(userDetailsList) async {
  await gsheetCrudUserDetails!.values.map.appendRows(userDetailsList);
  print('Data stored');
}
