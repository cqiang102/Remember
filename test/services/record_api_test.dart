import 'package:dio/dio.dart';
import 'package:remember/services/record_api_service.dart';

main()async {
  Response rsp =await save(1,10.10,DateTime.now(),'测试',[1,2,3]);
  print(rsp);
  rsp =await del(1);
  print(rsp);
  rsp =await page(1,10);
  print(rsp);
}