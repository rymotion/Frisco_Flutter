/// [MethodModel] is an example of using a method channel call and getting some data [foo]
import 'dart:convert';
import 'dart:collection';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:example/models/serialization.dart';

part 'method_model.g.dart';

abstract class MethodModel implements Built<MethodModel, MethodModelBuilder>{
  
}