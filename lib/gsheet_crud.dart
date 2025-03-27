import 'package:gsheets/gsheets.dart';
import 'package:flutter_gsheet/gsheet_setup.dart';

InsertDataIntoSheet()async{

  await gsheetCrudUserDetails!.values.map.appendRows(maps);
  print('Data stored');
}