import 'package:vania/vania.dart';
import 'dart:math';

class ProductNotes extends Model {
  ProductNotes() {
    super.table('productnotes');
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