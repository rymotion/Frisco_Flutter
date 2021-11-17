/// [MethodModel] is an example of using a method channel call and getting some data [foo]
import 'dart:convert';
import 'dart:collection';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:example/models/serializer.dart';

part 'method_model.g.dart';

abstract class MethodModel implements Built<MethodModel, MethodModelBuilder>{
  MethodModel._();

  factory MethodModel([updates(MethodModelBuilder b)]) = _$MethodModel;

  @BuiltValueField(wireName: "foo")
  @BuiltValueSerializer(serializeNulls: true)
  String get foo;

  String toJson() => json.encode(serializers.serializeWith(MethodModel.serializer, this));

  static MethodModel fromJson(String response) => serializers.deserializeWith(MethodModel.serializer, json.decode(response));

  static Serializer<MethodModel> get serializer => _$methodModelSerializer;
}