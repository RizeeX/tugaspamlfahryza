import 'package:vania/vania.dart';
import 'dart:math';

class Order extends Model {
  Order() {
    super.table('orders');
  }
  String generateId() { 
    const characters = '0123456789'; 
    Random random = Random(); 
    return String.fromCharCodes(Iterable.generate( 
      11, (_) => characters.codeUnitAt(random.nextInt(characters.length)), 
    ));
  }
}