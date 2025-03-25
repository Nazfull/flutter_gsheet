import 'package:gsheets/gsheets.dart';

var sheetId = '1OQLmOQcELtEa3sVu9kplmBBT08s4xmp3a8Upz_CUklo';

var credentials =r'''{
  "type": "service_account",
  "project_id": "gsheetcruddemo-454816",
  "private_key_id": "1a2b82ca91325e1a60f6561ac6736281c89c7ef1",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCzz9raN4UdN4kf\nPldXnWNdyW9UrHPfFvSb1lVVOq2YNVvaanWiHLDb/3YEUx4OrbhzRWYO5ntmsq+n\nosDksVneY1nflhO4P1aT2PNVuUD1btY4Lj6z0b0lQBM+3BYBvpox8ebwyILJdSDX\nzI6oPfB/6mMBP7AuIYNWqbV2idTxBYsDMe/D8SJlTxlzBzGLWXhkOB82ai5DA8u7\nZ1m83ruG3xUV8W1uCbRWx1yzQ6FTp0iK9bx+5HfJp60+EcjdDqR0kNRgutkD+rgj\nsndxSkJBWNKFak5wodJGvaW4lTTxGDa+Os4Jj0Rgf9kkuIrYVp4RWx8BhL2QbuKk\n/S+08a/5AgMBAAECggEAEqtXoUWXdBeijJRn9Chau0+hWAzJwRV8kzuXQ5CimoWb\nwltAWHMbJ9Rn1/4bRlHiL1G6zXw/vsN5unGLDpOdbZoqKC1IYd5tqk8hwLpJ1NHL\nuyyOBRSXS2lSNjoarNax4tKndEOVVL5tCQrrmutHb7iRy/zlWXzQSqy3MxYPfnC0\n1bvAHcubrK+E892A2ItJZ0AFTKiDDlEQe1jFhTR2iUAF+ku17G2SZHdJGKNLZWp1\n92rmTn/7uqSjMkyna57FdU6aAi5kt6C1Ayeg2+h0qv7Kk55IaKvFr9SgNQcNt56J\nYefbpUrs+D+WICPBv0lPh82A4ekkG54qHDutT1NBAwKBgQDaDKIbZXexB8vVXeIe\nHmKrsucQstg9fT55Dcx64V1kJexn6sinlHdieonbAa1geqrssJHIf7j6WsyYzpt0\nTGh9VSIgXJ1zUDfRZj9gual27lEqLHn/+1HnK/gNlDIKfDvEv/O3c/fMpmU7P59m\nPizJ/5C2yUbdr/+GbBZuNUuAOwKBgQDTG4W70aCbz5NrYh8WBRDCxx8chX7zu3oC\nz0RreJ2zCX41XhyEwiIUr2zyIWKiaarMYrNYo8smWg5FU+jc3BykECMDq5zFWxHn\nEKVLhMUYxXpiOR2aP/UHUTyqwmQAzWBi2j7UBmr4OArDhwJ2CKOBXyjLTQbtOQsz\nk0vwZQKhWwKBgQDHWrGDNru9oREdHF61hrZToJddTwYhAbbyWklPN2h5ParsP14A\nyN51rO8IynnHMZ/AEpbWpt9qFUXll0/NfmYx4Hn4+HQDj53Y1xCu0FA9qhmO42cP\nQKlbH3oEgC9YIslKUuzyFxbBhogbKUoE4md0rzGRzGf8GwMV1RCU5ikHLQKBgHXO\nOgbhqFrKr12RV/+VvBC1xarI5FtnF2NR/sBqgrZSademOQvsudAJRSapcr1nciS0\nP5kLbmZsguI1PRFi06jKSH/X2JhZhdgH9fX6lXKJYQ5HCTn2zunSb6Rq7ht0gIEp\ngT4YhsEVpQwP31O25mdfjwhEZ8UhvBp/7DSuaZVZAoGBAL8Ycnhniv1WvBeHioSu\nyqGmIMnCBOvJ6VjimprQ+5rEIB3LbJsjWZonMZm9rjtD/hNPqTk/Z19dB7ehH0/F\n4ZyESBPcipOievyqubvijcr+aLMqp0xWTvuWzSaLrHcmkHkdzHscnUcRNesLAfD+\nOCQNnFYCRNbQ4QV5Mhx6Z2UR\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheet-crud-demo@gsheetcruddemo-454816.iam.gserviceaccount.com",
  "client_id": "105462828259352455494",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheet-crud-demo%40gsheetcruddemo-454816.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
''';

final gsheetinit = GSheets(credentials);

var GsheetController;

Worksheet? gsheetCrudUserDetails;

GsheetIntIt()async{
GsheetController = 
    await gsheetinit.spreadsheet(sheetId);

gsheetCrudUserDetails = 
    await GsheetController.worksheetByTitle('gsheet_crud_demo');

}