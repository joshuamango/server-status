import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

main(List<String> args) async {
  
  var url = args.length > 0 ? 'https://api.mcsrvstat.us/2/${args[0]}' : 'https://api.mcsrvstat.us/2/joshuaodeyemi.com';
  var response = await http.read(url); 
  var stuff = jsonDecode(response);
  print('${stuff["motd"]["clean"]}');
  print('Online: ${stuff["online"]}');
  print('Players: ${stuff["players"]["online"]}/${stuff["players"]["max"]}');
  print('Version: ${stuff["version"]}');
}
