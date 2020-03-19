import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


enum ToastLength{LONG,SHORT}
class Toastplugintest {
  static const MethodChannel _channel =
      const MethodChannel('toastplugintest');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool> showToast({@required String message,ToastLength toastLength,int time=1}) async{
      String duration = "short";
      if(toastLength==ToastLength.LONG){
          duration = "long";
      }

      final Map<String,dynamic> params = <String,dynamic>{
          'message':message,
        'duration':duration,
        'time':time
      };
       bool res = (await _channel.invokeListMethod('showToast',params)) as bool;
       return res;
  }
}
