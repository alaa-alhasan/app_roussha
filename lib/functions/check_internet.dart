

import 'dart:io';

Future<bool> CheckInternet() async {
  try{
    var result = await InternetAddress.lookup("google.com");
    if(result.isNotEmpty && result[0].rawAddress.isNotEmpty){
      return true;
    }
  }on SocketException catch(_){
      return false;
      }

  return false;
}