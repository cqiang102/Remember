// save
import 'api_common.dart';

const record = '/record';

save(int recordType, double recordMoney, DateTime recordTime,
    String recordRemark, List<int> tagIds) async {
  return await dio.post(record, data: {
    'recordType': recordType,
    'recordMoney': recordMoney,
    'recordTime': recordTime.toString(),
    'recordRemark': recordRemark,
    'tagIds': tagIds,
  });
}

// del
del(int recordId) async {
  return await dio.delete('$record/$recordId');
}

// page
page(
  int currentPage,
  int pageSize, {
  int? recordType,
  int? cmd,
  double? recordMoney,
  DateTime? recordTimeStart,
  DateTime? recordTimeEnd,
  String? recordRemark,
  List<int>? tagIds,
}) async {
  return await dio.post('$record/$currentPage/$pageSize', data: {
    'recordType':recordType,
    'cmd':cmd ,
    'recordMoney':recordMoney ?? '',
    'recordRemark':recordRemark ?? '',
    'tagIds':tagIds ?? [],
    'recordTimeStart':recordTimeStart.toString(),
    'recordTimeEnd':recordTimeEnd.toString(),
  });
}
