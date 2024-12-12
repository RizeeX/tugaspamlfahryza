import 'package:vania/vania.dart';
import 'dart:math';

class Customers extends Model{
  Customers(){
    super.table('customers');
  }
    String generateId() { 
    const characters =     
    'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'; 
    Random random = Random(); 
    return String.fromCharCodes(Iterable.generate( 
      5, (_) => characters.codeUnitAt(random.nextInt(characters.length)), 
    ));
  }
}