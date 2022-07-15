
import 'api_common.dart';

/// list
list() async{
  return await dio.get('/tag');
}
/// save
save(String tagName,{int? tagId}) async{
  return await dio.post('/tag',data: {
    'tagId':tagId,
    'tagName':tagName
  });
}
/// del
del(int tagId) async{
  return await dio.delete('/tag/$tagId');
}