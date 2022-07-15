import 'package:dio/dio.dart';
import 'package:remember/services/tag_api_service.dart';

main()async{
  Response rsp = await save('工资',tagId: 1547846658573856769);
print(rsp);
assert (rsp.data['code'] == 2500);
rsp = await save('工资');
print(rsp);
assert (rsp.data['code'] == 2500);
rsp = await del(1547846658573856769);
print(rsp);
assert (rsp.data['code'] == 2500);
rsp = await list();
print(rsp);
assert (rsp.data['code'] == 2000);
}