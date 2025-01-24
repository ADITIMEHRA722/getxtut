import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            ElevatedButton(onPressed: (){
              Get.snackbar("snackbar", "your snackbar is here",
              //snackPosition: SnackPosition.BOTTOM 
              snackPosition: SnackPosition.TOP,
              colorText: Colors.green, 
              borderRadius: 30,
              margin: EdgeInsets.all(10),
             // maxWidth: 100,
             animationDuration: Duration(milliseconds: 3000),
             backgroundGradient: LinearGradient(colors: [
              const Color.fromARGB(255, 244, 241, 54), Colors.green
             ]), 
             // while you are using borer color must use border with otherwise error will aris
             borderColor: Colors.green,
             borderWidth: 2,
            //  boxShadows: [
            //   BoxShadow(
            //     color: const Color.fromARGB(255, 153, 152, 151),
            //   //  offset: Offset(6, 8),
            //     //spreadRadius: 10,
            //     blurRadius: 10
            //   )
            //  ]
            isDismissible: true,
            dismissDirection: DismissDirection.horizontal, 
            icon: Icon(
              Icons.send,
              color: Colors.black,
            ),
            shouldIconPulse: false,
            overlayBlur: 5,
            // userInputForm: Form(child: Row(
            //   children: [
            //     Expanded(child: 
            //     TextField(
                  
            //     ))
            //   ],
            // ),),
            //leftBarIndicatorColor: Colors.green,
            mainButton: TextButton(onPressed: (){
              Text("hii aditi");
            }, child: Text("Click"))
              );
            }, 
            child: Text("Show snackbar"),

          
            
            )

            
          ],
        ),
      ),
    );
  }
}