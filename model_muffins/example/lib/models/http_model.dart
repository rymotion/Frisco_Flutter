/// [HTTPModel] is an example of using a REST call representation and getting some data [foo]
import 'dart:convert';
import 'dart:collection';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:example/models/serialization.dart';

part 'http_model.g.dart';

abstract class HTTPModel implements Built<HTTPModel, HTTPModelBuilder>{
  
}