import 'package:vania/vania.dart';
import 'dart:math';

class OrderItems extends Model {
  OrderItems() {
    super.table('orderitems');
  }
    String generateId() { 
    const characters = '0123456789'; 
    Random random = Random(); 
    return String.fromCharCodes(Iterable.generate( 
      11, (_) => characters.codeUnitAt(random.nextInt(characters.length)), 
    ));
  }
}
