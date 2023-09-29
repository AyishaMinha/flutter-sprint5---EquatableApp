import 'package:equatable/equatable.dart';

class User extends Equatable{
  final String userName;
  final String phoneNumb;
  final String userImage;
  User({required this.userName,required this.phoneNumb, required this.userImage});

  @override
  List<Object> get props =>[userName, phoneNumb, userImage];
}