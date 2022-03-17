import 'dart:convert';
import 'dart:collection';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value_generator/builder.dart';
import 'package:example/models/serializer.dart';

part 'generic_test.g.dart';

abstract class GenericTest<T extends Object> implements Built<GenericTest<T>, GenericTestBuilder<T>> {
  GenericTest._();
  
  factory GenericTest([updates(GenericTestBuilder<T> b)]) = _$GenericTest<T>;

  @BuiltValueField(wireName: "data")
  @BuiltValueSerializer(serializeNulls: true)
  T get data;

  String toJson() => json.encode(serializers.serializeWith(GenericTest.serializer, this));

  static GenericTest fromJson(String response) => serializers.deserializeWith(GenericTest.serializer, json.decode(response));

  static Serializer<GenericTest> get serializer => _$genericTestSerializer;
}