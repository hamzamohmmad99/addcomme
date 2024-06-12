import 'package:brforetest_app/model/comments_model.dart';
import 'package:dio/dio.dart';

abstract class Service{
  Dio dio =Dio();
  String baseurl='https://freetestapi.com/api/v1/products';
  late Response response;
  Future <List<CommentsModel>> getcomment();

}
class CommentsSerivceImp extends Service{
  @override
  Future<List<CommentsModel>> getcomment() async{
   try{
    response=await dio.get(baseurl);
    if(response.statusCode==200){
      List<CommentsModel>comment=List.generate(response.data.length, (index)=>CommentsModel.fromMap(response.data[index])
      );
      return comment;
    }else{
      return [];
    }

   }on DioException catch (e){
    print(e.message);
    return[];
   }
  }

}