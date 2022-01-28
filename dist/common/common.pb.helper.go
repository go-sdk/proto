package common

import (
	"google.golang.org/protobuf/types/known/anypb"
	"google.golang.org/protobuf/types/known/durationpb"
	"google.golang.org/protobuf/types/known/structpb"
	"google.golang.org/protobuf/types/known/timestamppb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

var AnyNew = anypb.New
var AnyMarshalFrom = anypb.MarshalFrom
var AnyUnmarshalTo = anypb.UnmarshalTo
var AnyUnmarshalNew = anypb.UnmarshalNew

var DurationNew = durationpb.New

var NewStruct = structpb.NewStruct
var NewValue = structpb.NewValue
var NewNullValue = structpb.NewNullValue
var NewBoolValue = structpb.NewBoolValue
var NewNumberValue = structpb.NewNumberValue
var NewStringValue = structpb.NewStringValue
var NewStructValue = structpb.NewStructValue
var NewListValue = structpb.NewListValue
var NewList = structpb.NewList

var TimestampNow = timestamppb.Now
var TimestampNew = timestamppb.New

var Double = wrapperspb.Double
var Float = wrapperspb.Float
var Int64 = wrapperspb.Int64
var UInt64 = wrapperspb.UInt64
var Int32 = wrapperspb.Int32
var UInt32 = wrapperspb.UInt32
var Bool = wrapperspb.Bool
var String = wrapperspb.String
var Bytes = wrapperspb.Bytes
