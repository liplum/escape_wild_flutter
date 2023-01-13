import 'package:escape_wild/core.dart';
import 'package:jconverter/jconverter.dart';

void registerTypes(JConverter cvt) {
  cvt.addAuto(ItemEntry.type, ItemEntry.fromJson);
  cvt.addAuto(ContainerItemEntry.type, ContainerItemEntry.fromJson);
  cvt.addAuto(Backpack.type, Backpack.fromJson);
}
