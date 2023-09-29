 import 'package:compare/user.dart';
import 'package:flutter/material.dart';

class Compare extends StatefulWidget {
   const Compare({super.key});
 
   @override
   State<Compare> createState() => _CompareState();
 }
 
 class _CompareState extends State<Compare> {
  final user1 = User(userName: 'Ayisha' , phoneNumb:'8086737240' , userImage: 'https://tse3.mm.bing.net/th?id=OIP.HN6mtQ3VXrKfwMSRHujiVwAAAA&pid=Api&P=0');
  final user2 = User(userName: 'Minha' , phoneNumb:'7306204170' , userImage: 'https://tse3.mm.bing.net/th?id=OIP.HN6mtQ3VXrKfwMSRHujiVwAAAA&pid=Api&P=0');
  compareUser(BuildContext context){
    if(user1 == user2){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Yes, They are equal!')));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No, They are not equal!')));
    }
    
    
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('Equatable Example')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            userWidget(phoneNo: user1.phoneNumb, name: user1.userName, image: user1.userImage),

            ElevatedButton(onPressed: () {
              compareUser(context);
              
            }, child: Text('Compare'),
            ),
            userWidget(phoneNo: user2.phoneNumb, name: user2.userName, image: user2.userImage),
          ],
        ),


        ),
     
     );
     
      
     
   }
 }

 userWidget({
    required phoneNo,
    required name,
    required image,
  }) {
    return Column(
      children: [
        Image.network(
          image,
          width: 200,
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          phoneNo,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }