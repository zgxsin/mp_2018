       £K"	   шБї÷Abrain.Event:2ЦЭЁdѓ%     нц	bшБї÷A"ҐЋ
н

,training_input_pipeline/input_producer/ConstConst*М

valueВ
B€	(B./train/dataTrain_1.tfrecordsB./train/dataTrain_2.tfrecordsB./train/dataTrain_3.tfrecordsB./train/dataTrain_4.tfrecordsB./train/dataTrain_5.tfrecordsB./train/dataTrain_6.tfrecordsB./train/dataTrain_7.tfrecordsB./train/dataTrain_8.tfrecordsB./train/dataTrain_9.tfrecordsB./train/dataTrain_10.tfrecordsB./train/dataTrain_11.tfrecordsB./train/dataTrain_12.tfrecordsB./train/dataTrain_13.tfrecordsB./train/dataTrain_14.tfrecordsB./train/dataTrain_15.tfrecordsB./train/dataTrain_16.tfrecordsB./train/dataTrain_17.tfrecordsB./train/dataTrain_18.tfrecordsB./train/dataTrain_19.tfrecordsB./train/dataTrain_20.tfrecordsB./train/dataTrain_21.tfrecordsB./train/dataTrain_22.tfrecordsB./train/dataTrain_23.tfrecordsB./train/dataTrain_24.tfrecordsB./train/dataTrain_25.tfrecordsB./train/dataTrain_26.tfrecordsB./train/dataTrain_27.tfrecordsB./train/dataTrain_28.tfrecordsB./train/dataTrain_29.tfrecordsB./train/dataTrain_30.tfrecordsB./train/dataTrain_31.tfrecordsB./train/dataTrain_32.tfrecordsB./train/dataTrain_33.tfrecordsB./train/dataTrain_34.tfrecordsB./train/dataTrain_35.tfrecordsB./train/dataTrain_36.tfrecordsB./train/dataTrain_37.tfrecordsB./train/dataTrain_38.tfrecordsB./train/dataTrain_39.tfrecordsB./train/dataTrain_40.tfrecords*
dtype0*
_output_shapes
:(
m
+training_input_pipeline/input_producer/SizeConst*
value	B :(*
dtype0*
_output_shapes
: 
r
0training_input_pipeline/input_producer/Greater/yConst*
value	B : *
dtype0*
_output_shapes
: 
є
.training_input_pipeline/input_producer/GreaterGreater+training_input_pipeline/input_producer/Size0training_input_pipeline/input_producer/Greater/y*
_output_shapes
: *
T0
™
3training_input_pipeline/input_producer/Assert/ConstConst*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
≤
;training_input_pipeline/input_producer/Assert/Assert/data_0Const*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
»
4training_input_pipeline/input_producer/Assert/AssertAssert.training_input_pipeline/input_producer/Greater;training_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
≈
/training_input_pipeline/input_producer/IdentityIdentity,training_input_pipeline/input_producer/Const5^training_input_pipeline/input_producer/Assert/Assert*
_output_shapes
:(*
T0
і
4training_input_pipeline/input_producer/RandomShuffleRandomShuffle/training_input_pipeline/input_producer/Identity*
T0*
_output_shapes
:(*
seed2 *

seed 
{
9training_input_pipeline/input_producer/limit_epochs/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ю
:training_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
џ
Atraining_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign:training_input_pipeline/input_producer/limit_epochs/epochs9training_input_pipeline/input_producer/limit_epochs/Const*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
validate_shape(*
_output_shapes
: *
use_locking(
ч
?training_input_pipeline/input_producer/limit_epochs/epochs/readIdentity:training_input_pipeline/input_producer/limit_epochs/epochs*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 
Г
=training_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo:training_input_pipeline/input_producer/limit_epochs/epochs*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit2
Џ
3training_input_pipeline/input_producer/limit_epochsIdentity4training_input_pipeline/input_producer/RandomShuffle>^training_input_pipeline/input_producer/limit_epochs/CountUpTo*
T0*
_output_shapes
:(
Ђ
&training_input_pipeline/input_producerFIFOQueueV2*
capacity *
	container *
_output_shapes
: *
component_types
2*
shapes
: *
shared_name 
е
Atraining_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2&training_input_pipeline/input_producer3training_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms€€€€€€€€€
Т
;training_input_pipeline/input_producer/input_producer_CloseQueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues( 
Ф
=training_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues(
Й
:training_input_pipeline/input_producer/input_producer_SizeQueueSizeV2&training_input_pipeline/input_producer*
_output_shapes
: 
Ґ
.training_input_pipeline/input_producer/ToFloatCast:training_input_pipeline/input_producer/input_producer_Size*

SrcT0*
_output_shapes
: *

DstT0
q
,training_input_pipeline/input_producer/mul/yConst*
valueB
 *   =*
dtype0*
_output_shapes
: 
∞
*training_input_pipeline/input_producer/mulMul.training_input_pipeline/input_producer/ToFloat,training_input_pipeline/input_producer/mul/y*
_output_shapes
: *
T0
Ї
?training_input_pipeline/input_producer/fraction_of_32_full/tagsConst*K
valueBB@ B:training_input_pipeline/input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 
ў
:training_input_pipeline/input_producer/fraction_of_32_fullScalarSummary?training_input_pipeline/input_producer/fraction_of_32_full/tags*training_input_pipeline/input_producer/mul*
T0*
_output_shapes
: 
Ф
(training_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
†
$training_input_pipeline/ReaderReadV2ReaderReadV2(training_input_pipeline/TFRecordReaderV2&training_input_pipeline/input_producer*
_output_shapes
: : 
М
Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
О
Ktraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ћ
Зtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
dtype0*
_output_shapes
: *
valueB 
є
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Blabel
Ї
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Њ
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Љ
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
≈
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ѕ
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
™
itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Г
^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample&training_input_pipeline/ReaderReadV2:1Зtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptystraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstKtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse 
ш
2training_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
ъ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ъ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ъ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
p
.training_input_pipeline/TFRecordDecoding/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
д
,training_input_pipeline/TFRecordDecoding/subSub^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample.training_input_pipeline/TFRecordDecoding/sub/y*
T0	*
_output_shapes
: 
 
0training_input_pipeline/TFRecordDecoding/ToInt32Cast`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	
П
6training_input_pipeline/TFRecordDecoding/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
п
0training_input_pipeline/TFRecordDecoding/ReshapeReshape2training_input_pipeline/TFRecordDecoding/DecodeRaw6training_input_pipeline/TFRecordDecoding/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
≥
0training_input_pipeline/TFRecordDecoding/ToFloatCast0training_input_pipeline/TFRecordDecoding/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
С
8training_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2training_input_pipeline/TFRecordDecoding/Reshape_1Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_18training_input_pipeline/TFRecordDecoding/Reshape_1/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
Ј
2training_input_pipeline/TFRecordDecoding/ToFloat_1Cast2training_input_pipeline/TFRecordDecoding/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
С
8training_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2training_input_pipeline/TFRecordDecoding/Reshape_2Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_28training_input_pipeline/TFRecordDecoding/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
Ј
2training_input_pipeline/TFRecordDecoding/ToFloat_2Cast2training_input_pipeline/TFRecordDecoding/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
}
:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
и
8training_input_pipeline/TFRecordDecoding/Reshape_3/shapePack0training_input_pipeline/TFRecordDecoding/ToInt32:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
о
2training_input_pipeline/TFRecordDecoding/Reshape_3Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_38training_input_pipeline/TFRecordDecoding/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ш
?training_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ц
-training_input_pipeline/TFRecordDecoding/MeanMean0training_input_pipeline/TFRecordDecoding/ToFloat?training_input_pipeline/TFRecordDecoding/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
–
.training_input_pipeline/TFRecordDecoding/sub_1Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
£
/training_input_pipeline/TFRecordDecoding/SquareSquare.training_input_pipeline/TFRecordDecoding/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ъ
Atraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
щ
/training_input_pipeline/TFRecordDecoding/Mean_1Mean/training_input_pipeline/TFRecordDecoding/SquareAtraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
Ч
-training_input_pipeline/TFRecordDecoding/SqrtSqrt/training_input_pipeline/TFRecordDecoding/Mean_1*
T0*&
_output_shapes
:
w
2training_input_pipeline/TFRecordDecoding/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
ѕ
0training_input_pipeline/TFRecordDecoding/MaximumMaximum-training_input_pipeline/TFRecordDecoding/Sqrt2training_input_pipeline/TFRecordDecoding/Maximum/y*&
_output_shapes
:*
T0
–
.training_input_pipeline/TFRecordDecoding/sub_2Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*/
_output_shapes
:€€€€€€€€€PP*
T0
„
0training_input_pipeline/TFRecordDecoding/truedivRealDiv.training_input_pipeline/TFRecordDecoding/sub_20training_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ц
*training_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
§
&training_input_pipeline/ReaderReadV2_1ReaderReadV2*training_input_pipeline/TFRecordReaderV2_1&training_input_pipeline/input_producer*
_output_shapes
: : 
О
Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Р
Mtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ќ
Йtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
dtype0*
_output_shapes
: *
valueB 
ї
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Љ
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
ј
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Bdepth
Њ
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
«
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
√
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
ђ
ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Ы
`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_1:1Йtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*
Ncontext_dense*$
feature_list_dense_types
2*
Nfeature_list_sparse *
Ncontext_sparse *
context_dense_shapes
: : *
context_sparse_types
 *
Nfeature_list_dense
ь
4training_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
r
0training_input_pipeline/TFRecordDecoding_1/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
к
.training_input_pipeline/TFRecordDecoding_1/subSub`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_1/sub/y*
T0	*
_output_shapes
: 
ќ
2training_input_pipeline/TFRecordDecoding_1/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	
С
8training_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2training_input_pipeline/TFRecordDecoding_1/ReshapeReshape4training_input_pipeline/TFRecordDecoding_1/DecodeRaw8training_input_pipeline/TFRecordDecoding_1/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
Ј
2training_input_pipeline/TFRecordDecoding_1/ToFloatCast2training_input_pipeline/TFRecordDecoding_1/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4training_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
ї
4training_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_1*/
_output_shapes
:€€€€€€€€€PP*

DstT0*

SrcT0
У
:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4training_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4training_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0

<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
о
:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_1/ToInt32<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ф
4training_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ъ
Atraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
/training_input_pipeline/TFRecordDecoding_1/MeanMean2training_input_pipeline/TFRecordDecoding_1/ToFloatAtraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
÷
0training_input_pipeline/TFRecordDecoding_1/sub_1Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*/
_output_shapes
:€€€€€€€€€PP*
T0
І
1training_input_pipeline/TFRecordDecoding_1/SquareSquare0training_input_pipeline/TFRecordDecoding_1/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ь
Ctraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
€
1training_input_pipeline/TFRecordDecoding_1/Mean_1Mean1training_input_pipeline/TFRecordDecoding_1/SquareCtraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Ы
/training_input_pipeline/TFRecordDecoding_1/SqrtSqrt1training_input_pipeline/TFRecordDecoding_1/Mean_1*&
_output_shapes
:*
T0
y
4training_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
’
2training_input_pipeline/TFRecordDecoding_1/MaximumMaximum/training_input_pipeline/TFRecordDecoding_1/Sqrt4training_input_pipeline/TFRecordDecoding_1/Maximum/y*
T0*&
_output_shapes
:
÷
0training_input_pipeline/TFRecordDecoding_1/sub_2Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ё
2training_input_pipeline/TFRecordDecoding_1/truedivRealDiv0training_input_pipeline/TFRecordDecoding_1/sub_22training_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ц
*training_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
§
&training_input_pipeline/ReaderReadV2_2ReaderReadV2*training_input_pipeline/TFRecordReaderV2_2&training_input_pipeline/input_producer*
_output_shapes
: : 
О
Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 
Р
Mtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ќ
Йtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ї
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Љ
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
ј
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Њ
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
«
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
√
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
ђ
ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
dtype0*
_output_shapes
: *
valueB B 
Ы
`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_2:1Йtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse *
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 
ь
4training_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
ю
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
r
0training_input_pipeline/TFRecordDecoding_2/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
к
.training_input_pipeline/TFRecordDecoding_2/subSub`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_2/sub/y*
T0	*
_output_shapes
: 
ќ
2training_input_pipeline/TFRecordDecoding_2/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	
С
8training_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2training_input_pipeline/TFRecordDecoding_2/ReshapeReshape4training_input_pipeline/TFRecordDecoding_2/DecodeRaw8training_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
Ј
2training_input_pipeline/TFRecordDecoding_2/ToFloatCast2training_input_pipeline/TFRecordDecoding_2/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
ы
4training_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4training_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
ы
4training_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4training_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0

<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
о
:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_2/ToInt32<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ф
4training_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ъ
Atraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
ь
/training_input_pipeline/TFRecordDecoding_2/MeanMean2training_input_pipeline/TFRecordDecoding_2/ToFloatAtraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
÷
0training_input_pipeline/TFRecordDecoding_2/sub_1Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
І
1training_input_pipeline/TFRecordDecoding_2/SquareSquare0training_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ь
Ctraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
€
1training_input_pipeline/TFRecordDecoding_2/Mean_1Mean1training_input_pipeline/TFRecordDecoding_2/SquareCtraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
Ы
/training_input_pipeline/TFRecordDecoding_2/SqrtSqrt1training_input_pipeline/TFRecordDecoding_2/Mean_1*&
_output_shapes
:*
T0
y
4training_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
’
2training_input_pipeline/TFRecordDecoding_2/MaximumMaximum/training_input_pipeline/TFRecordDecoding_2/Sqrt4training_input_pipeline/TFRecordDecoding_2/Maximum/y*
T0*&
_output_shapes
:
÷
0training_input_pipeline/TFRecordDecoding_2/sub_2Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*/
_output_shapes
:€€€€€€€€€PP*
T0
Ё
2training_input_pipeline/TFRecordDecoding_2/truedivRealDiv0training_input_pipeline/TFRecordDecoding_2/sub_22training_input_pipeline/TFRecordDecoding_2/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ц
*training_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
§
&training_input_pipeline/ReaderReadV2_3ReaderReadV2*training_input_pipeline/TFRecordReaderV2_3&training_input_pipeline/input_producer*
_output_shapes
: : 
О
Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Р
Mtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ќ
Йtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
dtype0*
_output_shapes
: *
valueB 
ї
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Љ
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
ј
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Њ
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
«
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
√
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
ђ
ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Ы
`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_3:1Йtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse *
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense
ь
4training_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
ю
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
ю
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
r
0training_input_pipeline/TFRecordDecoding_3/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
к
.training_input_pipeline/TFRecordDecoding_3/subSub`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_3/sub/y*
_output_shapes
: *
T0	
ќ
2training_input_pipeline/TFRecordDecoding_3/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
С
8training_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2training_input_pipeline/TFRecordDecoding_3/ReshapeReshape4training_input_pipeline/TFRecordDecoding_3/DecodeRaw8training_input_pipeline/TFRecordDecoding_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
Ј
2training_input_pipeline/TFRecordDecoding_3/ToFloatCast2training_input_pipeline/TFRecordDecoding_3/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4training_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4training_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_1*/
_output_shapes
:€€€€€€€€€PP*

DstT0*

SrcT0
У
:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4training_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4training_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0

<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
о
:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_3/ToInt32<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ф
4training_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*(
_output_shapes
:€€€€€€€€€і*
T0*
Tshape0
Ъ
Atraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
/training_input_pipeline/TFRecordDecoding_3/MeanMean2training_input_pipeline/TFRecordDecoding_3/ToFloatAtraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
÷
0training_input_pipeline/TFRecordDecoding_3/sub_1Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
І
1training_input_pipeline/TFRecordDecoding_3/SquareSquare0training_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ь
Ctraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
€
1training_input_pipeline/TFRecordDecoding_3/Mean_1Mean1training_input_pipeline/TFRecordDecoding_3/SquareCtraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ы
/training_input_pipeline/TFRecordDecoding_3/SqrtSqrt1training_input_pipeline/TFRecordDecoding_3/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *љ7Ж5
’
2training_input_pipeline/TFRecordDecoding_3/MaximumMaximum/training_input_pipeline/TFRecordDecoding_3/Sqrt4training_input_pipeline/TFRecordDecoding_3/Maximum/y*
T0*&
_output_shapes
:
÷
0training_input_pipeline/TFRecordDecoding_3/sub_2Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*/
_output_shapes
:€€€€€€€€€PP*
T0
Ё
2training_input_pipeline/TFRecordDecoding_3/truedivRealDiv0training_input_pipeline/TFRecordDecoding_3/sub_22training_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
r
0training_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
ґ
=training_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*u
shapesk
i:€€€€€€€€€PP: :€€€€€€€€€PP:€€€€€€€€€PP: :€€€€€€€€€і*
shared_name *
capacity»*
	container *
_output_shapes
: *
component_types

2	
ъ
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue2training_input_pipeline/TFRecordDecoding/ToFloat_1,training_input_pipeline/TFRecordDecoding/sub0training_input_pipeline/TFRecordDecoding/truediv2training_input_pipeline/TFRecordDecoding/ToFloat_20training_input_pipeline/TFRecordDecoding/ToInt322training_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
И
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_1/ToFloat_1.training_input_pipeline/TFRecordDecoding_1/sub2training_input_pipeline/TFRecordDecoding_1/truediv4training_input_pipeline/TFRecordDecoding_1/ToFloat_22training_input_pipeline/TFRecordDecoding_1/ToInt324training_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
И
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_2/ToFloat_1.training_input_pipeline/TFRecordDecoding_2/sub2training_input_pipeline/TFRecordDecoding_2/truediv4training_input_pipeline/TFRecordDecoding_2/ToFloat_22training_input_pipeline/TFRecordDecoding_2/ToInt324training_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
И
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_3/ToFloat_1.training_input_pipeline/TFRecordDecoding_3/sub2training_input_pipeline/TFRecordDecoding_3/truediv4training_input_pipeline/TFRecordDecoding_3/ToFloat_22training_input_pipeline/TFRecordDecoding_3/ToInt324training_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
±
Ctraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
≥
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
®
Btraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
Ѓ
2training_input_pipeline/batch_join_and_pad/ToFloatCastBtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Size*

SrcT0*
_output_shapes
: *

DstT0
u
0training_input_pipeline/batch_join_and_pad/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *
„£;
Љ
.training_input_pipeline/batch_join_and_pad/mulMul2training_input_pipeline/batch_join_and_pad/ToFloat0training_input_pipeline/batch_join_and_pad/mul/y*
T0*
_output_shapes
: 
ƒ
Dtraining_input_pipeline/batch_join_and_pad/fraction_of_200_full/tagsConst*P
valueGBE B?training_input_pipeline/batch_join_and_pad/fraction_of_200_full*
dtype0*
_output_shapes
: 
з
?training_input_pipeline/batch_join_and_pad/fraction_of_200_fullScalarSummaryDtraining_input_pipeline/batch_join_and_pad/fraction_of_200_full/tags.training_input_pipeline/batch_join_and_pad/mul*
_output_shapes
: *
T0
n
,training_input_pipeline/batch_join_and_pad/nConst*
dtype0*
_output_shapes
: *
value	B :

Б
*training_input_pipeline/batch_join_and_padQueueDequeueManyV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue,training_input_pipeline/batch_join_and_pad/n*

timeout_ms€€€€€€€€€*Ч
_output_shapesД
Б:
€€€€€€€€€PP:
:
€€€€€€€€€PP:
€€€€€€€€€PP:
:
€€€€€€€€€і*
component_types

2	
е
.validation_input_pipeline/input_producer/ConstConst*В
valueшBхB'./validation/dataValidation_1.tfrecordsB'./validation/dataValidation_2.tfrecordsB'./validation/dataValidation_3.tfrecordsB'./validation/dataValidation_4.tfrecordsB'./validation/dataValidation_5.tfrecordsB'./validation/dataValidation_6.tfrecordsB'./validation/dataValidation_7.tfrecordsB'./validation/dataValidation_8.tfrecordsB'./validation/dataValidation_9.tfrecordsB(./validation/dataValidation_10.tfrecordsB(./validation/dataValidation_11.tfrecordsB(./validation/dataValidation_12.tfrecordsB(./validation/dataValidation_13.tfrecordsB(./validation/dataValidation_14.tfrecordsB(./validation/dataValidation_15.tfrecords*
dtype0*
_output_shapes
:
o
-validation_input_pipeline/input_producer/SizeConst*
dtype0*
_output_shapes
: *
value	B :
t
2validation_input_pipeline/input_producer/Greater/yConst*
dtype0*
_output_shapes
: *
value	B : 
њ
0validation_input_pipeline/input_producer/GreaterGreater-validation_input_pipeline/input_producer/Size2validation_input_pipeline/input_producer/Greater/y*
_output_shapes
: *
T0
ђ
5validation_input_pipeline/input_producer/Assert/ConstConst*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
і
=validation_input_pipeline/input_producer/Assert/Assert/data_0Const*
dtype0*
_output_shapes
: *G
value>B< B6string_input_producer requires a non-null input tensor
ќ
6validation_input_pipeline/input_producer/Assert/AssertAssert0validation_input_pipeline/input_producer/Greater=validation_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
Ћ
1validation_input_pipeline/input_producer/IdentityIdentity.validation_input_pipeline/input_producer/Const7^validation_input_pipeline/input_producer/Assert/Assert*
T0*
_output_shapes
:
}
;validation_input_pipeline/input_producer/limit_epochs/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
†
<validation_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
dtype0	*
_output_shapes
: *
	container *
shape: *
shared_name 
г
Cvalidation_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign<validation_input_pipeline/input_producer/limit_epochs/epochs;validation_input_pipeline/input_producer/limit_epochs/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs
э
Avalidation_input_pipeline/input_producer/limit_epochs/epochs/readIdentity<validation_input_pipeline/input_producer/limit_epochs/epochs*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 
Й
?validation_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo<validation_input_pipeline/input_producer/limit_epochs/epochs*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit2
џ
5validation_input_pipeline/input_producer/limit_epochsIdentity1validation_input_pipeline/input_producer/Identity@^validation_input_pipeline/input_producer/limit_epochs/CountUpTo*
T0*
_output_shapes
:
≠
(validation_input_pipeline/input_producerFIFOQueueV2*
_output_shapes
: *
component_types
2*
shapes
: *
shared_name *
capacity *
	container 
л
Cvalidation_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2(validation_input_pipeline/input_producer5validation_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms€€€€€€€€€
Ц
=validation_input_pipeline/input_producer/input_producer_CloseQueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues( 
Ш
?validation_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues(
Н
<validation_input_pipeline/input_producer/input_producer_SizeQueueSizeV2(validation_input_pipeline/input_producer*
_output_shapes
: 
¶
0validation_input_pipeline/input_producer/ToFloatCast<validation_input_pipeline/input_producer/input_producer_Size*

SrcT0*
_output_shapes
: *

DstT0
s
.validation_input_pipeline/input_producer/mul/yConst*
valueB
 *   =*
dtype0*
_output_shapes
: 
ґ
,validation_input_pipeline/input_producer/mulMul0validation_input_pipeline/input_producer/ToFloat.validation_input_pipeline/input_producer/mul/y*
T0*
_output_shapes
: 
Њ
Avalidation_input_pipeline/input_producer/fraction_of_32_full/tagsConst*M
valueDBB B<validation_input_pipeline/input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 
я
<validation_input_pipeline/input_producer/fraction_of_32_fullScalarSummaryAvalidation_input_pipeline/input_producer/fraction_of_32_full/tags,validation_input_pipeline/input_producer/mul*
T0*
_output_shapes
: 
Ц
*validation_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
¶
&validation_input_pipeline/ReaderReadV2ReaderReadV2*validation_input_pipeline/TFRecordReaderV2(validation_input_pipeline/input_producer*
_output_shapes
: : 
О
Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Р
Mvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
Ќ
Йvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ї
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Blabel
Љ
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
ј
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Њ
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
«
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
√
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
ђ
kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Ы
`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(validation_input_pipeline/ReaderReadV2:1Йvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyuvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstMvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
Ncontext_dense*$
feature_list_dense_types
2*
Nfeature_list_sparse *
Ncontext_sparse *
context_dense_shapes
: : *
context_sparse_types
 *
Nfeature_list_dense*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		
ь
4validation_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
r
0validation_input_pipeline/TFRecordDecoding/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
к
.validation_input_pipeline/TFRecordDecoding/subSub`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample0validation_input_pipeline/TFRecordDecoding/sub/y*
_output_shapes
: *
T0	
ќ
2validation_input_pipeline/TFRecordDecoding/ToInt32Castbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
С
8validation_input_pipeline/TFRecordDecoding/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2validation_input_pipeline/TFRecordDecoding/ReshapeReshape4validation_input_pipeline/TFRecordDecoding/DecodeRaw8validation_input_pipeline/TFRecordDecoding/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
Ј
2validation_input_pipeline/TFRecordDecoding/ToFloatCast2validation_input_pipeline/TFRecordDecoding/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:validation_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4validation_input_pipeline/TFRecordDecoding/Reshape_1Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1:validation_input_pipeline/TFRecordDecoding/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4validation_input_pipeline/TFRecordDecoding/ToFloat_1Cast4validation_input_pipeline/TFRecordDecoding/Reshape_1*/
_output_shapes
:€€€€€€€€€PP*

DstT0*

SrcT0
У
:validation_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4validation_input_pipeline/TFRecordDecoding/Reshape_2Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2:validation_input_pipeline/TFRecordDecoding/Reshape_2/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
ї
4validation_input_pipeline/TFRecordDecoding/ToFloat_2Cast4validation_input_pipeline/TFRecordDecoding/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0

<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :і
о
:validation_input_pipeline/TFRecordDecoding/Reshape_3/shapePack2validation_input_pipeline/TFRecordDecoding/ToInt32<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ф
4validation_input_pipeline/TFRecordDecoding/Reshape_3Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3:validation_input_pipeline/TFRecordDecoding/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ъ
Avalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
/validation_input_pipeline/TFRecordDecoding/MeanMean2validation_input_pipeline/TFRecordDecoding/ToFloatAvalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
÷
0validation_input_pipeline/TFRecordDecoding/sub_1Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*/
_output_shapes
:€€€€€€€€€PP*
T0
І
1validation_input_pipeline/TFRecordDecoding/SquareSquare0validation_input_pipeline/TFRecordDecoding/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ь
Cvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
€
1validation_input_pipeline/TFRecordDecoding/Mean_1Mean1validation_input_pipeline/TFRecordDecoding/SquareCvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ы
/validation_input_pipeline/TFRecordDecoding/SqrtSqrt1validation_input_pipeline/TFRecordDecoding/Mean_1*&
_output_shapes
:*
T0
y
4validation_input_pipeline/TFRecordDecoding/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
’
2validation_input_pipeline/TFRecordDecoding/MaximumMaximum/validation_input_pipeline/TFRecordDecoding/Sqrt4validation_input_pipeline/TFRecordDecoding/Maximum/y*
T0*&
_output_shapes
:
÷
0validation_input_pipeline/TFRecordDecoding/sub_2Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ё
2validation_input_pipeline/TFRecordDecoding/truedivRealDiv0validation_input_pipeline/TFRecordDecoding/sub_22validation_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ш
,validation_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
™
(validation_input_pipeline/ReaderReadV2_1ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_1(validation_input_pipeline/input_producer*
_output_shapes
: : 
Р
Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Т
Ovalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
ѕ
Лvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
љ
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Њ
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
¬
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Bdepth
ј
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
…
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
≈
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ѓ
mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
≥
bvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_1:1Лvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse *
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : 
А
6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
t
2validation_input_pipeline/TFRecordDecoding_1/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
р
0validation_input_pipeline/TFRecordDecoding_1/subSubbvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_1/sub/y*
_output_shapes
: *
T0	
“
4validation_input_pipeline/TFRecordDecoding_1/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
У
:validation_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4validation_input_pipeline/TFRecordDecoding_1/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw:validation_input_pipeline/TFRecordDecoding_1/Reshape/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
ї
4validation_input_pipeline/TFRecordDecoding_1/ToFloatCast4validation_input_pipeline/TFRecordDecoding_1/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
Б
6validation_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
Б
6validation_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Б
>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
ф
<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_1/ToInt32>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
ъ
6validation_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ь
Cvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
В
1validation_input_pipeline/TFRecordDecoding_1/MeanMean4validation_input_pipeline/TFRecordDecoding_1/ToFloatCvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
№
2validation_input_pipeline/TFRecordDecoding_1/sub_1Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*/
_output_shapes
:€€€€€€€€€PP*
T0
Ђ
3validation_input_pipeline/TFRecordDecoding_1/SquareSquare2validation_input_pipeline/TFRecordDecoding_1/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ю
Evalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Е
3validation_input_pipeline/TFRecordDecoding_1/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_1/SquareEvalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
Я
1validation_input_pipeline/TFRecordDecoding_1/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_1/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
џ
4validation_input_pipeline/TFRecordDecoding_1/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_1/Sqrt6validation_input_pipeline/TFRecordDecoding_1/Maximum/y*
T0*&
_output_shapes
:
№
2validation_input_pipeline/TFRecordDecoding_1/sub_2Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
г
4validation_input_pipeline/TFRecordDecoding_1/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_1/sub_24validation_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ш
,validation_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
™
(validation_input_pipeline/ReaderReadV2_2ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_2(validation_input_pipeline/input_producer*
_output_shapes
: : 
Р
Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Т
Ovalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
ѕ
Лvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
љ
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Њ
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
¬
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Bdepth
ј
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
…
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
≈
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
Ѓ
mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
≥
bvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_2:1Лvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse *
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		
А
6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
t
2validation_input_pipeline/TFRecordDecoding_2/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
р
0validation_input_pipeline/TFRecordDecoding_2/subSubbvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_2/sub/y*
T0	*
_output_shapes
: 
“
4validation_input_pipeline/TFRecordDecoding_2/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
У
:validation_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4validation_input_pipeline/TFRecordDecoding_2/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw:validation_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4validation_input_pipeline/TFRecordDecoding_2/ToFloatCast4validation_input_pipeline/TFRecordDecoding_2/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
Б
6validation_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
Б
6validation_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Б
>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
ф
<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_2/ToInt32>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
ъ
6validation_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*(
_output_shapes
:€€€€€€€€€і*
T0*
Tshape0
Ь
Cvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
В
1validation_input_pipeline/TFRecordDecoding_2/MeanMean4validation_input_pipeline/TFRecordDecoding_2/ToFloatCvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
№
2validation_input_pipeline/TFRecordDecoding_2/sub_1Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ђ
3validation_input_pipeline/TFRecordDecoding_2/SquareSquare2validation_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ю
Evalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Е
3validation_input_pipeline/TFRecordDecoding_2/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_2/SquareEvalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Я
1validation_input_pipeline/TFRecordDecoding_2/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_2/Mean_1*&
_output_shapes
:*
T0
{
6validation_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
џ
4validation_input_pipeline/TFRecordDecoding_2/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_2/Sqrt6validation_input_pipeline/TFRecordDecoding_2/Maximum/y*&
_output_shapes
:*
T0
№
2validation_input_pipeline/TFRecordDecoding_2/sub_2Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
г
4validation_input_pipeline/TFRecordDecoding_2/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_2/sub_24validation_input_pipeline/TFRecordDecoding_2/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ш
,validation_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
™
(validation_input_pipeline/ReaderReadV2_3ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_3(validation_input_pipeline/input_producer*
_output_shapes
: : 
Р
Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Т
Ovalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
ѕ
Лvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
љ
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Њ
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
¬
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ј
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
…
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
≈
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ѓ
mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
≥
bvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_3:1Лvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
Ncontext_sparse *
context_dense_shapes
: : *
context_sparse_types
 *
Nfeature_list_dense*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*
Ncontext_dense*$
feature_list_dense_types
2*
Nfeature_list_sparse 
А
6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
t
2validation_input_pipeline/TFRecordDecoding_3/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
р
0validation_input_pipeline/TFRecordDecoding_3/subSubbvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_3/sub/y*
_output_shapes
: *
T0	
“
4validation_input_pipeline/TFRecordDecoding_3/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
У
:validation_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4validation_input_pipeline/TFRecordDecoding_3/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw:validation_input_pipeline/TFRecordDecoding_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4validation_input_pipeline/TFRecordDecoding_3/ToFloatCast4validation_input_pipeline/TFRecordDecoding_3/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
Б
6validation_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
Б
6validation_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_2*/
_output_shapes
:€€€€€€€€€PP*

DstT0*

SrcT0
Б
>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :і
ф
<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_3/ToInt32>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ъ
6validation_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ь
Cvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
В
1validation_input_pipeline/TFRecordDecoding_3/MeanMean4validation_input_pipeline/TFRecordDecoding_3/ToFloatCvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
№
2validation_input_pipeline/TFRecordDecoding_3/sub_1Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ђ
3validation_input_pipeline/TFRecordDecoding_3/SquareSquare2validation_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ю
Evalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Е
3validation_input_pipeline/TFRecordDecoding_3/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_3/SquareEvalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
Я
1validation_input_pipeline/TFRecordDecoding_3/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_3/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
џ
4validation_input_pipeline/TFRecordDecoding_3/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_3/Sqrt6validation_input_pipeline/TFRecordDecoding_3/Maximum/y*
T0*&
_output_shapes
:
№
2validation_input_pipeline/TFRecordDecoding_3/sub_2Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*/
_output_shapes
:€€€€€€€€€PP*
T0
г
4validation_input_pipeline/TFRecordDecoding_3/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_3/sub_24validation_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
t
2validation_input_pipeline/batch_join_and_pad/ConstConst*
dtype0
*
_output_shapes
: *
value	B
 Z
Є
?validation_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
_output_shapes
: *
component_types

2	*u
shapesk
i:€€€€€€€€€PP: :€€€€€€€€€PP:€€€€€€€€€PP: :€€€€€€€€€і*
shared_name *
capacity»*
	container 
К
Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue4validation_input_pipeline/TFRecordDecoding/ToFloat_1.validation_input_pipeline/TFRecordDecoding/sub2validation_input_pipeline/TFRecordDecoding/truediv4validation_input_pipeline/TFRecordDecoding/ToFloat_22validation_input_pipeline/TFRecordDecoding/ToInt324validation_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
Ш
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_1/ToFloat_10validation_input_pipeline/TFRecordDecoding_1/sub4validation_input_pipeline/TFRecordDecoding_1/truediv6validation_input_pipeline/TFRecordDecoding_1/ToFloat_24validation_input_pipeline/TFRecordDecoding_1/ToInt326validation_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
Ш
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_2/ToFloat_10validation_input_pipeline/TFRecordDecoding_2/sub4validation_input_pipeline/TFRecordDecoding_2/truediv6validation_input_pipeline/TFRecordDecoding_2/ToFloat_24validation_input_pipeline/TFRecordDecoding_2/ToInt326validation_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
Ш
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_3/ToFloat_10validation_input_pipeline/TFRecordDecoding_3/sub4validation_input_pipeline/TFRecordDecoding_3/truediv6validation_input_pipeline/TFRecordDecoding_3/ToFloat_24validation_input_pipeline/TFRecordDecoding_3/ToInt326validation_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
µ
Evalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
Ј
Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
ђ
Dvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
≤
4validation_input_pipeline/batch_join_and_pad/ToFloatCastDvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Size*

SrcT0*
_output_shapes
: *

DstT0
w
2validation_input_pipeline/batch_join_and_pad/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *
„£;
¬
0validation_input_pipeline/batch_join_and_pad/mulMul4validation_input_pipeline/batch_join_and_pad/ToFloat2validation_input_pipeline/batch_join_and_pad/mul/y*
T0*
_output_shapes
: 
»
Fvalidation_input_pipeline/batch_join_and_pad/fraction_of_200_full/tagsConst*
dtype0*
_output_shapes
: *R
valueIBG BAvalidation_input_pipeline/batch_join_and_pad/fraction_of_200_full
н
Avalidation_input_pipeline/batch_join_and_pad/fraction_of_200_fullScalarSummaryFvalidation_input_pipeline/batch_join_and_pad/fraction_of_200_full/tags0validation_input_pipeline/batch_join_and_pad/mul*
T0*
_output_shapes
: 
p
.validation_input_pipeline/batch_join_and_pad/nConst*
value	B :
*
dtype0*
_output_shapes
: 
З
,validation_input_pipeline/batch_join_and_padQueueDequeueManyV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue.validation_input_pipeline/batch_join_and_pad/n*Ч
_output_shapesД
Б:
€€€€€€€€€PP:
:
€€€€€€€€€PP:
€€€€€€€€€PP:
:
€€€€€€€€€і*
component_types

2	*

timeout_ms€€€€€€€€€
e
Training/SequenceMask/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
©
Training/SequenceMask/MaxMax,training_input_pipeline/batch_join_and_pad:4Training/SequenceMask/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
Training/SequenceMask/Const_1Const*
value	B : *
dtype0*
_output_shapes
: 
_
Training/SequenceMask/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
Ѓ
Training/SequenceMask/RangeRangeTraining/SequenceMask/Const_1Training/SequenceMask/MaxTraining/SequenceMask/Const_2*#
_output_shapes
:€€€€€€€€€*

Tidx0
o
$Training/SequenceMask/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ј
 Training/SequenceMask/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4$Training/SequenceMask/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

|
Training/SequenceMask/CastCast Training/SequenceMask/ExpandDims*
_output_shapes

:
*

DstT0*

SrcT0
Н
Training/SequenceMask/LessLessTraining/SequenceMask/RangeTraining/SequenceMask/Cast*'
_output_shapes
:
€€€€€€€€€*
T0
Б
Training/SequenceMask/Cast_1CastTraining/SequenceMask/Less*'
_output_shapes
:
€€€€€€€€€*

DstT0*

SrcT0

b
Training/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ъ
Training/ExpandDims
ExpandDimsTraining/SequenceMask/Cast_1Training/ExpandDims/dim*
T0*+
_output_shapes
:
€€€€€€€€€*

Tdim0
y
 Training/cnn_model/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
љ
Training/cnn_model/ReshapeReshape,training_input_pipeline/batch_join_and_pad:2 Training/cnn_model/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
„
Fcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB"            
¬
Ecnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/meanConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ƒ
Gcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *|Ё=
Ї
Pcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
seed2 
ѕ
Dcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulMulPcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalGcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
љ
@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normalAddDcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulEcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
я
#cnn_model/convolution/conv2d/kernel
VariableV2*
shape:*
dtype0*&
_output_shapes
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
	container 
≠
*cnn_model/convolution/conv2d/kernel/AssignAssign#cnn_model/convolution/conv2d/kernel@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normal*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
¬
(cnn_model/convolution/conv2d/kernel/readIdentity#cnn_model/convolution/conv2d/kernel*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
ґ
3cnn_model/convolution/conv2d/bias/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
√
!cnn_model/convolution/conv2d/bias
VariableV2*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
О
(cnn_model/convolution/conv2d/bias/AssignAssign!cnn_model/convolution/conv2d/bias3cnn_model/convolution/conv2d/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
∞
&cnn_model/convolution/conv2d/bias/readIdentity!cnn_model/convolution/conv2d/bias*
_output_shapes
:*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Д
3Training/cnn_model/convolution/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
§
,Training/cnn_model/convolution/conv2d/Conv2DConv2DTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€PP*
	dilations

я
-Training/cnn_model/convolution/conv2d/BiasAddBiasAdd,Training/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€PP
Ы
*Training/cnn_model/convolution/conv2d/ReluRelu-Training/cnn_model/convolution/conv2d/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€PP
ч
4Training/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool*Training/cnn_model/convolution/conv2d/Relu*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€((*
T0*
data_formatNHWC*
strides

џ
Hcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
∆
Gcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    
»
Icnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *HYЛ=*
dtype0*
_output_shapes
: 
ј
Rcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
: *

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
„
Fcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
≈
Bcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
г
%cnn_model/convolution/conv2d_1/kernel
VariableV2*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name 
µ
,cnn_model/convolution/conv2d_1/kernel/AssignAssign%cnn_model/convolution/conv2d_1/kernelBcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
»
*cnn_model/convolution/conv2d_1/kernel/readIdentity%cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
Ї
5cnn_model/convolution/conv2d_1/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
«
#cnn_model/convolution/conv2d_1/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
	container 
Ц
*cnn_model/convolution/conv2d_1/bias/AssignAssign#cnn_model/convolution/conv2d_1/bias5cnn_model/convolution/conv2d_1/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
ґ
(cnn_model/convolution/conv2d_1/bias/readIdentity#cnn_model/convolution/conv2d_1/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
Ж
5Training/cnn_model/convolution/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¬
.Training/cnn_model/convolution/conv2d_1/Conv2DConv2D4Training/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*/
_output_shapes
:€€€€€€€€€(( *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
е
/Training/cnn_model/convolution/conv2d_1/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€(( *
T0
Я
,Training/cnn_model/convolution/conv2d_1/ReluRelu/Training/cnn_model/convolution/conv2d_1/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€(( 
ы
6Training/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€ 
џ
Hcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
∆
Gcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
»
Icnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *£E=*
dtype0*
_output_shapes
: 
ј
Rcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
seed2 
„
Fcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
≈
Bcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mean*&
_output_shapes
: @*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
г
%cnn_model/convolution/conv2d_2/kernel
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
	container *
shape: @
µ
,cnn_model/convolution/conv2d_2/kernel/AssignAssign%cnn_model/convolution/conv2d_2/kernelBcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
»
*cnn_model/convolution/conv2d_2/kernel/readIdentity%cnn_model/convolution/conv2d_2/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
Ї
5cnn_model/convolution/conv2d_2/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
«
#cnn_model/convolution/conv2d_2/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias
Ц
*cnn_model/convolution/conv2d_2/bias/AssignAssign#cnn_model/convolution/conv2d_2/bias5cnn_model/convolution/conv2d_2/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
ґ
(cnn_model/convolution/conv2d_2/bias/readIdentity#cnn_model/convolution/conv2d_2/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
Ж
5Training/cnn_model/convolution/conv2d_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
ƒ
.Training/cnn_model/convolution/conv2d_2/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€@
е
/Training/cnn_model/convolution/conv2d_2/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€@
Я
,Training/cnn_model/convolution/conv2d_2/ReluRelu/Training/cnn_model/convolution/conv2d_2/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€@
ы
6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_2/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€

@*
T0
џ
Hcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   А   
∆
Gcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
»
Icnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *HY=*
dtype0*
_output_shapes
: 
Ѕ
Rcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shape*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
seed2 *
dtype0*'
_output_shapes
:@А*

seed 
Ў
Fcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@А
∆
Bcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@А
е
%cnn_model/convolution/conv2d_3/kernel
VariableV2*
dtype0*'
_output_shapes
:@А*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@А
ґ
,cnn_model/convolution/conv2d_3/kernel/AssignAssign%cnn_model/convolution/conv2d_3/kernelBcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@А*
use_locking(
…
*cnn_model/convolution/conv2d_3/kernel/readIdentity%cnn_model/convolution/conv2d_3/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@А
Љ
5cnn_model/convolution/conv2d_3/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
…
#cnn_model/convolution/conv2d_3/bias
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
Ч
*cnn_model/convolution/conv2d_3/bias/AssignAssign#cnn_model/convolution/conv2d_3/bias5cnn_model/convolution/conv2d_3/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ј
(cnn_model/convolution/conv2d_3/bias/readIdentity#cnn_model/convolution/conv2d_3/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:А
Ж
5Training/cnn_model/convolution/conv2d_3/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
≈
.Training/cnn_model/convolution/conv2d_3/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*0
_output_shapes
:€€€€€€€€€

А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ж
/Training/cnn_model/convolution/conv2d_3/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€

А*
T0
†
,Training/cnn_model/convolution/conv2d_3/ReluRelu/Training/cnn_model/convolution/conv2d_3/BiasAdd*0
_output_shapes
:€€€€€€€€€

А*
T0
ь
6Training/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_3/Relu*
ksize
*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC*
strides

џ
Hcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      А      *
dtype0*
_output_shapes
:
∆
Gcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    
»
Icnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *£≈<*
dtype0*
_output_shapes
: 
¬
Rcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:АА*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
seed2 
ў
Fcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:АА
«
Bcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:АА
з
%cnn_model/convolution/conv2d_4/kernel
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:АА*
dtype0*(
_output_shapes
:АА
Ј
,cnn_model/convolution/conv2d_4/kernel/AssignAssign%cnn_model/convolution/conv2d_4/kernelBcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:АА
 
*cnn_model/convolution/conv2d_4/kernel/readIdentity%cnn_model/convolution/conv2d_4/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:АА
Љ
5cnn_model/convolution/conv2d_4/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
…
#cnn_model/convolution/conv2d_4/bias
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias
Ч
*cnn_model/convolution/conv2d_4/bias/AssignAssign#cnn_model/convolution/conv2d_4/bias5cnn_model/convolution/conv2d_4/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias
Ј
(cnn_model/convolution/conv2d_4/bias/readIdentity#cnn_model/convolution/conv2d_4/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:А
Ж
5Training/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
≈
.Training/cnn_model/convolution/conv2d_4/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ж
/Training/cnn_model/convolution/conv2d_4/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
†
,Training/cnn_model/convolution/conv2d_4/ReluRelu/Training/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
ь
6Training/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_4/Relu*0
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
s
"Training/cnn_model/Reshape_1/shapeConst*
valueB"€€€€ 	  *
dtype0*
_output_shapes
:
ƒ
Training/cnn_model/Reshape_1Reshape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool"Training/cnn_model/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
µ
9cnn_model/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     
®
8cnn_model/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    
™
:cnn_model/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *)
_class
loc:@cnn_model/dense/kernel*
valueB
 *JQЏ<
Н
Ccnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9cnn_model/dense/kernel/Initializer/truncated_normal/shape*
T0*)
_class
loc:@cnn_model/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
АА*

seed 
Х
7cnn_model/dense/kernel/Initializer/truncated_normal/mulMulCcnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormal:cnn_model/dense/kernel/Initializer/truncated_normal/stddev*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
АА
Г
3cnn_model/dense/kernel/Initializer/truncated_normalAdd7cnn_model/dense/kernel/Initializer/truncated_normal/mul8cnn_model/dense/kernel/Initializer/truncated_normal/mean*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
АА
є
cnn_model/dense/kernel
VariableV2*)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name 
у
cnn_model/dense/kernel/AssignAssigncnn_model/dense/kernel3cnn_model/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:
АА
Х
cnn_model/dense/kernel/readIdentitycnn_model/dense/kernel*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
АА
Ю
&cnn_model/dense/bias/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
Ђ
cnn_model/dense/bias
VariableV2*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
џ
cnn_model/dense/bias/AssignAssigncnn_model/dense/bias&cnn_model/dense/bias/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:А
К
cnn_model/dense/bias/readIdentitycnn_model/dense/bias*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:А
љ
Training/cnn_model/dense/MatMulMatMulTraining/cnn_model/Reshape_1cnn_model/dense/kernel/read*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( *
T0
±
 Training/cnn_model/dense/BiasAddBiasAddTraining/cnn_model/dense/MatMulcnn_model/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
z
Training/cnn_model/dense/ReluRelu Training/cnn_model/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
w
"Training/cnn_model/Reshape_2/shapeConst*!
valueB"
   €€€€   *
dtype0*
_output_shapes
:
ѓ
Training/cnn_model/Reshape_2ReshapeTraining/cnn_model/dense/Relu"Training/cnn_model/Reshape_2/shape*,
_output_shapes
:
€€€€€€€€€А*
T0*
Tshape0
g
Training/SequenceMask_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
≠
Training/SequenceMask_1/MaxMax,training_input_pipeline/batch_join_and_pad:4Training/SequenceMask_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
Training/SequenceMask_1/Const_1Const*
value	B : *
dtype0*
_output_shapes
: 
a
Training/SequenceMask_1/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
ґ
Training/SequenceMask_1/RangeRangeTraining/SequenceMask_1/Const_1Training/SequenceMask_1/MaxTraining/SequenceMask_1/Const_2*#
_output_shapes
:€€€€€€€€€*

Tidx0
q
&Training/SequenceMask_1/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
ї
"Training/SequenceMask_1/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4&Training/SequenceMask_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

А
Training/SequenceMask_1/CastCast"Training/SequenceMask_1/ExpandDims*

SrcT0*
_output_shapes

:
*

DstT0
У
Training/SequenceMask_1/LessLessTraining/SequenceMask_1/RangeTraining/SequenceMask_1/Cast*'
_output_shapes
:
€€€€€€€€€*
T0
Е
Training/SequenceMask_1/Cast_1CastTraining/SequenceMask_1/Less*

SrcT0
*'
_output_shapes
:
€€€€€€€€€*

DstT0
d
Training/ExpandDims_1/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
†
Training/ExpandDims_1
ExpandDimsTraining/SequenceMask_1/Cast_1Training/ExpandDims_1/dim*
T0*+
_output_shapes
:
€€€€€€€€€*

Tdim0
g
%Training/rnn_model/recurrent/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
n
,Training/rnn_model/recurrent/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
n
,Training/rnn_model/recurrent/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Џ
&Training/rnn_model/recurrent/rnn/rangeRange,Training/rnn_model/recurrent/rnn/range/start%Training/rnn_model/recurrent/rnn/Rank,Training/rnn_model/recurrent/rnn/range/delta*
_output_shapes
:*

Tidx0
Б
0Training/rnn_model/recurrent/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
n
,Training/rnn_model/recurrent/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
х
'Training/rnn_model/recurrent/rnn/concatConcatV20Training/rnn_model/recurrent/rnn/concat/values_0&Training/rnn_model/recurrent/rnn/range,Training/rnn_model/recurrent/rnn/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
¬
*Training/rnn_model/recurrent/rnn/transpose	TransposeTraining/cnn_model/Reshape_2'Training/rnn_model/recurrent/rnn/concat*
T0*,
_output_shapes
:€€€€€€€€€
А*
Tperm0
П
0Training/rnn_model/recurrent/rnn/sequence_lengthIdentity,training_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:

В
8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
valueB:
*
dtype0*
_output_shapes
:
Е
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
А
>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
µ
9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV28Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
Г
>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ч
8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	
А
Д
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
valueB:
*
dtype0*
_output_shapes
:
Е
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
valueB:А*
dtype0*
_output_shapes
:
Д
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
valueB:
*
dtype0*
_output_shapes
:
Е
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:А*
dtype0*
_output_shapes
:
В
@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ї
;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Е
@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
э
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	
А
Д
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
dtype0*
_output_shapes
:*
valueB:

Е
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
valueB:А*
dtype0*
_output_shapes
:
p
&Training/rnn_model/recurrent/rnn/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

p
&Training/rnn_model/recurrent/rnn/stackConst*
dtype0*
_output_shapes
:*
valueB:

§
&Training/rnn_model/recurrent/rnn/EqualEqual&Training/rnn_model/recurrent/rnn/Shape&Training/rnn_model/recurrent/rnn/stack*
_output_shapes
:*
T0
p
&Training/rnn_model/recurrent/rnn/ConstConst*
valueB: *
dtype0*
_output_shapes
:
∞
$Training/rnn_model/recurrent/rnn/AllAll&Training/rnn_model/recurrent/rnn/Equal&Training/rnn_model/recurrent/rnn/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
Њ
-Training/rnn_model/recurrent/rnn/Assert/ConstConst*a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
А
/Training/rnn_model/recurrent/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
∆
5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*
dtype0*
_output_shapes
: *a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is 
Ж
5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
Љ
.Training/rnn_model/recurrent/rnn/Assert/AssertAssert$Training/rnn_model/recurrent/rnn/All5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0&Training/rnn_model/recurrent/rnn/stack5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2&Training/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
ј
,Training/rnn_model/recurrent/rnn/CheckSeqLenIdentity0Training/rnn_model/recurrent/rnn/sequence_length/^Training/rnn_model/recurrent/rnn/Assert/Assert*
T0*
_output_shapes
:

Т
(Training/rnn_model/recurrent/rnn/Shape_1Shape*Training/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
~
4Training/rnn_model/recurrent/rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6Training/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
А
6Training/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
†
.Training/rnn_model/recurrent/rnn/strided_sliceStridedSlice(Training/rnn_model/recurrent/rnn/Shape_14Training/rnn_model/recurrent/rnn/strided_slice/stack6Training/rnn_model/recurrent/rnn/strided_slice/stack_16Training/rnn_model/recurrent/rnn/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
r
(Training/rnn_model/recurrent/rnn/Const_1Const*
valueB:
*
dtype0*
_output_shapes
:
s
(Training/rnn_model/recurrent/rnn/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
p
.Training/rnn_model/recurrent/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
у
)Training/rnn_model/recurrent/rnn/concat_1ConcatV2(Training/rnn_model/recurrent/rnn/Const_1(Training/rnn_model/recurrent/rnn/Const_2.Training/rnn_model/recurrent/rnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
q
,Training/rnn_model/recurrent/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
√
&Training/rnn_model/recurrent/rnn/zerosFill)Training/rnn_model/recurrent/rnn/concat_1,Training/rnn_model/recurrent/rnn/zeros/Const*
T0*

index_type0*
_output_shapes
:	
А
r
(Training/rnn_model/recurrent/rnn/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
Ѕ
$Training/rnn_model/recurrent/rnn/MinMin,Training/rnn_model/recurrent/rnn/CheckSeqLen(Training/rnn_model/recurrent/rnn/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
r
(Training/rnn_model/recurrent/rnn/Const_4Const*
valueB: *
dtype0*
_output_shapes
:
Ѕ
$Training/rnn_model/recurrent/rnn/MaxMax,Training/rnn_model/recurrent/rnn/CheckSeqLen(Training/rnn_model/recurrent/rnn/Const_4*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
g
%Training/rnn_model/recurrent/rnn/timeConst*
dtype0*
_output_shapes
: *
value	B : 
–
,Training/rnn_model/recurrent/rnn/TensorArrayTensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*
identical_element_shapes(*L
tensor_array_name75Training/rnn_model/recurrent/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:	
А*
clear_after_read(*
dynamic_size( 
—
.Training/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*
dtype0*
_output_shapes

:: *
element_shape:	
А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*K
tensor_array_name64Training/rnn_model/recurrent/rnn/dynamic_rnn/input_0
£
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape*Training/rnn_model/recurrent/rnn/transpose*
_output_shapes
:*
T0*
out_type0
С
GTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
У
ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
У
ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
э
ATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeGTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Б
?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Б
?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Є
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRange?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
Ь
[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3.Training/rnn_model/recurrent/rnn/TensorArray_19Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range*Training/rnn_model/recurrent/rnn/transpose0Training/rnn_model/recurrent/rnn/TensorArray_1:1*
T0*=
_class3
1/loc:@Training/rnn_model/recurrent/rnn/transpose*
_output_shapes
: 
l
*Training/rnn_model/recurrent/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
¶
(Training/rnn_model/recurrent/rnn/MaximumMaximum*Training/rnn_model/recurrent/rnn/Maximum/x$Training/rnn_model/recurrent/rnn/Max*
T0*
_output_shapes
: 
Ѓ
(Training/rnn_model/recurrent/rnn/MinimumMinimum.Training/rnn_model/recurrent/rnn/strided_slice(Training/rnn_model/recurrent/rnn/Maximum*
T0*
_output_shapes
: 
z
8Training/rnn_model/recurrent/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
Д
,Training/rnn_model/recurrent/rnn/while/EnterEnter8Training/rnn_model/recurrent/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
у
.Training/rnn_model/recurrent/rnn/while/Enter_1Enter%Training/rnn_model/recurrent/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ь
.Training/rnn_model/recurrent/rnn/while/Enter_2Enter.Training/rnn_model/recurrent/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
П
.Training/rnn_model/recurrent/rnn/while/Enter_3Enter8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	
А*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
С
.Training/rnn_model/recurrent/rnn/while/Enter_4Enter:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	
А*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
≈
,Training/rnn_model/recurrent/rnn/while/MergeMerge,Training/rnn_model/recurrent/rnn/while/Enter4Training/rnn_model/recurrent/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
Ћ
.Training/rnn_model/recurrent/rnn/while/Merge_1Merge.Training/rnn_model/recurrent/rnn/while/Enter_16Training/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Ћ
.Training/rnn_model/recurrent/rnn/while/Merge_2Merge.Training/rnn_model/recurrent/rnn/while/Enter_26Training/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
‘
.Training/rnn_model/recurrent/rnn/while/Merge_3Merge.Training/rnn_model/recurrent/rnn/while/Enter_36Training/rnn_model/recurrent/rnn/while/NextIteration_3*
T0*
N*!
_output_shapes
:	
А: 
‘
.Training/rnn_model/recurrent/rnn/while/Merge_4Merge.Training/rnn_model/recurrent/rnn/while/Enter_46Training/rnn_model/recurrent/rnn/while/NextIteration_4*
T0*
N*!
_output_shapes
:	
А: 
µ
+Training/rnn_model/recurrent/rnn/while/LessLess,Training/rnn_model/recurrent/rnn/while/Merge1Training/rnn_model/recurrent/rnn/while/Less/Enter*
T0*
_output_shapes
: 
€
1Training/rnn_model/recurrent/rnn/while/Less/EnterEnter.Training/rnn_model/recurrent/rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ї
-Training/rnn_model/recurrent/rnn/while/Less_1Less.Training/rnn_model/recurrent/rnn/while/Merge_13Training/rnn_model/recurrent/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
ы
3Training/rnn_model/recurrent/rnn/while/Less_1/EnterEnter(Training/rnn_model/recurrent/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
≥
1Training/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd+Training/rnn_model/recurrent/rnn/while/Less-Training/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 
Ж
/Training/rnn_model/recurrent/rnn/while/LoopCondLoopCond1Training/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 
ъ
-Training/rnn_model/recurrent/rnn/while/SwitchSwitch,Training/rnn_model/recurrent/rnn/while/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/while/Merge
А
/Training/rnn_model/recurrent/rnn/while/Switch_1Switch.Training/rnn_model/recurrent/rnn/while/Merge_1/Training/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_1
А
/Training/rnn_model/recurrent/rnn/while/Switch_2Switch.Training/rnn_model/recurrent/rnn/while/Merge_2/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_2*
_output_shapes
: : 
Т
/Training/rnn_model/recurrent/rnn/while/Switch_3Switch.Training/rnn_model/recurrent/rnn/while/Merge_3/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_3**
_output_shapes
:	
А:	
А
Т
/Training/rnn_model/recurrent/rnn/while/Switch_4Switch.Training/rnn_model/recurrent/rnn/while/Merge_4/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_4**
_output_shapes
:	
А:	
А
Н
/Training/rnn_model/recurrent/rnn/while/IdentityIdentity/Training/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 
С
1Training/rnn_model/recurrent/rnn/while/Identity_1Identity1Training/rnn_model/recurrent/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
С
1Training/rnn_model/recurrent/rnn/while/Identity_2Identity1Training/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
Ъ
1Training/rnn_model/recurrent/rnn/while/Identity_3Identity1Training/rnn_model/recurrent/rnn/while/Switch_3:1*
T0*
_output_shapes
:	
А
Ъ
1Training/rnn_model/recurrent/rnn/while/Identity_4Identity1Training/rnn_model/recurrent/rnn/while/Switch_4:1*
_output_shapes
:	
А*
T0
†
,Training/rnn_model/recurrent/rnn/while/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
±
*Training/rnn_model/recurrent/rnn/while/addAdd/Training/rnn_model/recurrent/rnn/while/Identity,Training/rnn_model/recurrent/rnn/while/add/y*
_output_shapes
: *
T0
∞
8Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3TensorArrayReadV3>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	
А
Р
>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ї
@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
÷
3Training/rnn_model/recurrent/rnn/while/GreaterEqualGreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_19Training/rnn_model/recurrent/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:

Й
9Training/rnn_model/recurrent/rnn/while/GreaterEqual/EnterEnter,Training/rnn_model/recurrent/rnn/CheckSeqLen*
parallel_iterations *
_output_shapes
:
*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
ў
Krnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
ћ
Jrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ќ
Lrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *м—<
√
Urnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shape*

seed *
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
seed2 *
dtype0* 
_output_shapes
:
АА
Ё
Irnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulMulUrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalLrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
АА
Ћ
Ernn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normalAddIrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulJrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
АА
Ё
(rnn_model/recurrent/rnn/lstm_cell/kernel
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
ї
/rnn_model/recurrent/rnn/lstm_cell/kernel/AssignAssign(rnn_model/recurrent/rnn/lstm_cell/kernelErnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
О
-rnn_model/recurrent/rnn/lstm_cell/kernel/readIdentity(rnn_model/recurrent/rnn/lstm_cell/kernel*
T0* 
_output_shapes
:
АА
ќ
Hrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:А*
dtype0*
_output_shapes
:
Њ
>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
љ
8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zerosFillHrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensor>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/Const*
_output_shapes	
:А*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0
ѕ
&rnn_model/recurrent/rnn/lstm_cell/bias
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container 
£
-rnn_model/recurrent/rnn/lstm_cell/bias/AssignAssign&rnn_model/recurrent/rnn/lstm_cell/bias8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
Е
+rnn_model/recurrent/rnn/lstm_cell/bias/readIdentity&rnn_model/recurrent/rnn/lstm_cell/bias*
T0*
_output_shapes	
:А
∞
<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axisConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
≠
7Training/rnn_model/recurrent/rnn/while/lstm_cell/concatConcatV28Training/rnn_model/recurrent/rnn/while/TensorArrayReadV31Training/rnn_model/recurrent/rnn/while/Identity_4<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis*
T0*
N*
_output_shapes
:	
А*

Tidx0
Й
7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMulMatMul7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter*
T0*
_output_shapes
:	
А*
transpose_a( *
transpose_b( 
Ф
=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
э
8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAddBiasAdd7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	
А
О
>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/EnterEnter+rnn_model/recurrent/rnn/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
™
6Training/rnn_model/recurrent/rnn/while/lstm_cell/ConstConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
і
@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dimConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ч
6Training/rnn_model/recurrent/rnn/while/lstm_cell/splitSplit@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd*
T0*@
_output_shapes.
,:	
А:	
А:	
А:	
А*
	num_split
≠
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
„
4Training/rnn_model/recurrent/rnn/while/lstm_cell/addAdd8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:26Training/rnn_model/recurrent/rnn/while/lstm_cell/add/y*
T0*
_output_shapes
:	
А
£
8Training/rnn_model/recurrent/rnn/while/lstm_cell/SigmoidSigmoid4Training/rnn_model/recurrent/rnn/while/lstm_cell/add*
T0*
_output_shapes
:	
А
“
4Training/rnn_model/recurrent/rnn/while/lstm_cell/mulMul8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid1Training/rnn_model/recurrent/rnn/while/Identity_3*
T0*
_output_shapes
:	
А
І
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1Sigmoid6Training/rnn_model/recurrent/rnn/while/lstm_cell/split*
T0*
_output_shapes
:	
А
°
5Training/rnn_model/recurrent/rnn/while/lstm_cell/TanhTanh8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:1*
T0*
_output_shapes
:	
А
Џ
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_15Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
T0*
_output_shapes
:	
А
’
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1Add4Training/rnn_model/recurrent/rnn/while/lstm_cell/mul6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1*
T0*
_output_shapes
:	
А
©
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2Sigmoid8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:3*
T0*
_output_shapes
:	
А
°
7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1Tanh6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*
_output_shapes
:	
А
№
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_27Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
T0*
_output_shapes
:	
А
ќ
-Training/rnn_model/recurrent/rnn/while/SelectSelect3Training/rnn_model/recurrent/rnn/while/GreaterEqual3Training/rnn_model/recurrent/rnn/while/Select/Enter6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
А
Ќ
3Training/rnn_model/recurrent/rnn/while/Select/EnterEnter&Training/rnn_model/recurrent/rnn/zeros*
is_constant(*
_output_shapes
:	
А*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
ќ
/Training/rnn_model/recurrent/rnn/while/Select_1Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_36Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	
А
ќ
/Training/rnn_model/recurrent/rnn/while/Select_2Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_46Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
А
≥
JTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1-Training/rnn_model/recurrent/rnn/while/Select1Training/rnn_model/recurrent/rnn/while/Identity_2*
_output_shapes
: *
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2
л
PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
is_constant(*
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
Ґ
.Training/rnn_model/recurrent/rnn/while/add_1/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ј
,Training/rnn_model/recurrent/rnn/while/add_1Add1Training/rnn_model/recurrent/rnn/while/Identity_1.Training/rnn_model/recurrent/rnn/while/add_1/y*
_output_shapes
: *
T0
Т
4Training/rnn_model/recurrent/rnn/while/NextIterationNextIteration*Training/rnn_model/recurrent/rnn/while/add*
T0*
_output_shapes
: 
Ц
6Training/rnn_model/recurrent/rnn/while/NextIteration_1NextIteration,Training/rnn_model/recurrent/rnn/while/add_1*
T0*
_output_shapes
: 
і
6Training/rnn_model/recurrent/rnn/while/NextIteration_2NextIterationJTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Ґ
6Training/rnn_model/recurrent/rnn/while/NextIteration_3NextIteration/Training/rnn_model/recurrent/rnn/while/Select_1*
T0*
_output_shapes
:	
А
Ґ
6Training/rnn_model/recurrent/rnn/while/NextIteration_4NextIteration/Training/rnn_model/recurrent/rnn/while/Select_2*
T0*
_output_shapes
:	
А
Г
+Training/rnn_model/recurrent/rnn/while/ExitExit-Training/rnn_model/recurrent/rnn/while/Switch*
T0*
_output_shapes
: 
З
-Training/rnn_model/recurrent/rnn/while/Exit_1Exit/Training/rnn_model/recurrent/rnn/while/Switch_1*
T0*
_output_shapes
: 
З
-Training/rnn_model/recurrent/rnn/while/Exit_2Exit/Training/rnn_model/recurrent/rnn/while/Switch_2*
T0*
_output_shapes
: 
Р
-Training/rnn_model/recurrent/rnn/while/Exit_3Exit/Training/rnn_model/recurrent/rnn/while/Switch_3*
T0*
_output_shapes
:	
А
Р
-Training/rnn_model/recurrent/rnn/while/Exit_4Exit/Training/rnn_model/recurrent/rnn/while/Switch_4*
T0*
_output_shapes
:	
А
О
CTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*
_output_shapes
: *?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray
ј
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startConst*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
ј
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/deltaConst*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
х
7Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeRange=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startCTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/delta*

Tidx0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*#
_output_shapes
:€€€€€€€€€
М
ETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3,Training/rnn_model/recurrent/rnn/TensorArray7Training/rnn_model/recurrent/rnn/TensorArrayStack/range-Training/rnn_model/recurrent/rnn/while/Exit_2*
dtype0*,
_output_shapes
:€€€€€€€€€
А*
element_shape:	
А*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray
s
(Training/rnn_model/recurrent/rnn/Const_5Const*
valueB:А*
dtype0*
_output_shapes
:
i
'Training/rnn_model/recurrent/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
p
.Training/rnn_model/recurrent/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
p
.Training/rnn_model/recurrent/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
в
(Training/rnn_model/recurrent/rnn/range_1Range.Training/rnn_model/recurrent/rnn/range_1/start'Training/rnn_model/recurrent/rnn/Rank_1.Training/rnn_model/recurrent/rnn/range_1/delta*

Tidx0*
_output_shapes
:
Г
2Training/rnn_model/recurrent/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
p
.Training/rnn_model/recurrent/rnn/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
э
)Training/rnn_model/recurrent/rnn/concat_2ConcatV22Training/rnn_model/recurrent/rnn/concat_2/values_0(Training/rnn_model/recurrent/rnn/range_1.Training/rnn_model/recurrent/rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
п
,Training/rnn_model/recurrent/rnn/transpose_1	TransposeETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3)Training/rnn_model/recurrent/rnn/concat_2*
T0*,
_output_shapes
:
€€€€€€€€€А*
Tperm0
q
 Training/rnn_model/Reshape/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
ґ
Training/rnn_model/ReshapeReshape,Training/rnn_model/recurrent/rnn/transpose_1 Training/rnn_model/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
n
)Training/logits/dropout/dropout/keep_probConst*
valueB
 *333?*
dtype0*
_output_shapes
: 

%Training/logits/dropout/dropout/ShapeShapeTraining/rnn_model/Reshape*
T0*
out_type0*
_output_shapes
:
w
2Training/logits/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
w
2Training/logits/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ќ
<Training/logits/dropout/dropout/random_uniform/RandomUniformRandomUniform%Training/logits/dropout/dropout/Shape*
T0*
dtype0*(
_output_shapes
:€€€€€€€€€А*
seed2 *

seed 
¬
2Training/logits/dropout/dropout/random_uniform/subSub2Training/logits/dropout/dropout/random_uniform/max2Training/logits/dropout/dropout/random_uniform/min*
_output_shapes
: *
T0
ё
2Training/logits/dropout/dropout/random_uniform/mulMul<Training/logits/dropout/dropout/random_uniform/RandomUniform2Training/logits/dropout/dropout/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
–
.Training/logits/dropout/dropout/random_uniformAdd2Training/logits/dropout/dropout/random_uniform/mul2Training/logits/dropout/dropout/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€А
Є
#Training/logits/dropout/dropout/addAdd)Training/logits/dropout/dropout/keep_prob.Training/logits/dropout/dropout/random_uniform*
T0*(
_output_shapes
:€€€€€€€€€А
Ж
%Training/logits/dropout/dropout/FloorFloor#Training/logits/dropout/dropout/add*
T0*(
_output_shapes
:€€€€€€€€€А
®
#Training/logits/dropout/dropout/divRealDivTraining/rnn_model/Reshape)Training/logits/dropout/dropout/keep_prob*(
_output_shapes
:€€€€€€€€€А*
T0
©
#Training/logits/dropout/dropout/mulMul#Training/logits/dropout/dropout/div%Training/logits/dropout/dropout/Floor*
T0*(
_output_shapes
:€€€€€€€€€А
ѓ
6logits/dense/kernel/Initializer/truncated_normal/shapeConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ґ
5logits/dense/kernel/Initializer/truncated_normal/meanConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
§
7logits/dense/kernel/Initializer/truncated_normal/stddevConst*&
_class
loc:@logits/dense/kernel*
valueB
 *R${=*
dtype0*
_output_shapes
: 
Г
@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6logits/dense/kernel/Initializer/truncated_normal/shape*
T0*&
_class
loc:@logits/dense/kernel*
seed2 *
dtype0*
_output_shapes
:	А*

seed 
И
4logits/dense/kernel/Initializer/truncated_normal/mulMul@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormal7logits/dense/kernel/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	А
ц
0logits/dense/kernel/Initializer/truncated_normalAdd4logits/dense/kernel/Initializer/truncated_normal/mul5logits/dense/kernel/Initializer/truncated_normal/mean*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	А
±
logits/dense/kernel
VariableV2*
dtype0*
_output_shapes
:	А*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	А
ж
logits/dense/kernel/AssignAssignlogits/dense/kernel0logits/dense/kernel/Initializer/truncated_normal*
T0*&
_class
loc:@logits/dense/kernel*
validate_shape(*
_output_shapes
:	А*
use_locking(
Л
logits/dense/kernel/readIdentitylogits/dense/kernel*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	А
Ц
#logits/dense/bias/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
£
logits/dense/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@logits/dense/bias
ќ
logits/dense/bias/AssignAssignlogits/dense/bias#logits/dense/bias/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:
А
logits/dense/bias/readIdentitylogits/dense/bias*
_output_shapes
:*
T0*$
_class
loc:@logits/dense/bias
љ
Training/logits/dense/MatMulMatMul#Training/logits/dropout/dropout/mullogits/dense/kernel/read*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( *
T0
І
Training/logits/dense/BiasAddBiasAddTraining/logits/dense/MatMullogits/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
r
Training/logits/Reshape/shapeConst*!
valueB"
   €€€€   *
dtype0*
_output_shapes
:
§
Training/logits/ReshapeReshapeTraining/logits/dense/BiasAddTraining/logits/Reshape/shape*
T0*
Tshape0*+
_output_shapes
:
€€€€€€€€€
Л
Training/logits_prediction/mulMulTraining/logits/ReshapeTraining/ExpandDims_1*
T0*+
_output_shapes
:
€€€€€€€€€
s
1Training/logits_prediction/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ј
Training/logits_prediction/MeanMeanTraining/logits_prediction/mul1Training/logits_prediction/Mean/reduction_indices*
T0*
_output_shapes

:
*
	keep_dims( *

Tidx0
П
ETraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
Ч
cTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsTraining/logits_prediction/Mean,training_input_pipeline/batch_join_and_pad:1*
T0*$
_output_shapes
:
:
*
Tlabels0	
k
!Training/cross_entropy_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
о
 Training/cross_entropy_loss/MeanMeancTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits!Training/cross_entropy_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
j
(Training/accuracy_stats/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
Ј
Training/accuracy_stats/ArgMaxArgMaxTraining/logits_prediction/Mean(Training/accuracy_stats/ArgMax/dimension*
T0*
output_type0	*
_output_shapes
:
*

Tidx0
Щ
Training/accuracy_stats/EqualEqualTraining/accuracy_stats/ArgMax,training_input_pipeline/batch_join_and_pad:1*
T0	*
_output_shapes
:

w
Training/accuracy_stats/CastCastTraining/accuracy_stats/Equal*

SrcT0
*
_output_shapes
:
*

DstT0
g
Training/accuracy_stats/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Э
Training/accuracy_stats/SumSumTraining/accuracy_stats/CastTraining/accuracy_stats/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
y
Training/accuracy_stats/Cast_1CastTraining/accuracy_stats/Equal*

SrcT0
*
_output_shapes
:
*

DstT0
i
Training/accuracy_stats/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
£
Training/accuracy_stats/MeanMeanTraining/accuracy_stats/Cast_1Training/accuracy_stats/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
i
'Training/accuracy/predictions/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
µ
Training/accuracy/predictionsArgMaxTraining/logits_prediction/Mean'Training/accuracy/predictions/dimension*

Tidx0*
T0*
output_type0	*
_output_shapes
:

d
"Training/global_step/initial_valueConst*
value	B :*
dtype0*
_output_shapes
: 
x
Training/global_step
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
“
Training/global_step/AssignAssignTraining/global_step"Training/global_step/initial_value*
use_locking(*
T0*'
_class
loc:@Training/global_step*
validate_shape(*
_output_shapes
: 
Е
Training/global_step/readIdentityTraining/global_step*
T0*'
_class
loc:@Training/global_step*
_output_shapes
: 
l
'Training/ExponentialDecay/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
q
Training/ExponentialDecay/CastCastTraining/global_step/read*

SrcT0*
_output_shapes
: *

DstT0
e
"Training/ExponentialDecay/Cast_1/xConst*
value
B :ф*
dtype0*
_output_shapes
: 
|
 Training/ExponentialDecay/Cast_1Cast"Training/ExponentialDecay/Cast_1/x*

SrcT0*
_output_shapes
: *

DstT0
g
"Training/ExponentialDecay/Cast_2/xConst*
valueB
 *мQx?*
dtype0*
_output_shapes
: 
П
!Training/ExponentialDecay/truedivRealDivTraining/ExponentialDecay/Cast Training/ExponentialDecay/Cast_1*
T0*
_output_shapes
: 
М
Training/ExponentialDecay/PowPow"Training/ExponentialDecay/Cast_2/x!Training/ExponentialDecay/truediv*
T0*
_output_shapes
: 
Й
Training/ExponentialDecayMul'Training/ExponentialDecay/learning_rateTraining/ExponentialDecay/Pow*
T0*
_output_shapes
: 
[
Training/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
a
Training/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
К
Training/gradients/FillFillTraining/gradients/ShapeTraining/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
\
Training/gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
÷
Training/gradients/f_count_1EnterTraining/gradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Н
Training/gradients/MergeMergeTraining/gradients/f_count_1 Training/gradients/NextIteration*
T0*
N*
_output_shapes
: : 
С
Training/gradients/SwitchSwitchTraining/gradients/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*
_output_shapes
: : 
М
Training/gradients/Add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
u
Training/gradients/AddAddTraining/gradients/Switch:1Training/gradients/Add/y*
T0*
_output_shapes
: 
ъ
 Training/gradients/NextIterationNextIterationTraining/gradients/Add[^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2Б^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2e^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2*
T0*
_output_shapes
: 
`
Training/gradients/f_count_2ExitTraining/gradients/Switch*
T0*
_output_shapes
: 
\
Training/gradients/b_countConst*
dtype0*
_output_shapes
: *
value	B :
л
Training/gradients/b_count_1EnterTraining/gradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
С
Training/gradients/Merge_1MergeTraining/gradients/b_count_1"Training/gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
У
Training/gradients/GreaterEqualGreaterEqualTraining/gradients/Merge_1%Training/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
т
%Training/gradients/GreaterEqual/EnterEnterTraining/gradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
a
Training/gradients/b_count_2LoopCondTraining/gradients/GreaterEqual*
_output_shapes
: 
В
Training/gradients/Switch_1SwitchTraining/gradients/Merge_1Training/gradients/b_count_2*
T0*
_output_shapes
: : 
Д
Training/gradients/SubSubTraining/gradients/Switch_1:1%Training/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
к
"Training/gradients/NextIteration_1NextIterationTraining/gradients/Sub|^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
b
Training/gradients/b_count_3ExitTraining/gradients/Switch_1*
T0*
_output_shapes
: 
Р
FTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
я
@Training/gradients/Training/cross_entropy_loss/Mean_grad/ReshapeReshapeTraining/gradients/FillFTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
И
>Training/gradients/Training/cross_entropy_loss/Mean_grad/ConstConst*
valueB:
*
dtype0*
_output_shapes
:
ю
=Training/gradients/Training/cross_entropy_loss/Mean_grad/TileTile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Reshape>Training/gradients/Training/cross_entropy_loss/Mean_grad/Const*
T0*
_output_shapes
:
*

Tmultiples0
Е
@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1Const*
valueB
 *   A*
dtype0*
_output_shapes
: 
с
@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivRealDiv=Training/gradients/Training/cross_entropy_loss/Mean_grad/Tile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1*
T0*
_output_shapes
:

Ї
Training/gradients/zeros_like	ZerosLikeeTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:

ж
ЛTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradienteTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*і
message®•Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:

÷
КTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
Щ
ЖTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivКTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:
*

Tdim0
∆
Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulЖTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsЛTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:
*
T0
Ы
=Training/gradients/Training/logits_prediction/Mean_grad/ShapeShapeTraining/logits_prediction/mul*
T0*
out_type0*
_output_shapes
:
–
<Training/gradients/Training/logits_prediction/Mean_grad/SizeConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
¶
;Training/gradients/Training/logits_prediction/Mean_grad/addAdd1Training/logits_prediction/Mean/reduction_indices<Training/gradients/Training/logits_prediction/Mean_grad/Size*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
: 
µ
;Training/gradients/Training/logits_prediction/Mean_grad/modFloorMod;Training/gradients/Training/logits_prediction/Mean_grad/add<Training/gradients/Training/logits_prediction/Mean_grad/Size*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
: 
‘
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1Const*
dtype0*
_output_shapes
: *P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
valueB 
„
CTraining/gradients/Training/logits_prediction/Mean_grad/range/startConst*
dtype0*
_output_shapes
: *P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B : 
„
CTraining/gradients/Training/logits_prediction/Mean_grad/range/deltaConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
И
=Training/gradients/Training/logits_prediction/Mean_grad/rangeRangeCTraining/gradients/Training/logits_prediction/Mean_grad/range/start<Training/gradients/Training/logits_prediction/Mean_grad/SizeCTraining/gradients/Training/logits_prediction/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape
÷
BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/valueConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
ќ
<Training/gradients/Training/logits_prediction/Mean_grad/FillFill?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/value*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*

index_type0*
_output_shapes
: 
Ў
ETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchDynamicStitch=Training/gradients/Training/logits_prediction/Mean_grad/range;Training/gradients/Training/logits_prediction/Mean_grad/mod=Training/gradients/Training/logits_prediction/Mean_grad/Shape<Training/gradients/Training/logits_prediction/Mean_grad/Fill*
N*#
_output_shapes
:€€€€€€€€€*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape
’
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/yConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
‘
?Training/gradients/Training/logits_prediction/Mean_grad/MaximumMaximumETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/y*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*#
_output_shapes
:€€€€€€€€€
√
@Training/gradients/Training/logits_prediction/Mean_grad/floordivFloorDiv=Training/gradients/Training/logits_prediction/Mean_grad/Shape?Training/gradients/Training/logits_prediction/Mean_grad/Maximum*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
:
√
?Training/gradients/Training/logits_prediction/Mean_grad/ReshapeReshapeTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
°
<Training/gradients/Training/logits_prediction/Mean_grad/TileTile?Training/gradients/Training/logits_prediction/Mean_grad/Reshape@Training/gradients/Training/logits_prediction/Mean_grad/floordiv*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0
Э
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2ShapeTraining/logits_prediction/mul*
_output_shapes
:*
T0*
out_type0
Р
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3Const*
valueB"
      *
dtype0*
_output_shapes
:
З
=Training/gradients/Training/logits_prediction/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
В
<Training/gradients/Training/logits_prediction/Mean_grad/ProdProd?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2=Training/gradients/Training/logits_prediction/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Й
?Training/gradients/Training/logits_prediction/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ж
>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1Prod?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3?Training/gradients/Training/logits_prediction/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Е
CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
т
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1Maximum>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
р
BTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1FloorDiv<Training/gradients/Training/logits_prediction/Mean_grad/ProdATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1*
_output_shapes
: *
T0
Є
<Training/gradients/Training/logits_prediction/Mean_grad/CastCastBTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
ь
?Training/gradients/Training/logits_prediction/Mean_grad/truedivRealDiv<Training/gradients/Training/logits_prediction/Mean_grad/Tile<Training/gradients/Training/logits_prediction/Mean_grad/Cast*
T0*+
_output_shapes
:
€€€€€€€€€
У
<Training/gradients/Training/logits_prediction/mul_grad/ShapeShapeTraining/logits/Reshape*
T0*
out_type0*
_output_shapes
:
У
>Training/gradients/Training/logits_prediction/mul_grad/Shape_1ShapeTraining/ExpandDims_1*
T0*
out_type0*
_output_shapes
:
†
LTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<Training/gradients/Training/logits_prediction/mul_grad/Shape>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ѕ
:Training/gradients/Training/logits_prediction/mul_grad/MulMul?Training/gradients/Training/logits_prediction/Mean_grad/truedivTraining/ExpandDims_1*
T0*+
_output_shapes
:
€€€€€€€€€
Л
:Training/gradients/Training/logits_prediction/mul_grad/SumSum:Training/gradients/Training/logits_prediction/mul_grad/MulLTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
З
>Training/gradients/Training/logits_prediction/mul_grad/ReshapeReshape:Training/gradients/Training/logits_prediction/mul_grad/Sum<Training/gradients/Training/logits_prediction/mul_grad/Shape*
T0*
Tshape0*+
_output_shapes
:
€€€€€€€€€
”
<Training/gradients/Training/logits_prediction/mul_grad/Mul_1MulTraining/logits/Reshape?Training/gradients/Training/logits_prediction/Mean_grad/truediv*
T0*+
_output_shapes
:
€€€€€€€€€
С
<Training/gradients/Training/logits_prediction/mul_grad/Sum_1Sum<Training/gradients/Training/logits_prediction/mul_grad/Mul_1NTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Н
@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1Reshape<Training/gradients/Training/logits_prediction/mul_grad/Sum_1>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*
T0*
Tshape0*+
_output_shapes
:
€€€€€€€€€
”
GTraining/gradients/Training/logits_prediction/mul_grad/tuple/group_depsNoOp?^Training/gradients/Training/logits_prediction/mul_grad/ReshapeA^Training/gradients/Training/logits_prediction/mul_grad/Reshape_1
о
OTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/logits_prediction/mul_grad/ReshapeH^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape*+
_output_shapes
:
€€€€€€€€€
ф
QTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1H^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*+
_output_shapes
:
€€€€€€€€€*
T0*S
_classI
GEloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1
Т
5Training/gradients/Training/logits/Reshape_grad/ShapeShapeTraining/logits/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:
К
7Training/gradients/Training/logits/Reshape_grad/ReshapeReshapeOTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency5Training/gradients/Training/logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
≈
ATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradBiasAddGrad7Training/gradients/Training/logits/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
ћ
FTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_depsNoOp8^Training/gradients/Training/logits/Reshape_grad/ReshapeB^Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad
Џ
NTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencyIdentity7Training/gradients/Training/logits/Reshape_grad/ReshapeG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@Training/gradients/Training/logits/Reshape_grad/Reshape*'
_output_shapes
:€€€€€€€€€
г
PTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1IdentityATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
И
;Training/gradients/Training/logits/dense/MatMul_grad/MatMulMatMulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencylogits/dense/kernel/read*
transpose_b(*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
М
=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1MatMul#Training/logits/dropout/dropout/mulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	А*
transpose_a(*
transpose_b( 
Ћ
ETraining/gradients/Training/logits/dense/MatMul_grad/tuple/group_depsNoOp<^Training/gradients/Training/logits/dense/MatMul_grad/MatMul>^Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1
б
MTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependencyIdentity;Training/gradients/Training/logits/dense/MatMul_grad/MatMulF^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А
ё
OTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1Identity=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1F^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*
T0*P
_classF
DBloc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1*
_output_shapes
:	А
§
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeShape#Training/logits/dropout/dropout/div*
T0*
out_type0*
_output_shapes
:
®
CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1Shape%Training/logits/dropout/dropout/Floor*
_output_shapes
:*
T0*
out_type0
ѓ
QTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
п
?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulMulMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency%Training/logits/dropout/dropout/Floor*
T0*(
_output_shapes
:€€€€€€€€€А
Ъ
?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumSum?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulQTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
У
CTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
п
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1Mul#Training/logits/dropout/dropout/divMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
†
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1STraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Щ
ETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
в
LTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1
€
TTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
Е
VTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
Ы
ATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeShapeTraining/rnn_model/Reshape*
T0*
out_type0*
_output_shapes
:
Ж
CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ѓ
QTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
В
CTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivRealDivTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency)Training/logits/dropout/dropout/keep_prob*(
_output_shapes
:€€€€€€€€€А*
T0
Ю
?Training/gradients/Training/logits/dropout/dropout/div_grad/SumSumCTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivQTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
У
CTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/div_grad/SumATraining/gradients/Training/logits/dropout/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Х
?Training/gradients/Training/logits/dropout/dropout/div_grad/NegNegTraining/rnn_model/Reshape*
T0*(
_output_shapes
:€€€€€€€€€А
п
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1RealDiv?Training/gradients/Training/logits/dropout/dropout/div_grad/Neg)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А
х
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2RealDivETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А
Ц
?Training/gradients/Training/logits/dropout/dropout/div_grad/mulMulTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:€€€€€€€€€А
Ю
ATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1Sum?Training/gradients/Training/logits/dropout/dropout/div_grad/mulSTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
З
ETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
в
LTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/div_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1
€
TTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
у
VTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1*
_output_shapes
: 
§
8Training/gradients/Training/rnn_model/Reshape_grad/ShapeShape,Training/rnn_model/recurrent/rnn/transpose_1*
_output_shapes
:*
T0*
out_type0
Ъ
:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeReshapeTTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency8Training/gradients/Training/rnn_model/Reshape_grad/Shape*,
_output_shapes
:
€€€€€€€€€А*
T0*
Tshape0
ї
VTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutationInvertPermutation)Training/rnn_model/recurrent/rnn/concat_2*
T0*
_output_shapes
:
≥
NTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose	Transpose:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeVTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutation*
T0*,
_output_shapes
:€€€€€€€€€
А*
Tperm0
р
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
sourceTraining/gradients*
_output_shapes

:: 
Ы
{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity-Training/rnn_model/recurrent/rnn/while/Exit_2А^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
_output_shapes
: 
∆
ЕTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV37Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeNTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
y
(Training/gradients/zeros/shape_as_tensorConst*
valueB"
      *
dtype0*
_output_shapes
:
c
Training/gradients/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¶
Training/gradients/zerosFill(Training/gradients/zeros/shape_as_tensorTraining/gradients/zeros/Const*
T0*

index_type0*
_output_shapes
:	
А
{
*Training/gradients/zeros_1/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"
      
e
 Training/gradients/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ђ
Training/gradients/zeros_1Fill*Training/gradients/zeros_1/shape_as_tensor Training/gradients/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	
А
Е
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitEnterЕTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
†
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitEnterTraining/gradients/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	
А*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ґ
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitEnterTraining/gradients/zeros_1*
parallel_iterations *
_output_shapes
:	
А*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
ђ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIteration*
N*
_output_shapes
: : *
T0
µ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	
А: 
µ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	
А: 
ѕ
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: : 
ѓ
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch
Ъ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
_output_shapes
: *
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch
Ю
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
_output_shapes
: *
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch
б
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchTraining/gradients/b_count_2**
_output_shapes
:	
А:	
А*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch
ѓ
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch
£
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch*
_output_shapes
:	
А
І
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch*
_output_shapes
:	
А
б
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch**
_output_shapes
:	
А:	
А
ѓ
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch
£
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	
А
І
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	
А
’
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_2_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency*
_output_shapes
: *
T0
ё
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_3_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency*
T0*
_output_shapes
:	
А
ё
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_4_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency*
T0*
_output_shapes
:	
А
У
ДTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3КTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnteraTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
sourceTraining/gradients*
_output_shapes

:: 
є
КTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
д
АTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1Е^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
¬
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3ДTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2АTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:	
А
Л
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ж
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1*

stack_name *
_output_shapes
:*
	elem_type0
Ш
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
М
АTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1^Training/gradients/Add*
_output_shapes
: *
swap_memory(*
T0
„
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2ЕTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
: *
	elem_type0
Ј
ЕTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ф
{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerZ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2А^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2d^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2\^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
÷
sTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpb^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1u^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
І
{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentitytTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*З
_class}
{yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
_output_shapes
:	
А
и
}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
ћ
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"
      *
dtype0*
_output_shapes
:
ґ
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
‘
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/Const*
_output_shapes
:	
А*
T0*

index_type0
Ф
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like*
_output_shapes
:	
А*
T0
з
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/ConstConst*
dtype0*
_output_shapes
: *F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*
valueB :
€€€€€€€€€
Љ
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_accStackV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Const*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*

stack_name *
_output_shapes
:*
	elem_type0

ћ
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
≈
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2StackPushV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Enter3Training/rnn_model/recurrent/rnn/while/GreaterEqual^Training/gradients/Add*
_output_shapes
:
*
swap_memory(*
T0

О
YTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2
StackPopV2_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:
*
	elem_type0

к
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ц
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1*
_output_shapes
:	
А*
T0
Д
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
§
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
_output_shapes
:	
А
™
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	
А
ћ
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"
      *
dtype0*
_output_shapes
:
ґ
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
‘
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	
А
Ф
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like*
T0*
_output_shapes
:	
А
Ц
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1*
_output_shapes
:	
А*
T0
Д
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1
§
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
_output_shapes
:	
А
™
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
_output_shapes
:	
А
 
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"
      *
dtype0*
_output_shapes
:
і
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/ConstConst^Training/gradients/Sub*
dtype0*
_output_shapes
: *
valueB
 *    
ќ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_likeFill`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorVTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/Const*
_output_shapes
:	
А*
T0*

index_type0
™
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like*
T0*
_output_shapes
:	
А
ђ
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*
_output_shapes
:	
А
ю
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_depsNoOpM^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1
Ь
^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependencyIdentityLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectW^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
_output_shapes
:	
А*
T0*_
_classU
SQloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select
Ґ
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1IdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1W^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1*
_output_shapes
:	
А
э
Training/gradients/AddNAddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
N*
_output_shapes
:	
А
ы
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulMulTraining/gradients/AddN]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*
_output_shapes
:	
А
п
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
»
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1
‘
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
÷
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Ы
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
т
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
€
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1MulTraining/gradients/AddN_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	
А
ф
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/ConstConst*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ѕ
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Const*
	elem_type0*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*

stack_name *
_output_shapes
:
Ў
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Ё
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Я
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
ц
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
У
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1
Ї
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul*
_output_shapes
:	
А
ј
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1*
_output_shapes
:	
А
И
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIterationNextIteration}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
_output_shapes
: *
T0
б
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes
:	
А
Ў
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
А
ч
Training/gradients/AddN_1AddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGrad*
N*
_output_shapes
:	
А*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
Г
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_depsNoOp^Training/gradients/AddN_1
€
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependencyIdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	
А
Б
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1IdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	
А
«
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulMulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2*
_output_shapes
:	
А*
T0
з
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/ConstConst*
dtype0*
_output_shapes
: *D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*
valueB :
€€€€€€€€€
Њ
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_accStackV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Const*
	elem_type0*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*

stack_name *
_output_shapes
:
–
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ћ
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2StackPushV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Enter1Training/rnn_model/recurrent/rnn/while/Identity_3^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Ч
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2
StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
:	
А
о
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Ћ
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1MulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	
А
р
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/ConstConst*K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
…
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Const*
	elem_type0*K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*

stack_name *
_output_shapes
:
‘
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
„
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Enter8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid^Training/gradients/Add*
_output_shapes
:	
А*
swap_memory(*
T0
Ы
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
:	
А
т
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Н
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_depsNoOpQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1
≤
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependencyIdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
_output_shapes
:	
А*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul
Є
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1IdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1*
_output_shapes
:	
А
Ќ
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2*
T0*
_output_shapes
:	
А
н
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/ConstConst*H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
∆
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Const*
	elem_type0*H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*

stack_name *
_output_shapes
:
‘
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
‘
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Enter5Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Ы
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
т
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
—
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1MuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	
А
ф
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*
valueB :
€€€€€€€€€
ѕ
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Const*
	elem_type0*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:
Ў
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ё
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Я
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
ц
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
У
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1
Ї
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
_output_shapes
:	
А*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul
ј
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1*
_output_shapes
:	
А
џ
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency*
_output_shapes
:	
А*
T0
В
Training/gradients/AddN_2AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencygTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
N*
_output_shapes
:	
А
б
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes
:	
А
÷
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
А
Љ
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeConst^Training/gradients/Sub*
valueB"
      *
dtype0*
_output_shapes
:
∞
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1Const^Training/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
в
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
ў
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumSum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradbTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
љ
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeReshapePTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape*
_output_shapes
:	
А*
T0*
Tshape0
Ё
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1Sum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGraddTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ї
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1ReshapeRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
Х
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_depsNoOpU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1
Ї
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependencyIdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape*
_output_shapes
:	
А
Ј
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency_1IdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1*
_output_shapes
: 
≠
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIterationNextIterationTraining/gradients/AddN_2*
T0*
_output_shapes
:	
А
ь
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatConcatV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradeTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGrad[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/Const*

Tidx0*
T0*
N*
_output_shapes
:	
А
ґ
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
€
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
data_formatNHWC*
_output_shapes	
:А*
T0
†
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_depsNoOp]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat
ƒ
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
_output_shapes
:	
А
–
kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identity\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*o
_classe
caloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
щ
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulMatMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/Enter*
T0*
_output_shapes
:	
А*
transpose_a( *
transpose_b(
∆
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Г
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1MatMulcTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( *
T0
х
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
‘
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat
а
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
в
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat^Training/gradients/Add*
_output_shapes
:	
А*
swap_memory(*
T0
І
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
ю
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ь
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_depsNoOpW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulY^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1
ƒ
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependencyIdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMula^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul*
_output_shapes
:	
А
Ћ
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
Ђ
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
т
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1Enter\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc*
parallel_iterations *
_output_shapes	
:А*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
ё
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Merge^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
Т
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/SwitchSwitch^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Training/gradients/b_count_2*
T0*"
_output_shapes
:А:А
’
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/AddAdd_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch:1kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
ч
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes	
:А
л
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3Exit]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:А
∞
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
ѓ
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/RankConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
≠
STraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modFloorModUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeConst^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"
      
Ѕ
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1Const^Training/gradients/Sub*
valueB"
      *
dtype0*
_output_shapes
:
Ь
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetConcatOffsetSTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
і
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceSlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes
:	
А
Ї
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1SlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffset:1WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes
:	
А
Ъ
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_depsNoOpV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceX^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1
¬
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slicea^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice*
_output_shapes
:	
А
»
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1IdentityWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
_output_shapes
:	
А*
T0*j
_class`
^\loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1
і
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
х
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1Enter[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
а
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Merge]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
Ъ
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/SwitchSwitch]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Training/gradients/b_count_2*
T0*,
_output_shapes
:
АА:
АА
„
YTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/AddAdd^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch:1jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
АА*
T0
ъ
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationYTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
АА
о
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3Exit\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch* 
_output_shapes
:
АА*
T0
І
rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^Training/gradients/Sub*
_output_shapes

:: *Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
sourceTraining/gradients
∞
xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
џ
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
я
nTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1s^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
ъ
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencynTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
Е
Training/gradients/AddN_3AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyjTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
N*
_output_shapes
:	
А
£
^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
с
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
я
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
М
_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Training/gradients/b_count_2*
T0*
_output_shapes
: : 
Ё
\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddaTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ц
fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
к
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
≠
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIterationNextIterationTraining/gradients/AddN_3*
_output_shapes
:	
А*
T0
Њ
ХTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3.Training/rnn_model/recurrent/rnn/TensorArray_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
sourceTraining/gradients*
_output_shapes

:: 
э
СTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Ц^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
_output_shapes
: 
Ў
ЗTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3ХTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV39Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeСTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*,
_output_shapes
:€€€€€€€€€
А*
element_shape:
ы
ДTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpИ^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3a^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
В
МTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityЗTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3Е^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*Э
_classТ
ПМloc:@Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*,
_output_shapes
:€€€€€€€€€
А
Ы
ОTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Е^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*s
_classi
geloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
Ј
TTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutationInvertPermutation'Training/rnn_model/recurrent/rnn/concat*
_output_shapes
:*
T0
В
LTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose	TransposeМTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyTTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutation*
T0*,
_output_shapes
:
€€€€€€€€€А*
Tperm0
Ч
:Training/gradients/Training/cnn_model/Reshape_2_grad/ShapeShapeTraining/cnn_model/dense/Relu*
T0*
out_type0*
_output_shapes
:
Т
<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeReshapeLTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose:Training/gradients/Training/cnn_model/Reshape_2_grad/Shape*(
_output_shapes
:€€€€€€€€€А*
T0*
Tshape0
Џ
>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradReluGrad<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeTraining/cnn_model/dense/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
–
DTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradBiasAddGrad>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
ў
ITraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_depsNoOpE^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad?^Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad
п
QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*(
_output_shapes
:€€€€€€€€€А
р
STraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1IdentityDTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
T0*W
_classM
KIloc:@Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
С
>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulMatMulQTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencycnn_model/dense/kernel/read*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b(
М
@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1MatMulTraining/cnn_model/Reshape_1QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( 
‘
HTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_depsNoOp?^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulA^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1
н
PTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulI^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul
л
RTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1I^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
∞
:Training/gradients/Training/cnn_model/Reshape_1_grad/ShapeShape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool*
T0*
out_type0*
_output_shapes
:
Ю
<Training/gradients/Training/cnn_model/Reshape_1_grad/ReshapeReshapePTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency:Training/gradients/Training/cnn_model/Reshape_1_grad/Shape*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€А
Ъ
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu6Training/cnn_model/convolution/max_pooling2d_4/MaxPool<Training/gradients/Training/cnn_model/Reshape_1_grad/Reshape*
ksize
*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC*
strides

Ю
MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu*
T0*0
_output_shapes
:€€€€€€€€€А
о
STraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
Ж
XTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad
≥
`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*0
_output_shapes
:€€€€€€€€€А
ђ
bTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGrad
€
MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
•
LTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ConstConst*%
valueB"      А      *
dtype0*
_output_shapes
:
С
ZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_4/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations

ь
[Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_3/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency*(
_output_shapes
:АА*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ъ
WTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput
Ћ
_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*0
_output_shapes
:€€€€€€€€€А*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput
«
aTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*(
_output_shapes
:АА*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter
љ
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu6Training/cnn_model/convolution/max_pooling2d_3/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency*0
_output_shapes
:€€€€€€€€€

А*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
Ю
MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu*
T0*0
_output_shapes
:€€€€€€€€€

А
о
STraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:А*
T0
Ж
XTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad
≥
`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*0
_output_shapes
:€€€€€€€€€

А
ђ
bTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGrad
€
MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
•
LTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ConstConst*
dtype0*
_output_shapes
:*%
valueB"      @   А   
С
ZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_3/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency*
paddingSAME*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ы
[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:@А
Ъ
WTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput
 
_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:€€€€€€€€€

@
∆
aTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@А
Љ
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu6Training/cnn_model/convolution/max_pooling2d_2/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€@*
T0
Э
MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu*/
_output_shapes
:€€€€€€€€€@*
T0
н
STraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
Ж
XTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad
≤
`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€@
Ђ
bTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
€
MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
•
LTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ConstConst*%
valueB"          @   *
dtype0*
_output_shapes
:
С
ZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_2/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations

ъ
[Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_1/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: @
Ъ
WTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput
 
_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€ *
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput
≈
aTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
Љ
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu6Training/cnn_model/convolution/max_pooling2d_1/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€(( 
Э
MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu*
T0*/
_output_shapes
:€€€€€€€€€(( 
н
STraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
Ж
XTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad
≤
`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€(( 
Ђ
bTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
э
MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeNShapeN4Training/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
•
LTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
С
ZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_1/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
ш
[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter4Training/cnn_model/convolution/max_pooling2d/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ъ
WTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput
 
_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:€€€€€€€€€((
≈
aTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter
ґ
XTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu4Training/cnn_model/convolution/max_pooling2d/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€PP*
T0*
data_formatNHWC*
strides

Ч
KTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradReluGradXTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu*
T0*/
_output_shapes
:€€€€€€€€€PP
й
QTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradBiasAddGradKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
А
VTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_depsNoOpR^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradL^Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad
™
^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependencyIdentityKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
T0*^
_classT
RPloc:@Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€PP
£
`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1IdentityQTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
я
KTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeNShapeNTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
£
JTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:
Й
XTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputKTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeN(cnn_model/convolution/conv2d/kernel/read^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ў
YTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTraining/cnn_model/ReshapeJTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Const^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
Ф
UTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_depsNoOpZ^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterY^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput
¬
]Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependencyIdentityXTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:€€€€€€€€€PP
љ
_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1IdentityYTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*
T0*l
_classb
`^loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Э
"Training/beta1_power/initial_valueConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ѓ
Training/beta1_power
VariableV2*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
я
Training/beta1_power/AssignAssignTraining/beta1_power"Training/beta1_power/initial_value*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Т
Training/beta1_power/readIdentityTraining/beta1_power*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
Э
"Training/beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *wЊ?
Ѓ
Training/beta2_power
VariableV2*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
я
Training/beta2_power/AssignAssignTraining/beta2_power"Training/beta2_power/initial_value*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 
Т
Training/beta2_power/readIdentityTraining/beta2_power*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
„
:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zerosConst*
dtype0*&
_output_shapes
:*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    
д
(cnn_model/convolution/conv2d/kernel/Adam
VariableV2*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
±
/cnn_model/convolution/conv2d/kernel/Adam/AssignAssign(cnn_model/convolution/conv2d/kernel/Adam:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:
ћ
-cnn_model/convolution/conv2d/kernel/Adam/readIdentity(cnn_model/convolution/conv2d/kernel/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
ў
<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
ж
*cnn_model/convolution/conv2d/kernel/Adam_1
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
Ј
1cnn_model/convolution/conv2d/kernel/Adam_1/AssignAssign*cnn_model/convolution/conv2d/kernel/Adam_1<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
–
/cnn_model/convolution/conv2d/kernel/Adam_1/readIdentity*cnn_model/convolution/conv2d/kernel/Adam_1*&
_output_shapes
:*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
ї
8cnn_model/convolution/conv2d/bias/Adam/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
»
&cnn_model/convolution/conv2d/bias/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Э
-cnn_model/convolution/conv2d/bias/Adam/AssignAssign&cnn_model/convolution/conv2d/bias/Adam8cnn_model/convolution/conv2d/bias/Adam/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
:
Ї
+cnn_model/convolution/conv2d/bias/Adam/readIdentity&cnn_model/convolution/conv2d/bias/Adam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:
љ
:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
 
(cnn_model/convolution/conv2d/bias/Adam_1
VariableV2*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
:
£
/cnn_model/convolution/conv2d/bias/Adam_1/AssignAssign(cnn_model/convolution/conv2d/bias/Adam_1:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
:
Њ
-cnn_model/convolution/conv2d/bias/Adam_1/readIdentity(cnn_model/convolution/conv2d/bias/Adam_1*
_output_shapes
:*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
я
Lcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             
Ѕ
Bcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    
”
<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0
и
*cnn_model/convolution/conv2d_1/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container *
shape: 
є
1cnn_model/convolution/conv2d_1/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_1/kernel/Adam<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
“
/cnn_model/convolution/conv2d_1/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_1/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
б
Ncnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             
√
Dcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ў
>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0*&
_output_shapes
: 
к
,cnn_model/convolution/conv2d_1/kernel/Adam_1
VariableV2*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
њ
3cnn_model/convolution/conv2d_1/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_1/kernel/Adam_1>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
÷
1cnn_model/convolution/conv2d_1/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_1/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
њ
:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
ћ
(cnn_model/convolution/conv2d_1/bias/Adam
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
	container 
•
/cnn_model/convolution/conv2d_1/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_1/bias/Adam:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: 
ј
-cnn_model/convolution/conv2d_1/bias/Adam/readIdentity(cnn_model/convolution/conv2d_1/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
Ѕ
<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    
ќ
*cnn_model/convolution/conv2d_1/bias/Adam_1
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
	container 
Ђ
1cnn_model/convolution/conv2d_1/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_1/bias/Adam_1<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
ƒ
/cnn_model/convolution/conv2d_1/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_1/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
я
Lcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
Ѕ
Bcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    
”
<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
: @*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0
и
*cnn_model/convolution/conv2d_2/kernel/Adam
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @
є
1cnn_model/convolution/conv2d_2/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_2/kernel/Adam<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
“
/cnn_model/convolution/conv2d_2/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_2/kernel/Adam*&
_output_shapes
: @*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
б
Ncnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   
√
Dcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ў
>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0*&
_output_shapes
: @
к
,cnn_model/convolution/conv2d_2/kernel/Adam_1
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @
њ
3cnn_model/convolution/conv2d_2/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_2/kernel/Adam_1>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
÷
1cnn_model/convolution/conv2d_2/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_2/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
њ
:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
ћ
(cnn_model/convolution/conv2d_2/bias/Adam
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias
•
/cnn_model/convolution/conv2d_2/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_2/bias/Adam:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
ј
-cnn_model/convolution/conv2d_2/bias/Adam/readIdentity(cnn_model/convolution/conv2d_2/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
Ѕ
<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:@*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    
ќ
*cnn_model/convolution/conv2d_2/bias/Adam_1
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container 
Ђ
1cnn_model/convolution/conv2d_2/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_2/bias/Adam_1<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
ƒ
/cnn_model/convolution/conv2d_2/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_2/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
я
Lcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   А   *
dtype0*
_output_shapes
:
Ѕ
Bcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    
‘
<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/Const*'
_output_shapes
:@А*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0
к
*cnn_model/convolution/conv2d_3/kernel/Adam
VariableV2*
dtype0*'
_output_shapes
:@А*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@А
Ї
1cnn_model/convolution/conv2d_3/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_3/kernel/Adam<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@А
”
/cnn_model/convolution/conv2d_3/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_3/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@А
б
Ncnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   А   *
dtype0*
_output_shapes
:
√
Dcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    
Џ
>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/Const*'
_output_shapes
:@А*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0
м
,cnn_model/convolution/conv2d_3/kernel/Adam_1
VariableV2*
shape:@А*
dtype0*'
_output_shapes
:@А*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container 
ј
3cnn_model/convolution/conv2d_3/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_3/kernel/Adam_1>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@А
„
1cnn_model/convolution/conv2d_3/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_3/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@А
Ѕ
:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBА*    
ќ
(cnn_model/convolution/conv2d_3/bias/Adam
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias
¶
/cnn_model/convolution/conv2d_3/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_3/bias/Adam:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:А
Ѕ
-cnn_model/convolution/conv2d_3/bias/Adam/readIdentity(cnn_model/convolution/conv2d_3/bias/Adam*
_output_shapes	
:А*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias
√
<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
–
*cnn_model/convolution/conv2d_3/bias/Adam_1
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container 
ђ
1cnn_model/convolution/conv2d_3/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_3/bias/Adam_1<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:А
≈
/cnn_model/convolution/conv2d_3/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_3/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:А
я
Lcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      А      *
dtype0*
_output_shapes
:
Ѕ
Bcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
’
<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0*(
_output_shapes
:АА
м
*cnn_model/convolution/conv2d_4/kernel/Adam
VariableV2*
dtype0*(
_output_shapes
:АА*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:АА
ї
1cnn_model/convolution/conv2d_4/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_4/kernel/Adam<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:АА
‘
/cnn_model/convolution/conv2d_4/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_4/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:АА
б
Ncnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      А      *
dtype0*
_output_shapes
:
√
Dcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0*(
_output_shapes
:АА
о
,cnn_model/convolution/conv2d_4/kernel/Adam_1
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:АА*
dtype0*(
_output_shapes
:АА
Ѕ
3cnn_model/convolution/conv2d_4/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_4/kernel/Adam_1>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:АА
Ў
1cnn_model/convolution/conv2d_4/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_4/kernel/Adam_1*(
_output_shapes
:АА*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
Ѕ
:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
ќ
(cnn_model/convolution/conv2d_4/bias/Adam
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container 
¶
/cnn_model/convolution/conv2d_4/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_4/bias/Adam:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
Ѕ
-cnn_model/convolution/conv2d_4/bias/Adam/readIdentity(cnn_model/convolution/conv2d_4/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:А
√
<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
–
*cnn_model/convolution/conv2d_4/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:А
ђ
1cnn_model/convolution/conv2d_4/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_4/bias/Adam_1<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
≈
/cnn_model/convolution/conv2d_4/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_4/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:А
є
=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
£
3cnn_model/dense/kernel/Adam/Initializer/zeros/ConstConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
С
-cnn_model/dense/kernel/Adam/Initializer/zerosFill=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensor3cnn_model/dense/kernel/Adam/Initializer/zeros/Const*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0* 
_output_shapes
:
АА
Њ
cnn_model/dense/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:
АА
ч
"cnn_model/dense/kernel/Adam/AssignAssigncnn_model/dense/kernel/Adam-cnn_model/dense/kernel/Adam/Initializer/zeros*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
Я
 cnn_model/dense/kernel/Adam/readIdentitycnn_model/dense/kernel/Adam*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
АА
ї
?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
•
5cnn_model/dense/kernel/Adam_1/Initializer/zeros/ConstConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
/cnn_model/dense/kernel/Adam_1/Initializer/zerosFill?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor5cnn_model/dense/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
АА*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0
ј
cnn_model/dense/kernel/Adam_1
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *)
_class
loc:@cnn_model/dense/kernel
э
$cnn_model/dense/kernel/Adam_1/AssignAssigncnn_model/dense/kernel/Adam_1/cnn_model/dense/kernel/Adam_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel
£
"cnn_model/dense/kernel/Adam_1/readIdentitycnn_model/dense/kernel/Adam_1*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
АА
£
+cnn_model/dense/bias/Adam/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
∞
cnn_model/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:А
к
 cnn_model/dense/bias/Adam/AssignAssigncnn_model/dense/bias/Adam+cnn_model/dense/bias/Adam/Initializer/zeros*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ф
cnn_model/dense/bias/Adam/readIdentitycnn_model/dense/bias/Adam*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:А
•
-cnn_model/dense/bias/Adam_1/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
≤
cnn_model/dense/bias/Adam_1
VariableV2*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
р
"cnn_model/dense/bias/Adam_1/AssignAssigncnn_model/dense/bias/Adam_1-cnn_model/dense/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias
Ш
 cnn_model/dense/bias/Adam_1/readIdentitycnn_model/dense/bias/Adam_1*
_output_shapes	
:А*
T0*'
_class
loc:@cnn_model/dense/bias
Ё
Ornn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      
«
Ernn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ў
?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:
АА
в
-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
њ
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
’
2rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/readIdentity-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
АА
я
Qrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
…
Grnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
я
Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zerosFillQrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorGrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:
АА
д
/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
≈
6rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/AssignAssign/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
ў
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/readIdentity/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
АА
”
Mrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:А*
dtype0*
_output_shapes
:
√
Crnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    
ћ
=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zerosFillMrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorCrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:А
‘
+rnn_model/recurrent/rnn/lstm_cell/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:А
≤
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam/AssignAssign+rnn_model/recurrent/rnn/lstm_cell/bias/Adam=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias
 
0rnn_model/recurrent/rnn/lstm_cell/bias/Adam/readIdentity+rnn_model/recurrent/rnn/lstm_cell/bias/Adam*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:А
’
Ornn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:А
≈
Ernn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
“
?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:А
÷
-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:А
Є
4rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
ќ
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/readIdentity-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:А
≥
:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*&
_class
loc:@logits/dense/kernel*
valueB"      
Э
0logits/dense/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *&
_class
loc:@logits/dense/kernel*
valueB
 *    
Д
*logits/dense/kernel/Adam/Initializer/zerosFill:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensor0logits/dense/kernel/Adam/Initializer/zeros/Const*
T0*&
_class
loc:@logits/dense/kernel*

index_type0*
_output_shapes
:	А
ґ
logits/dense/kernel/Adam
VariableV2*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	А*
dtype0*
_output_shapes
:	А
к
logits/dense/kernel/Adam/AssignAssignlogits/dense/kernel/Adam*logits/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel*
validate_shape(*
_output_shapes
:	А
Х
logits/dense/kernel/Adam/readIdentitylogits/dense/kernel/Adam*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	А
µ
<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
Я
2logits/dense/kernel/Adam_1/Initializer/zeros/ConstConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
К
,logits/dense/kernel/Adam_1/Initializer/zerosFill<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor2logits/dense/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes
:	А*
T0*&
_class
loc:@logits/dense/kernel*

index_type0
Є
logits/dense/kernel/Adam_1
VariableV2*
shape:	А*
dtype0*
_output_shapes
:	А*
shared_name *&
_class
loc:@logits/dense/kernel*
	container 
р
!logits/dense/kernel/Adam_1/AssignAssignlogits/dense/kernel/Adam_1,logits/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel*
validate_shape(*
_output_shapes
:	А
Щ
logits/dense/kernel/Adam_1/readIdentitylogits/dense/kernel/Adam_1*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	А
Ы
(logits/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*$
_class
loc:@logits/dense/bias*
valueB*    
®
logits/dense/bias/Adam
VariableV2*
shared_name *$
_class
loc:@logits/dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ё
logits/dense/bias/Adam/AssignAssignlogits/dense/bias/Adam(logits/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:
К
logits/dense/bias/Adam/readIdentitylogits/dense/bias/Adam*
_output_shapes
:*
T0*$
_class
loc:@logits/dense/bias
Э
*logits/dense/bias/Adam_1/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
™
logits/dense/bias/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@logits/dense/bias*
	container 
г
logits/dense/bias/Adam_1/AssignAssignlogits/dense/bias/Adam_1*logits/dense/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*$
_class
loc:@logits/dense/bias
О
logits/dense/bias/Adam_1/readIdentitylogits/dense/bias/Adam_1*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:
X
Training/Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
X
Training/Adam/beta2Const*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
Z
Training/Adam/epsilonConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
Ќ
BTraining/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d/kernel(cnn_model/convolution/conv2d/kernel/Adam*cnn_model/convolution/conv2d/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
use_nesterov( *&
_output_shapes
:
Є
@Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdam	ApplyAdam!cnn_model/convolution/conv2d/bias&cnn_model/convolution/conv2d/bias/Adam(cnn_model/convolution/conv2d/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
ў
DTraining/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_1/kernel*cnn_model/convolution/conv2d_1/kernel/Adam,cnn_model/convolution/conv2d_1/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
use_nesterov( *&
_output_shapes
: *
use_locking( 
ƒ
BTraining/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_1/bias(cnn_model/convolution/conv2d_1/bias/Adam*cnn_model/convolution/conv2d_1/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
use_nesterov( *
_output_shapes
: 
ў
DTraining/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_2/kernel*cnn_model/convolution/conv2d_2/kernel/Adam,cnn_model/convolution/conv2d_2/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *&
_output_shapes
: @*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
ƒ
BTraining/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_2/bias(cnn_model/convolution/conv2d_2/bias/Adam*cnn_model/convolution/conv2d_2/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( 
Џ
DTraining/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_3/kernel*cnn_model/convolution/conv2d_3/kernel/Adam,cnn_model/convolution/conv2d_3/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
use_nesterov( *'
_output_shapes
:@А*
use_locking( 
≈
BTraining/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_3/bias(cnn_model/convolution/conv2d_3/bias/Adam*cnn_model/convolution/conv2d_3/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
use_nesterov( *
_output_shapes	
:А
џ
DTraining/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_4/kernel*cnn_model/convolution/conv2d_4/kernel/Adam,cnn_model/convolution/conv2d_4/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *(
_output_shapes
:АА*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
≈
BTraining/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_4/bias(cnn_model/convolution/conv2d_4/bias/Adam*cnn_model/convolution/conv2d_4/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
use_nesterov( *
_output_shapes	
:А
щ
5Training/Adam/update_cnn_model/dense/kernel/ApplyAdam	ApplyAdamcnn_model/dense/kernelcnn_model/dense/kernel/Adamcnn_model/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonRTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1*
use_nesterov( * 
_output_shapes
:
АА*
use_locking( *
T0*)
_class
loc:@cnn_model/dense/kernel
л
3Training/Adam/update_cnn_model/dense/bias/ApplyAdam	ApplyAdamcnn_model/dense/biascnn_model/dense/bias/Adamcnn_model/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonSTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:А*
use_locking( *
T0*'
_class
loc:@cnn_model/dense/bias
ё
GTraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam	ApplyAdam(rnn_model/recurrent/rnn/lstm_cell/kernel-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3*
use_locking( *
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
АА
–
ETraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdam	ApplyAdam&rnn_model/recurrent/rnn/lstm_cell/bias+rnn_model/recurrent/rnn/lstm_cell/bias/Adam-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
use_locking( *
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
use_nesterov( *
_output_shapes	
:А
ж
2Training/Adam/update_logits/dense/kernel/ApplyAdam	ApplyAdamlogits/dense/kernellogits/dense/kernel/Adamlogits/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonOTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1*
T0*&
_class
loc:@logits/dense/kernel*
use_nesterov( *
_output_shapes
:	А*
use_locking( 
Ў
0Training/Adam/update_logits/dense/bias/ApplyAdam	ApplyAdamlogits/dense/biaslogits/dense/bias/Adamlogits/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonPTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@logits/dense/bias*
use_nesterov( *
_output_shapes
:
њ	
Training/Adam/mulMulTraining/beta1_power/readTraining/Adam/beta1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
_output_shapes
: *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
«
Training/Adam/AssignAssignTraining/beta1_powerTraining/Adam/mul*
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 
Ѕ	
Training/Adam/mul_1MulTraining/beta2_power/readTraining/Adam/beta2A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
Ћ
Training/Adam/Assign_1AssignTraining/beta2_powerTraining/Adam/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
м
Training/Adam/updateNoOp^Training/Adam/Assign^Training/Adam/Assign_1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam
Х
Training/Adam/valueConst^Training/Adam/update*'
_class
loc:@Training/global_step*
value	B :*
dtype0*
_output_shapes
: 
Ґ
Training/Adam	AssignAddTraining/global_stepTraining/Adam/value*
T0*'
_class
loc:@Training/global_step*
_output_shapes
: *
use_locking( 
g
Validation/SequenceMask/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ѓ
Validation/SequenceMask/MaxMax.validation_input_pipeline/batch_join_and_pad:4Validation/SequenceMask/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
a
Validation/SequenceMask/Const_1Const*
value	B : *
dtype0*
_output_shapes
: 
a
Validation/SequenceMask/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
ґ
Validation/SequenceMask/RangeRangeValidation/SequenceMask/Const_1Validation/SequenceMask/MaxValidation/SequenceMask/Const_2*#
_output_shapes
:€€€€€€€€€*

Tidx0
q
&Validation/SequenceMask/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
љ
"Validation/SequenceMask/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4&Validation/SequenceMask/ExpandDims/dim*
_output_shapes

:
*

Tdim0*
T0
А
Validation/SequenceMask/CastCast"Validation/SequenceMask/ExpandDims*

SrcT0*
_output_shapes

:
*

DstT0
У
Validation/SequenceMask/LessLessValidation/SequenceMask/RangeValidation/SequenceMask/Cast*
T0*'
_output_shapes
:
€€€€€€€€€
Е
Validation/SequenceMask/Cast_1CastValidation/SequenceMask/Less*

SrcT0
*'
_output_shapes
:
€€€€€€€€€*

DstT0
d
Validation/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
†
Validation/ExpandDims
ExpandDimsValidation/SequenceMask/Cast_1Validation/ExpandDims/dim*

Tdim0*
T0*+
_output_shapes
:
€€€€€€€€€
{
"Validation/cnn_model/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
√
Validation/cnn_model/ReshapeReshape.validation_input_pipeline/batch_join_and_pad:2"Validation/cnn_model/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
Ж
5Validation/cnn_model/convolution/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
®
.Validation/cnn_model/convolution/conv2d/Conv2DConv2DValidation/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*/
_output_shapes
:€€€€€€€€€PP*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
г
/Validation/cnn_model/convolution/conv2d/BiasAddBiasAdd.Validation/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€PP
Я
,Validation/cnn_model/convolution/conv2d/ReluRelu/Validation/cnn_model/convolution/conv2d/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€PP
ы
6Validation/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool,Validation/cnn_model/convolution/conv2d/Relu*/
_output_shapes
:€€€€€€€€€((*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
И
7Validation/cnn_model/convolution/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
∆
0Validation/cnn_model/convolution/conv2d_1/Conv2DConv2D6Validation/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*/
_output_shapes
:€€€€€€€€€(( *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
й
1Validation/cnn_model/convolution/conv2d_1/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€(( 
£
.Validation/cnn_model/convolution/conv2d_1/ReluRelu1Validation/cnn_model/convolution/conv2d_1/BiasAdd*/
_output_shapes
:€€€€€€€€€(( *
T0
€
8Validation/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_1/Relu*/
_output_shapes
:€€€€€€€€€ *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
И
7Validation/cnn_model/convolution/conv2d_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
»
0Validation/cnn_model/convolution/conv2d_2/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
paddingSAME*/
_output_shapes
:€€€€€€€€€@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
й
1Validation/cnn_model/convolution/conv2d_2/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€@
£
.Validation/cnn_model/convolution/conv2d_2/ReluRelu1Validation/cnn_model/convolution/conv2d_2/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€@
€
8Validation/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_2/Relu*/
_output_shapes
:€€€€€€€€€

@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
И
7Validation/cnn_model/convolution/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
…
0Validation/cnn_model/convolution/conv2d_3/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*0
_output_shapes
:€€€€€€€€€

А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
к
1Validation/cnn_model/convolution/conv2d_3/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€

А
§
.Validation/cnn_model/convolution/conv2d_3/ReluRelu1Validation/cnn_model/convolution/conv2d_3/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€

А
А
8Validation/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_3/Relu*0
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
И
7Validation/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
…
0Validation/cnn_model/convolution/conv2d_4/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
к
1Validation/cnn_model/convolution/conv2d_4/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
§
.Validation/cnn_model/convolution/conv2d_4/ReluRelu1Validation/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
А
8Validation/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_4/Relu*0
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
u
$Validation/cnn_model/Reshape_1/shapeConst*
valueB"€€€€ 	  *
dtype0*
_output_shapes
:
 
Validation/cnn_model/Reshape_1Reshape8Validation/cnn_model/convolution/max_pooling2d_4/MaxPool$Validation/cnn_model/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Ѕ
!Validation/cnn_model/dense/MatMulMatMulValidation/cnn_model/Reshape_1cnn_model/dense/kernel/read*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( *
T0
µ
"Validation/cnn_model/dense/BiasAddBiasAdd!Validation/cnn_model/dense/MatMulcnn_model/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
~
Validation/cnn_model/dense/ReluRelu"Validation/cnn_model/dense/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
y
$Validation/cnn_model/Reshape_2/shapeConst*!
valueB"
   €€€€   *
dtype0*
_output_shapes
:
µ
Validation/cnn_model/Reshape_2ReshapeValidation/cnn_model/dense/Relu$Validation/cnn_model/Reshape_2/shape*,
_output_shapes
:
€€€€€€€€€А*
T0*
Tshape0
i
Validation/SequenceMask_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
≥
Validation/SequenceMask_1/MaxMax.validation_input_pipeline/batch_join_and_pad:4Validation/SequenceMask_1/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
c
!Validation/SequenceMask_1/Const_1Const*
dtype0*
_output_shapes
: *
value	B : 
c
!Validation/SequenceMask_1/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
Њ
Validation/SequenceMask_1/RangeRange!Validation/SequenceMask_1/Const_1Validation/SequenceMask_1/Max!Validation/SequenceMask_1/Const_2*#
_output_shapes
:€€€€€€€€€*

Tidx0
s
(Validation/SequenceMask_1/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ѕ
$Validation/SequenceMask_1/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4(Validation/SequenceMask_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

Д
Validation/SequenceMask_1/CastCast$Validation/SequenceMask_1/ExpandDims*

SrcT0*
_output_shapes

:
*

DstT0
Щ
Validation/SequenceMask_1/LessLessValidation/SequenceMask_1/RangeValidation/SequenceMask_1/Cast*
T0*'
_output_shapes
:
€€€€€€€€€
Й
 Validation/SequenceMask_1/Cast_1CastValidation/SequenceMask_1/Less*

SrcT0
*'
_output_shapes
:
€€€€€€€€€*

DstT0
f
Validation/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
¶
Validation/ExpandDims_1
ExpandDims Validation/SequenceMask_1/Cast_1Validation/ExpandDims_1/dim*
T0*+
_output_shapes
:
€€€€€€€€€*

Tdim0
i
'Validation/rnn_model/recurrent/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
p
.Validation/rnn_model/recurrent/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
p
.Validation/rnn_model/recurrent/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
в
(Validation/rnn_model/recurrent/rnn/rangeRange.Validation/rnn_model/recurrent/rnn/range/start'Validation/rnn_model/recurrent/rnn/Rank.Validation/rnn_model/recurrent/rnn/range/delta*
_output_shapes
:*

Tidx0
Г
2Validation/rnn_model/recurrent/rnn/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB"       
p
.Validation/rnn_model/recurrent/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
э
)Validation/rnn_model/recurrent/rnn/concatConcatV22Validation/rnn_model/recurrent/rnn/concat/values_0(Validation/rnn_model/recurrent/rnn/range.Validation/rnn_model/recurrent/rnn/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
»
,Validation/rnn_model/recurrent/rnn/transpose	TransposeValidation/cnn_model/Reshape_2)Validation/rnn_model/recurrent/rnn/concat*
Tperm0*
T0*,
_output_shapes
:€€€€€€€€€
А
У
2Validation/rnn_model/recurrent/rnn/sequence_lengthIdentity.validation_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:

Д
:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
valueB:
*
dtype0*
_output_shapes
:
З
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
dtype0*
_output_shapes
:*
valueB:А
В
@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
љ
;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV2:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Е
@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
э
:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	
А
Ж
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
valueB:
*
dtype0*
_output_shapes
:
З
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
valueB:А*
dtype0*
_output_shapes
:
Ж
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
valueB:
*
dtype0*
_output_shapes
:
З
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:А*
dtype0*
_output_shapes
:
Д
BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
√
=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
З
BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Г
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
_output_shapes
:	
А*
T0*

index_type0
Ж
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
valueB:
*
dtype0*
_output_shapes
:
З
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
valueB:А*
dtype0*
_output_shapes
:
r
(Validation/rnn_model/recurrent/rnn/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
r
(Validation/rnn_model/recurrent/rnn/stackConst*
valueB:
*
dtype0*
_output_shapes
:
™
(Validation/rnn_model/recurrent/rnn/EqualEqual(Validation/rnn_model/recurrent/rnn/Shape(Validation/rnn_model/recurrent/rnn/stack*
T0*
_output_shapes
:
r
(Validation/rnn_model/recurrent/rnn/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ґ
&Validation/rnn_model/recurrent/rnn/AllAll(Validation/rnn_model/recurrent/rnn/Equal(Validation/rnn_model/recurrent/rnn/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
¬
/Validation/rnn_model/recurrent/rnn/Assert/ConstConst*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
В
1Validation/rnn_model/recurrent/rnn/Assert/Const_1Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
 
7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
И
7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
»
0Validation/rnn_model/recurrent/rnn/Assert/AssertAssert&Validation/rnn_model/recurrent/rnn/All7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0(Validation/rnn_model/recurrent/rnn/stack7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2(Validation/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
∆
.Validation/rnn_model/recurrent/rnn/CheckSeqLenIdentity2Validation/rnn_model/recurrent/rnn/sequence_length1^Validation/rnn_model/recurrent/rnn/Assert/Assert*
T0*
_output_shapes
:

Ц
*Validation/rnn_model/recurrent/rnn/Shape_1Shape,Validation/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
А
6Validation/rnn_model/recurrent/rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
В
8Validation/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
В
8Validation/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
™
0Validation/rnn_model/recurrent/rnn/strided_sliceStridedSlice*Validation/rnn_model/recurrent/rnn/Shape_16Validation/rnn_model/recurrent/rnn/strided_slice/stack8Validation/rnn_model/recurrent/rnn/strided_slice/stack_18Validation/rnn_model/recurrent/rnn/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
t
*Validation/rnn_model/recurrent/rnn/Const_1Const*
valueB:
*
dtype0*
_output_shapes
:
u
*Validation/rnn_model/recurrent/rnn/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
r
0Validation/rnn_model/recurrent/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ы
+Validation/rnn_model/recurrent/rnn/concat_1ConcatV2*Validation/rnn_model/recurrent/rnn/Const_1*Validation/rnn_model/recurrent/rnn/Const_20Validation/rnn_model/recurrent/rnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
s
.Validation/rnn_model/recurrent/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
…
(Validation/rnn_model/recurrent/rnn/zerosFill+Validation/rnn_model/recurrent/rnn/concat_1.Validation/rnn_model/recurrent/rnn/zeros/Const*
T0*

index_type0*
_output_shapes
:	
А
t
*Validation/rnn_model/recurrent/rnn/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
«
&Validation/rnn_model/recurrent/rnn/MinMin.Validation/rnn_model/recurrent/rnn/CheckSeqLen*Validation/rnn_model/recurrent/rnn/Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
t
*Validation/rnn_model/recurrent/rnn/Const_4Const*
valueB: *
dtype0*
_output_shapes
:
«
&Validation/rnn_model/recurrent/rnn/MaxMax.Validation/rnn_model/recurrent/rnn/CheckSeqLen*Validation/rnn_model/recurrent/rnn/Const_4*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
i
'Validation/rnn_model/recurrent/rnn/timeConst*
dtype0*
_output_shapes
: *
value	B : 
÷
.Validation/rnn_model/recurrent/rnn/TensorArrayTensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*
dtype0*
_output_shapes

:: *
element_shape:	
А*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*N
tensor_array_name97Validation/rnn_model/recurrent/rnn/dynamic_rnn/output_0
„
0Validation/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*M
tensor_array_name86Validation/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	
А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
І
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape,Validation/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
У
IValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Х
KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Х
KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
З
CValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeIValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackKValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Г
AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Г
AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
ј
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRangeAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startCValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
®
]Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV30Validation/rnn_model/recurrent/rnn/TensorArray_1;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/range,Validation/rnn_model/recurrent/rnn/transpose2Validation/rnn_model/recurrent/rnn/TensorArray_1:1*
T0*?
_class5
31loc:@Validation/rnn_model/recurrent/rnn/transpose*
_output_shapes
: 
n
,Validation/rnn_model/recurrent/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
ђ
*Validation/rnn_model/recurrent/rnn/MaximumMaximum,Validation/rnn_model/recurrent/rnn/Maximum/x&Validation/rnn_model/recurrent/rnn/Max*
T0*
_output_shapes
: 
і
*Validation/rnn_model/recurrent/rnn/MinimumMinimum0Validation/rnn_model/recurrent/rnn/strided_slice*Validation/rnn_model/recurrent/rnn/Maximum*
T0*
_output_shapes
: 
|
:Validation/rnn_model/recurrent/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
К
.Validation/rnn_model/recurrent/rnn/while/EnterEnter:Validation/rnn_model/recurrent/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
щ
0Validation/rnn_model/recurrent/rnn/while/Enter_1Enter'Validation/rnn_model/recurrent/rnn/time*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
В
0Validation/rnn_model/recurrent/rnn/while/Enter_2Enter0Validation/rnn_model/recurrent/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Х
0Validation/rnn_model/recurrent/rnn/while/Enter_3Enter:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	
А*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ч
0Validation/rnn_model/recurrent/rnn/while/Enter_4Enter<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	
А*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ћ
.Validation/rnn_model/recurrent/rnn/while/MergeMerge.Validation/rnn_model/recurrent/rnn/while/Enter6Validation/rnn_model/recurrent/rnn/while/NextIteration*
N*
_output_shapes
: : *
T0
—
0Validation/rnn_model/recurrent/rnn/while/Merge_1Merge0Validation/rnn_model/recurrent/rnn/while/Enter_18Validation/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
—
0Validation/rnn_model/recurrent/rnn/while/Merge_2Merge0Validation/rnn_model/recurrent/rnn/while/Enter_28Validation/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
Џ
0Validation/rnn_model/recurrent/rnn/while/Merge_3Merge0Validation/rnn_model/recurrent/rnn/while/Enter_38Validation/rnn_model/recurrent/rnn/while/NextIteration_3*
T0*
N*!
_output_shapes
:	
А: 
Џ
0Validation/rnn_model/recurrent/rnn/while/Merge_4Merge0Validation/rnn_model/recurrent/rnn/while/Enter_48Validation/rnn_model/recurrent/rnn/while/NextIteration_4*
T0*
N*!
_output_shapes
:	
А: 
ї
-Validation/rnn_model/recurrent/rnn/while/LessLess.Validation/rnn_model/recurrent/rnn/while/Merge3Validation/rnn_model/recurrent/rnn/while/Less/Enter*
T0*
_output_shapes
: 
Е
3Validation/rnn_model/recurrent/rnn/while/Less/EnterEnter0Validation/rnn_model/recurrent/rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ѕ
/Validation/rnn_model/recurrent/rnn/while/Less_1Less0Validation/rnn_model/recurrent/rnn/while/Merge_15Validation/rnn_model/recurrent/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
Б
5Validation/rnn_model/recurrent/rnn/while/Less_1/EnterEnter*Validation/rnn_model/recurrent/rnn/Minimum*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
є
3Validation/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd-Validation/rnn_model/recurrent/rnn/while/Less/Validation/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 
К
1Validation/rnn_model/recurrent/rnn/while/LoopCondLoopCond3Validation/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 
В
/Validation/rnn_model/recurrent/rnn/while/SwitchSwitch.Validation/rnn_model/recurrent/rnn/while/Merge1Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/while/Merge*
_output_shapes
: : 
И
1Validation/rnn_model/recurrent/rnn/while/Switch_1Switch0Validation/rnn_model/recurrent/rnn/while/Merge_11Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_1*
_output_shapes
: : 
И
1Validation/rnn_model/recurrent/rnn/while/Switch_2Switch0Validation/rnn_model/recurrent/rnn/while/Merge_21Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_2*
_output_shapes
: : 
Ъ
1Validation/rnn_model/recurrent/rnn/while/Switch_3Switch0Validation/rnn_model/recurrent/rnn/while/Merge_31Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_3**
_output_shapes
:	
А:	
А
Ъ
1Validation/rnn_model/recurrent/rnn/while/Switch_4Switch0Validation/rnn_model/recurrent/rnn/while/Merge_41Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_4**
_output_shapes
:	
А:	
А
С
1Validation/rnn_model/recurrent/rnn/while/IdentityIdentity1Validation/rnn_model/recurrent/rnn/while/Switch:1*
_output_shapes
: *
T0
Х
3Validation/rnn_model/recurrent/rnn/while/Identity_1Identity3Validation/rnn_model/recurrent/rnn/while/Switch_1:1*
_output_shapes
: *
T0
Х
3Validation/rnn_model/recurrent/rnn/while/Identity_2Identity3Validation/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
Ю
3Validation/rnn_model/recurrent/rnn/while/Identity_3Identity3Validation/rnn_model/recurrent/rnn/while/Switch_3:1*
T0*
_output_shapes
:	
А
Ю
3Validation/rnn_model/recurrent/rnn/while/Identity_4Identity3Validation/rnn_model/recurrent/rnn/while/Switch_4:1*
_output_shapes
:	
А*
T0
§
.Validation/rnn_model/recurrent/rnn/while/add/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ј
,Validation/rnn_model/recurrent/rnn/while/addAdd1Validation/rnn_model/recurrent/rnn/while/Identity.Validation/rnn_model/recurrent/rnn/while/add/y*
_output_shapes
: *
T0
Є
:Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3TensorArrayReadV3@Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter3Validation/rnn_model/recurrent/rnn/while/Identity_1BValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	
А
Ц
@Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/EnterEnter0Validation/rnn_model/recurrent/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ѕ
BValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1Enter]Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
№
5Validation/rnn_model/recurrent/rnn/while/GreaterEqualGreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_1;Validation/rnn_model/recurrent/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:

П
;Validation/rnn_model/recurrent/rnn/while/GreaterEqual/EnterEnter.Validation/rnn_model/recurrent/rnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:
*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
і
>Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat/axisConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
µ
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/concatConcatV2:Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV33Validation/rnn_model/recurrent/rnn/while/Identity_4>Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis*
N*
_output_shapes
:	
А*

Tidx0*
T0
П
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMulMatMul9Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat?Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter*
transpose_b( *
T0*
_output_shapes
:	
А*
transpose_a( 
Ш
?Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Г
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAddBiasAdd9Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul@Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter*
data_formatNHWC*
_output_shapes
:	
А*
T0
Т
@Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/EnterEnter+rnn_model/recurrent/rnn/lstm_cell/bias/read*
parallel_iterations *
_output_shapes	
:А*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Ѓ
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/ConstConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Є
BValidation/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dimConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Э
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/splitSplitBValidation/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim:Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd*
T0*@
_output_shapes.
,:	
А:	
А:	
А:	
А*
	num_split
±
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  А?
Ё
6Validation/rnn_model/recurrent/rnn/while/lstm_cell/addAdd:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:28Validation/rnn_model/recurrent/rnn/while/lstm_cell/add/y*
T0*
_output_shapes
:	
А
І
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/SigmoidSigmoid6Validation/rnn_model/recurrent/rnn/while/lstm_cell/add*
T0*
_output_shapes
:	
А
Ў
6Validation/rnn_model/recurrent/rnn/while/lstm_cell/mulMul:Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid3Validation/rnn_model/recurrent/rnn/while/Identity_3*
_output_shapes
:	
А*
T0
Ђ
<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1Sigmoid8Validation/rnn_model/recurrent/rnn/while/lstm_cell/split*
T0*
_output_shapes
:	
А
•
7Validation/rnn_model/recurrent/rnn/while/lstm_cell/TanhTanh:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:1*
T0*
_output_shapes
:	
А
а
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_1Mul<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_17Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
T0*
_output_shapes
:	
А
џ
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1Add6Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_1*
T0*
_output_shapes
:	
А
≠
<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2Sigmoid:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:3*
T0*
_output_shapes
:	
А
•
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1Tanh8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	
А*
T0
в
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2Mul<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_29Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
_output_shapes
:	
А*
T0
Ў
/Validation/rnn_model/recurrent/rnn/while/SelectSelect5Validation/rnn_model/recurrent/rnn/while/GreaterEqual5Validation/rnn_model/recurrent/rnn/while/Select/Enter8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
А
’
5Validation/rnn_model/recurrent/rnn/while/Select/EnterEnter(Validation/rnn_model/recurrent/rnn/zeros*
is_constant(*
_output_shapes
:	
А*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
Ў
1Validation/rnn_model/recurrent/rnn/while/Select_1Select5Validation/rnn_model/recurrent/rnn/while/GreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_38Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	
А
Ў
1Validation/rnn_model/recurrent/rnn/while/Select_2Select5Validation/rnn_model/recurrent/rnn/while/GreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_48Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
А
њ
LValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3RValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter3Validation/rnn_model/recurrent/rnn/while/Identity_1/Validation/rnn_model/recurrent/rnn/while/Select3Validation/rnn_model/recurrent/rnn/while/Identity_2*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
у
RValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter.Validation/rnn_model/recurrent/rnn/TensorArray*
parallel_iterations *
is_constant(*
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2
¶
0Validation/rnn_model/recurrent/rnn/while/add_1/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
љ
.Validation/rnn_model/recurrent/rnn/while/add_1Add3Validation/rnn_model/recurrent/rnn/while/Identity_10Validation/rnn_model/recurrent/rnn/while/add_1/y*
T0*
_output_shapes
: 
Ц
6Validation/rnn_model/recurrent/rnn/while/NextIterationNextIteration,Validation/rnn_model/recurrent/rnn/while/add*
T0*
_output_shapes
: 
Ъ
8Validation/rnn_model/recurrent/rnn/while/NextIteration_1NextIteration.Validation/rnn_model/recurrent/rnn/while/add_1*
T0*
_output_shapes
: 
Є
8Validation/rnn_model/recurrent/rnn/while/NextIteration_2NextIterationLValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
¶
8Validation/rnn_model/recurrent/rnn/while/NextIteration_3NextIteration1Validation/rnn_model/recurrent/rnn/while/Select_1*
T0*
_output_shapes
:	
А
¶
8Validation/rnn_model/recurrent/rnn/while/NextIteration_4NextIteration1Validation/rnn_model/recurrent/rnn/while/Select_2*
_output_shapes
:	
А*
T0
З
-Validation/rnn_model/recurrent/rnn/while/ExitExit/Validation/rnn_model/recurrent/rnn/while/Switch*
T0*
_output_shapes
: 
Л
/Validation/rnn_model/recurrent/rnn/while/Exit_1Exit1Validation/rnn_model/recurrent/rnn/while/Switch_1*
_output_shapes
: *
T0
Л
/Validation/rnn_model/recurrent/rnn/while/Exit_2Exit1Validation/rnn_model/recurrent/rnn/while/Switch_2*
_output_shapes
: *
T0
Ф
/Validation/rnn_model/recurrent/rnn/while/Exit_3Exit1Validation/rnn_model/recurrent/rnn/while/Switch_3*
T0*
_output_shapes
:	
А
Ф
/Validation/rnn_model/recurrent/rnn/while/Exit_4Exit1Validation/rnn_model/recurrent/rnn/while/Switch_4*
T0*
_output_shapes
:	
А
Ц
EValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3.Validation/rnn_model/recurrent/rnn/TensorArray/Validation/rnn_model/recurrent/rnn/while/Exit_2*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
_output_shapes
: 
ƒ
?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/startConst*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
ƒ
?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/deltaConst*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
€
9Validation/rnn_model/recurrent/rnn/TensorArrayStack/rangeRange?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/startEValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/delta*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*#
_output_shapes
:€€€€€€€€€*

Tidx0
Ц
GValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3.Validation/rnn_model/recurrent/rnn/TensorArray9Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/Validation/rnn_model/recurrent/rnn/while/Exit_2*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
dtype0*,
_output_shapes
:€€€€€€€€€
А*
element_shape:	
А
u
*Validation/rnn_model/recurrent/rnn/Const_5Const*
valueB:А*
dtype0*
_output_shapes
:
k
)Validation/rnn_model/recurrent/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
r
0Validation/rnn_model/recurrent/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
r
0Validation/rnn_model/recurrent/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
к
*Validation/rnn_model/recurrent/rnn/range_1Range0Validation/rnn_model/recurrent/rnn/range_1/start)Validation/rnn_model/recurrent/rnn/Rank_10Validation/rnn_model/recurrent/rnn/range_1/delta*
_output_shapes
:*

Tidx0
Е
4Validation/rnn_model/recurrent/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
r
0Validation/rnn_model/recurrent/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Е
+Validation/rnn_model/recurrent/rnn/concat_2ConcatV24Validation/rnn_model/recurrent/rnn/concat_2/values_0*Validation/rnn_model/recurrent/rnn/range_10Validation/rnn_model/recurrent/rnn/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0
х
.Validation/rnn_model/recurrent/rnn/transpose_1	TransposeGValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3+Validation/rnn_model/recurrent/rnn/concat_2*
T0*,
_output_shapes
:
€€€€€€€€€А*
Tperm0
s
"Validation/rnn_model/Reshape/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
Љ
Validation/rnn_model/ReshapeReshape.Validation/rnn_model/recurrent/rnn/transpose_1"Validation/rnn_model/Reshape/shape*(
_output_shapes
:€€€€€€€€€А*
T0*
Tshape0

"Validation/logits/dropout/IdentityIdentityValidation/rnn_model/Reshape*
T0*(
_output_shapes
:€€€€€€€€€А
Њ
Validation/logits/dense/MatMulMatMul"Validation/logits/dropout/Identitylogits/dense/kernel/read*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
Ђ
Validation/logits/dense/BiasAddBiasAddValidation/logits/dense/MatMullogits/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
t
Validation/logits/Reshape/shapeConst*!
valueB"
   €€€€   *
dtype0*
_output_shapes
:
™
Validation/logits/ReshapeReshapeValidation/logits/dense/BiasAddValidation/logits/Reshape/shape*+
_output_shapes
:
€€€€€€€€€*
T0*
Tshape0
С
 Validation/logits_prediction/mulMulValidation/logits/ReshapeValidation/ExpandDims_1*+
_output_shapes
:
€€€€€€€€€*
T0
u
3Validation/logits_prediction/Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
∆
!Validation/logits_prediction/MeanMean Validation/logits_prediction/mul3Validation/logits_prediction/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*
_output_shapes

:

С
GValidation/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
Э
eValidation/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits!Validation/logits_prediction/Mean.validation_input_pipeline/batch_join_and_pad:1*
T0*$
_output_shapes
:
:
*
Tlabels0	
m
#Validation/cross_entropy_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ф
"Validation/cross_entropy_loss/MeanMeaneValidation/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#Validation/cross_entropy_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
l
*Validation/accuracy_stats/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
љ
 Validation/accuracy_stats/ArgMaxArgMax!Validation/logits_prediction/Mean*Validation/accuracy_stats/ArgMax/dimension*
T0*
output_type0	*
_output_shapes
:
*

Tidx0
Я
Validation/accuracy_stats/EqualEqual Validation/accuracy_stats/ArgMax.validation_input_pipeline/batch_join_and_pad:1*
_output_shapes
:
*
T0	
{
Validation/accuracy_stats/CastCastValidation/accuracy_stats/Equal*

SrcT0
*
_output_shapes
:
*

DstT0
i
Validation/accuracy_stats/ConstConst*
valueB: *
dtype0*
_output_shapes
:
£
Validation/accuracy_stats/SumSumValidation/accuracy_stats/CastValidation/accuracy_stats/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
}
 Validation/accuracy_stats/Cast_1CastValidation/accuracy_stats/Equal*

SrcT0
*
_output_shapes
:
*

DstT0
k
!Validation/accuracy_stats/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
©
Validation/accuracy_stats/MeanMean Validation/accuracy_stats/Cast_1!Validation/accuracy_stats/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
k
)Validation/accuracy/predictions/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
ї
Validation/accuracy/predictionsArgMax!Validation/logits_prediction/Mean)Validation/accuracy/predictions/dimension*

Tidx0*
T0*
output_type0	*
_output_shapes
:

P
loss_avg_plPlaceholder*
dtype0*
_output_shapes
:*
shape:
T
accuracy_avg_plPlaceholder*
dtype0*
_output_shapes
:*
shape:
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
c
lossScalarSummary	loss/tags Training/cross_entropy_loss/Mean*
_output_shapes
: *
T0
h
accuracy_training/tagsConst*"
valueB Baccuracy_training*
dtype0*
_output_shapes
: 
y
accuracy_trainingScalarSummaryaccuracy_training/tagsTraining/accuracy_stats/Mean*
T0*
_output_shapes
: 
^
accuracy_avg/tagsConst*
valueB Baccuracy_avg*
dtype0*
_output_shapes
: 
b
accuracy_avgScalarSummaryaccuracy_avg/tagsaccuracy_avg_pl*
T0*
_output_shapes
: 
V
loss_avg/tagsConst*
dtype0*
_output_shapes
: *
valueB Bloss_avg
V
loss_avgScalarSummaryloss_avg/tagsloss_avg_pl*
_output_shapes
: *
T0
`
learning_rate/tagsConst*
valueB Blearning_rate*
dtype0*
_output_shapes
: 
n
learning_rateScalarSummarylearning_rate/tagsTraining/ExponentialDecay*
_output_shapes
: *
T0
k
Merge/MergeSummaryMergeSummarylossaccuracy_traininglearning_rate*
N*
_output_shapes
: 
]
Merge_1/MergeSummaryMergeSummaryaccuracy_avgloss_avg*
N*
_output_shapes
: 
Ж
initNoOp^Training/beta1_power/Assign^Training/beta2_power/Assign^Training/global_step/Assign.^cnn_model/convolution/conv2d/bias/Adam/Assign0^cnn_model/convolution/conv2d/bias/Adam_1/Assign)^cnn_model/convolution/conv2d/bias/Assign0^cnn_model/convolution/conv2d/kernel/Adam/Assign2^cnn_model/convolution/conv2d/kernel/Adam_1/Assign+^cnn_model/convolution/conv2d/kernel/Assign0^cnn_model/convolution/conv2d_1/bias/Adam/Assign2^cnn_model/convolution/conv2d_1/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_1/bias/Assign2^cnn_model/convolution/conv2d_1/kernel/Adam/Assign4^cnn_model/convolution/conv2d_1/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_1/kernel/Assign0^cnn_model/convolution/conv2d_2/bias/Adam/Assign2^cnn_model/convolution/conv2d_2/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_2/bias/Assign2^cnn_model/convolution/conv2d_2/kernel/Adam/Assign4^cnn_model/convolution/conv2d_2/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_2/kernel/Assign0^cnn_model/convolution/conv2d_3/bias/Adam/Assign2^cnn_model/convolution/conv2d_3/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_3/bias/Assign2^cnn_model/convolution/conv2d_3/kernel/Adam/Assign4^cnn_model/convolution/conv2d_3/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_3/kernel/Assign0^cnn_model/convolution/conv2d_4/bias/Adam/Assign2^cnn_model/convolution/conv2d_4/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_4/bias/Assign2^cnn_model/convolution/conv2d_4/kernel/Adam/Assign4^cnn_model/convolution/conv2d_4/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_4/kernel/Assign!^cnn_model/dense/bias/Adam/Assign#^cnn_model/dense/bias/Adam_1/Assign^cnn_model/dense/bias/Assign#^cnn_model/dense/kernel/Adam/Assign%^cnn_model/dense/kernel/Adam_1/Assign^cnn_model/dense/kernel/Assign^logits/dense/bias/Adam/Assign ^logits/dense/bias/Adam_1/Assign^logits/dense/bias/Assign ^logits/dense/kernel/Adam/Assign"^logits/dense/kernel/Adam_1/Assign^logits/dense/kernel/Assign3^rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Assign5^rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Assign.^rnn_model/recurrent/rnn/lstm_cell/bias/Assign5^rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Assign7^rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Assign0^rnn_model/recurrent/rnn/lstm_cell/kernel/Assign
Ш
init_1NoOpB^training_input_pipeline/input_producer/limit_epochs/epochs/AssignD^validation_input_pipeline/input_producer/limit_epochs/epochs/Assign
"

group_depsNoOp^init^init_1"wtздК÷     ∆є—з	ЗяшБї÷AJэђ
ЮYюX
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
о
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

ControlTrigger
м
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Т
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

F
	CountUpTo
ref"TА
output"T"
limitint"
Ttype:
2	
f
	DecodeRaw	
bytes
output"out_type"
out_typetype:
2		"
little_endianbool(
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
Ѓ
FIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint€€€€€€€€€"
	containerstring "
shared_namestring И
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
Р
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
‘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
о
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
М
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
µ
PaddingFIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint€€€€€€€€€"
	containerstring "
shared_namestring И
Г	
ParseSingleSequenceExample

serialized,
(feature_list_dense_missing_assumed_empty(
context_sparse_keys*Ncontext_sparse&
context_dense_keys*Ncontext_dense2
feature_list_sparse_keys*Nfeature_list_sparse0
feature_list_dense_keys*Nfeature_list_dense(
context_dense_defaults2Tcontext_dense

debug_name+
context_sparse_indices	*Ncontext_sparse-
context_sparse_values2context_sparse_types*
context_sparse_shapes	*Ncontext_sparse&
context_dense_values2Tcontext_dense5
feature_list_sparse_indices	*Nfeature_list_sparse7
feature_list_sparse_values2feature_list_sparse_types4
feature_list_sparse_shapes	*Nfeature_list_sparse5
feature_list_dense_values2feature_list_dense_types"
Ncontext_sparseint ("
Ncontext_denseint ("!
Nfeature_list_sparseint (" 
Nfeature_list_denseint ("1
context_sparse_types
list(type)
 (:
2	"+
Tcontext_dense
list(type)
 (:
2	"5
feature_list_dense_types
list(type)
 (:
2	")
context_dense_shapeslist(shape)
 ("6
feature_list_sparse_types
list(type)
 (:
2	".
feature_list_dense_shapeslist(shape)
 (
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
B
QueueCloseV2

handle"#
cancel_pending_enqueuesbool( И
М
QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint€€€€€€€€€И
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint€€€€€€€€€И
y
QueueEnqueueV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint€€€€€€€€€И
&
QueueSizeV2

handle
sizeИ
Y
RandomShuffle

value"T
output"T"
seedint "
seed2int "	
TtypeИ
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
J
ReaderReadV2
reader_handle
queue_handle
key	
valueИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
A

StackPopV2

handle
elem"	elem_type"
	elem_typetypeИ
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( И
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring И
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
|
TFRecordReaderV2
reader_handle"
	containerstring "
shared_namestring "
compression_typestring И
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestringИ
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
ё
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype*1.8.02v1.8.0-0-g93bc2e2072ҐЋ
н

,training_input_pipeline/input_producer/ConstConst*М

valueВ
B€	(B./train/dataTrain_1.tfrecordsB./train/dataTrain_2.tfrecordsB./train/dataTrain_3.tfrecordsB./train/dataTrain_4.tfrecordsB./train/dataTrain_5.tfrecordsB./train/dataTrain_6.tfrecordsB./train/dataTrain_7.tfrecordsB./train/dataTrain_8.tfrecordsB./train/dataTrain_9.tfrecordsB./train/dataTrain_10.tfrecordsB./train/dataTrain_11.tfrecordsB./train/dataTrain_12.tfrecordsB./train/dataTrain_13.tfrecordsB./train/dataTrain_14.tfrecordsB./train/dataTrain_15.tfrecordsB./train/dataTrain_16.tfrecordsB./train/dataTrain_17.tfrecordsB./train/dataTrain_18.tfrecordsB./train/dataTrain_19.tfrecordsB./train/dataTrain_20.tfrecordsB./train/dataTrain_21.tfrecordsB./train/dataTrain_22.tfrecordsB./train/dataTrain_23.tfrecordsB./train/dataTrain_24.tfrecordsB./train/dataTrain_25.tfrecordsB./train/dataTrain_26.tfrecordsB./train/dataTrain_27.tfrecordsB./train/dataTrain_28.tfrecordsB./train/dataTrain_29.tfrecordsB./train/dataTrain_30.tfrecordsB./train/dataTrain_31.tfrecordsB./train/dataTrain_32.tfrecordsB./train/dataTrain_33.tfrecordsB./train/dataTrain_34.tfrecordsB./train/dataTrain_35.tfrecordsB./train/dataTrain_36.tfrecordsB./train/dataTrain_37.tfrecordsB./train/dataTrain_38.tfrecordsB./train/dataTrain_39.tfrecordsB./train/dataTrain_40.tfrecords*
dtype0*
_output_shapes
:(
m
+training_input_pipeline/input_producer/SizeConst*
dtype0*
_output_shapes
: *
value	B :(
r
0training_input_pipeline/input_producer/Greater/yConst*
dtype0*
_output_shapes
: *
value	B : 
є
.training_input_pipeline/input_producer/GreaterGreater+training_input_pipeline/input_producer/Size0training_input_pipeline/input_producer/Greater/y*
_output_shapes
: *
T0
™
3training_input_pipeline/input_producer/Assert/ConstConst*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
≤
;training_input_pipeline/input_producer/Assert/Assert/data_0Const*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
»
4training_input_pipeline/input_producer/Assert/AssertAssert.training_input_pipeline/input_producer/Greater;training_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
≈
/training_input_pipeline/input_producer/IdentityIdentity,training_input_pipeline/input_producer/Const5^training_input_pipeline/input_producer/Assert/Assert*
T0*
_output_shapes
:(
і
4training_input_pipeline/input_producer/RandomShuffleRandomShuffle/training_input_pipeline/input_producer/Identity*

seed *
T0*
_output_shapes
:(*
seed2 
{
9training_input_pipeline/input_producer/limit_epochs/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ю
:training_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
џ
Atraining_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign:training_input_pipeline/input_producer/limit_epochs/epochs9training_input_pipeline/input_producer/limit_epochs/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs
ч
?training_input_pipeline/input_producer/limit_epochs/epochs/readIdentity:training_input_pipeline/input_producer/limit_epochs/epochs*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 
Г
=training_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo:training_input_pipeline/input_producer/limit_epochs/epochs*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit2
Џ
3training_input_pipeline/input_producer/limit_epochsIdentity4training_input_pipeline/input_producer/RandomShuffle>^training_input_pipeline/input_producer/limit_epochs/CountUpTo*
T0*
_output_shapes
:(
Ђ
&training_input_pipeline/input_producerFIFOQueueV2*
_output_shapes
: *
component_types
2*
shapes
: *
shared_name *
capacity *
	container 
е
Atraining_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2&training_input_pipeline/input_producer3training_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms€€€€€€€€€
Т
;training_input_pipeline/input_producer/input_producer_CloseQueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues( 
Ф
=training_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues(
Й
:training_input_pipeline/input_producer/input_producer_SizeQueueSizeV2&training_input_pipeline/input_producer*
_output_shapes
: 
Ґ
.training_input_pipeline/input_producer/ToFloatCast:training_input_pipeline/input_producer/input_producer_Size*

SrcT0*
_output_shapes
: *

DstT0
q
,training_input_pipeline/input_producer/mul/yConst*
valueB
 *   =*
dtype0*
_output_shapes
: 
∞
*training_input_pipeline/input_producer/mulMul.training_input_pipeline/input_producer/ToFloat,training_input_pipeline/input_producer/mul/y*
T0*
_output_shapes
: 
Ї
?training_input_pipeline/input_producer/fraction_of_32_full/tagsConst*K
valueBB@ B:training_input_pipeline/input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 
ў
:training_input_pipeline/input_producer/fraction_of_32_fullScalarSummary?training_input_pipeline/input_producer/fraction_of_32_full/tags*training_input_pipeline/input_producer/mul*
T0*
_output_shapes
: 
Ф
(training_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
†
$training_input_pipeline/ReaderReadV2ReaderReadV2(training_input_pipeline/TFRecordReaderV2&training_input_pipeline/input_producer*
_output_shapes
: : 
М
Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
О
Ktraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ћ
Зtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
є
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Ї
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
Њ
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Љ
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
≈
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ѕ
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
™
itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Г
^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample&training_input_pipeline/ReaderReadV2:1Зtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptystraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstKtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
Nfeature_list_sparse *
Ncontext_sparse *
context_dense_shapes
: : *
context_sparse_types
 *
Nfeature_list_dense*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*
Ncontext_dense*$
feature_list_dense_types
2
ш
2training_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ъ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ъ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ъ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
p
.training_input_pipeline/TFRecordDecoding/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
д
,training_input_pipeline/TFRecordDecoding/subSub^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample.training_input_pipeline/TFRecordDecoding/sub/y*
T0	*
_output_shapes
: 
 
0training_input_pipeline/TFRecordDecoding/ToInt32Cast`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
П
6training_input_pipeline/TFRecordDecoding/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
п
0training_input_pipeline/TFRecordDecoding/ReshapeReshape2training_input_pipeline/TFRecordDecoding/DecodeRaw6training_input_pipeline/TFRecordDecoding/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
≥
0training_input_pipeline/TFRecordDecoding/ToFloatCast0training_input_pipeline/TFRecordDecoding/Reshape*/
_output_shapes
:€€€€€€€€€PP*

DstT0*

SrcT0
С
8training_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2training_input_pipeline/TFRecordDecoding/Reshape_1Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_18training_input_pipeline/TFRecordDecoding/Reshape_1/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
Ј
2training_input_pipeline/TFRecordDecoding/ToFloat_1Cast2training_input_pipeline/TFRecordDecoding/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
С
8training_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
х
2training_input_pipeline/TFRecordDecoding/Reshape_2Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_28training_input_pipeline/TFRecordDecoding/Reshape_2/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
Ј
2training_input_pipeline/TFRecordDecoding/ToFloat_2Cast2training_input_pipeline/TFRecordDecoding/Reshape_2*/
_output_shapes
:€€€€€€€€€PP*

DstT0*

SrcT0
}
:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :і
и
8training_input_pipeline/TFRecordDecoding/Reshape_3/shapePack0training_input_pipeline/TFRecordDecoding/ToInt32:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
о
2training_input_pipeline/TFRecordDecoding/Reshape_3Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_38training_input_pipeline/TFRecordDecoding/Reshape_3/shape*(
_output_shapes
:€€€€€€€€€і*
T0*
Tshape0
Ш
?training_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
ц
-training_input_pipeline/TFRecordDecoding/MeanMean0training_input_pipeline/TFRecordDecoding/ToFloat?training_input_pipeline/TFRecordDecoding/Mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
–
.training_input_pipeline/TFRecordDecoding/sub_1Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
£
/training_input_pipeline/TFRecordDecoding/SquareSquare.training_input_pipeline/TFRecordDecoding/sub_1*/
_output_shapes
:€€€€€€€€€PP*
T0
Ъ
Atraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
щ
/training_input_pipeline/TFRecordDecoding/Mean_1Mean/training_input_pipeline/TFRecordDecoding/SquareAtraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
Ч
-training_input_pipeline/TFRecordDecoding/SqrtSqrt/training_input_pipeline/TFRecordDecoding/Mean_1*&
_output_shapes
:*
T0
w
2training_input_pipeline/TFRecordDecoding/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
ѕ
0training_input_pipeline/TFRecordDecoding/MaximumMaximum-training_input_pipeline/TFRecordDecoding/Sqrt2training_input_pipeline/TFRecordDecoding/Maximum/y*
T0*&
_output_shapes
:
–
.training_input_pipeline/TFRecordDecoding/sub_2Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
„
0training_input_pipeline/TFRecordDecoding/truedivRealDiv.training_input_pipeline/TFRecordDecoding/sub_20training_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ц
*training_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
§
&training_input_pipeline/ReaderReadV2_1ReaderReadV2*training_input_pipeline/TFRecordReaderV2_1&training_input_pipeline/input_producer*
_output_shapes
: : 
О
Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 
Р
Mtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ќ
Йtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ї
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Љ
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
ј
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Њ
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
«
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
√
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
ђ
ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Ы
`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_1:1Йtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse *
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : 
ь
4training_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
r
0training_input_pipeline/TFRecordDecoding_1/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
к
.training_input_pipeline/TFRecordDecoding_1/subSub`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_1/sub/y*
T0	*
_output_shapes
: 
ќ
2training_input_pipeline/TFRecordDecoding_1/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	
С
8training_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2training_input_pipeline/TFRecordDecoding_1/ReshapeReshape4training_input_pipeline/TFRecordDecoding_1/DecodeRaw8training_input_pipeline/TFRecordDecoding_1/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
Ј
2training_input_pipeline/TFRecordDecoding_1/ToFloatCast2training_input_pipeline/TFRecordDecoding_1/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
ы
4training_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4training_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
ы
4training_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
ї
4training_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_2*/
_output_shapes
:€€€€€€€€€PP*

DstT0*

SrcT0

<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :і
о
:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_1/ToInt32<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ф
4training_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ъ
Atraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
/training_input_pipeline/TFRecordDecoding_1/MeanMean2training_input_pipeline/TFRecordDecoding_1/ToFloatAtraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
÷
0training_input_pipeline/TFRecordDecoding_1/sub_1Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
І
1training_input_pipeline/TFRecordDecoding_1/SquareSquare0training_input_pipeline/TFRecordDecoding_1/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ь
Ctraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
€
1training_input_pipeline/TFRecordDecoding_1/Mean_1Mean1training_input_pipeline/TFRecordDecoding_1/SquareCtraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ы
/training_input_pipeline/TFRecordDecoding_1/SqrtSqrt1training_input_pipeline/TFRecordDecoding_1/Mean_1*&
_output_shapes
:*
T0
y
4training_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
’
2training_input_pipeline/TFRecordDecoding_1/MaximumMaximum/training_input_pipeline/TFRecordDecoding_1/Sqrt4training_input_pipeline/TFRecordDecoding_1/Maximum/y*
T0*&
_output_shapes
:
÷
0training_input_pipeline/TFRecordDecoding_1/sub_2Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ё
2training_input_pipeline/TFRecordDecoding_1/truedivRealDiv0training_input_pipeline/TFRecordDecoding_1/sub_22training_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ц
*training_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
§
&training_input_pipeline/ReaderReadV2_2ReaderReadV2*training_input_pipeline/TFRecordReaderV2_2&training_input_pipeline/input_producer*
_output_shapes
: : 
О
Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Р
Mtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ќ
Йtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ї
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Љ
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
ј
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Bdepth
Њ
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
«
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
√
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
ђ
ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Ы
`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_2:1Йtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse *
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense
ь
4training_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
ю
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
r
0training_input_pipeline/TFRecordDecoding_2/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
к
.training_input_pipeline/TFRecordDecoding_2/subSub`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_2/sub/y*
T0	*
_output_shapes
: 
ќ
2training_input_pipeline/TFRecordDecoding_2/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	
С
8training_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2training_input_pipeline/TFRecordDecoding_2/ReshapeReshape4training_input_pipeline/TFRecordDecoding_2/DecodeRaw8training_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
Ј
2training_input_pipeline/TFRecordDecoding_2/ToFloatCast2training_input_pipeline/TFRecordDecoding_2/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4training_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
ї
4training_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4training_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4training_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0

<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
о
:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_2/ToInt32<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ф
4training_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ъ
Atraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
ь
/training_input_pipeline/TFRecordDecoding_2/MeanMean2training_input_pipeline/TFRecordDecoding_2/ToFloatAtraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
÷
0training_input_pipeline/TFRecordDecoding_2/sub_1Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
І
1training_input_pipeline/TFRecordDecoding_2/SquareSquare0training_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ь
Ctraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
€
1training_input_pipeline/TFRecordDecoding_2/Mean_1Mean1training_input_pipeline/TFRecordDecoding_2/SquareCtraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ы
/training_input_pipeline/TFRecordDecoding_2/SqrtSqrt1training_input_pipeline/TFRecordDecoding_2/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
’
2training_input_pipeline/TFRecordDecoding_2/MaximumMaximum/training_input_pipeline/TFRecordDecoding_2/Sqrt4training_input_pipeline/TFRecordDecoding_2/Maximum/y*
T0*&
_output_shapes
:
÷
0training_input_pipeline/TFRecordDecoding_2/sub_2Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ё
2training_input_pipeline/TFRecordDecoding_2/truedivRealDiv0training_input_pipeline/TFRecordDecoding_2/sub_22training_input_pipeline/TFRecordDecoding_2/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ц
*training_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
§
&training_input_pipeline/ReaderReadV2_3ReaderReadV2*training_input_pipeline/TFRecordReaderV2_3&training_input_pipeline/input_producer*
_output_shapes
: : 
О
Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Р
Mtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
Ќ
Йtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ї
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Љ
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
ј
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Њ
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
«
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
√
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
ђ
ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
dtype0*
_output_shapes
: *
valueB B 
Ы
`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_3:1Йtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse *
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense
ь
4training_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
r
0training_input_pipeline/TFRecordDecoding_3/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
к
.training_input_pipeline/TFRecordDecoding_3/subSub`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_3/sub/y*
T0	*
_output_shapes
: 
ќ
2training_input_pipeline/TFRecordDecoding_3/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
С
8training_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2training_input_pipeline/TFRecordDecoding_3/ReshapeReshape4training_input_pipeline/TFRecordDecoding_3/DecodeRaw8training_input_pipeline/TFRecordDecoding_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
Ј
2training_input_pipeline/TFRecordDecoding_3/ToFloatCast2training_input_pipeline/TFRecordDecoding_3/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4training_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
ї
4training_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4training_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4training_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0

<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
о
:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_3/ToInt32<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ф
4training_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*(
_output_shapes
:€€€€€€€€€і*
T0*
Tshape0
Ъ
Atraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
/training_input_pipeline/TFRecordDecoding_3/MeanMean2training_input_pipeline/TFRecordDecoding_3/ToFloatAtraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
÷
0training_input_pipeline/TFRecordDecoding_3/sub_1Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*/
_output_shapes
:€€€€€€€€€PP*
T0
І
1training_input_pipeline/TFRecordDecoding_3/SquareSquare0training_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ь
Ctraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
€
1training_input_pipeline/TFRecordDecoding_3/Mean_1Mean1training_input_pipeline/TFRecordDecoding_3/SquareCtraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Ы
/training_input_pipeline/TFRecordDecoding_3/SqrtSqrt1training_input_pipeline/TFRecordDecoding_3/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
’
2training_input_pipeline/TFRecordDecoding_3/MaximumMaximum/training_input_pipeline/TFRecordDecoding_3/Sqrt4training_input_pipeline/TFRecordDecoding_3/Maximum/y*
T0*&
_output_shapes
:
÷
0training_input_pipeline/TFRecordDecoding_3/sub_2Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ё
2training_input_pipeline/TFRecordDecoding_3/truedivRealDiv0training_input_pipeline/TFRecordDecoding_3/sub_22training_input_pipeline/TFRecordDecoding_3/Maximum*/
_output_shapes
:€€€€€€€€€PP*
T0
r
0training_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
ґ
=training_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
_output_shapes
: *
component_types

2	*u
shapesk
i:€€€€€€€€€PP: :€€€€€€€€€PP:€€€€€€€€€PP: :€€€€€€€€€і*
shared_name *
capacity»*
	container 
ъ
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue2training_input_pipeline/TFRecordDecoding/ToFloat_1,training_input_pipeline/TFRecordDecoding/sub0training_input_pipeline/TFRecordDecoding/truediv2training_input_pipeline/TFRecordDecoding/ToFloat_20training_input_pipeline/TFRecordDecoding/ToInt322training_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
И
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_1/ToFloat_1.training_input_pipeline/TFRecordDecoding_1/sub2training_input_pipeline/TFRecordDecoding_1/truediv4training_input_pipeline/TFRecordDecoding_1/ToFloat_22training_input_pipeline/TFRecordDecoding_1/ToInt324training_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
И
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_2/ToFloat_1.training_input_pipeline/TFRecordDecoding_2/sub2training_input_pipeline/TFRecordDecoding_2/truediv4training_input_pipeline/TFRecordDecoding_2/ToFloat_22training_input_pipeline/TFRecordDecoding_2/ToInt324training_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
И
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_3/ToFloat_1.training_input_pipeline/TFRecordDecoding_3/sub2training_input_pipeline/TFRecordDecoding_3/truediv4training_input_pipeline/TFRecordDecoding_3/ToFloat_22training_input_pipeline/TFRecordDecoding_3/ToInt324training_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
±
Ctraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
≥
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
®
Btraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
Ѓ
2training_input_pipeline/batch_join_and_pad/ToFloatCastBtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Size*
_output_shapes
: *

DstT0*

SrcT0
u
0training_input_pipeline/batch_join_and_pad/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *
„£;
Љ
.training_input_pipeline/batch_join_and_pad/mulMul2training_input_pipeline/batch_join_and_pad/ToFloat0training_input_pipeline/batch_join_and_pad/mul/y*
_output_shapes
: *
T0
ƒ
Dtraining_input_pipeline/batch_join_and_pad/fraction_of_200_full/tagsConst*P
valueGBE B?training_input_pipeline/batch_join_and_pad/fraction_of_200_full*
dtype0*
_output_shapes
: 
з
?training_input_pipeline/batch_join_and_pad/fraction_of_200_fullScalarSummaryDtraining_input_pipeline/batch_join_and_pad/fraction_of_200_full/tags.training_input_pipeline/batch_join_and_pad/mul*
T0*
_output_shapes
: 
n
,training_input_pipeline/batch_join_and_pad/nConst*
value	B :
*
dtype0*
_output_shapes
: 
Б
*training_input_pipeline/batch_join_and_padQueueDequeueManyV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue,training_input_pipeline/batch_join_and_pad/n*Ч
_output_shapesД
Б:
€€€€€€€€€PP:
:
€€€€€€€€€PP:
€€€€€€€€€PP:
:
€€€€€€€€€і*
component_types

2	*

timeout_ms€€€€€€€€€
е
.validation_input_pipeline/input_producer/ConstConst*В
valueшBхB'./validation/dataValidation_1.tfrecordsB'./validation/dataValidation_2.tfrecordsB'./validation/dataValidation_3.tfrecordsB'./validation/dataValidation_4.tfrecordsB'./validation/dataValidation_5.tfrecordsB'./validation/dataValidation_6.tfrecordsB'./validation/dataValidation_7.tfrecordsB'./validation/dataValidation_8.tfrecordsB'./validation/dataValidation_9.tfrecordsB(./validation/dataValidation_10.tfrecordsB(./validation/dataValidation_11.tfrecordsB(./validation/dataValidation_12.tfrecordsB(./validation/dataValidation_13.tfrecordsB(./validation/dataValidation_14.tfrecordsB(./validation/dataValidation_15.tfrecords*
dtype0*
_output_shapes
:
o
-validation_input_pipeline/input_producer/SizeConst*
dtype0*
_output_shapes
: *
value	B :
t
2validation_input_pipeline/input_producer/Greater/yConst*
value	B : *
dtype0*
_output_shapes
: 
њ
0validation_input_pipeline/input_producer/GreaterGreater-validation_input_pipeline/input_producer/Size2validation_input_pipeline/input_producer/Greater/y*
T0*
_output_shapes
: 
ђ
5validation_input_pipeline/input_producer/Assert/ConstConst*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
і
=validation_input_pipeline/input_producer/Assert/Assert/data_0Const*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
ќ
6validation_input_pipeline/input_producer/Assert/AssertAssert0validation_input_pipeline/input_producer/Greater=validation_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
Ћ
1validation_input_pipeline/input_producer/IdentityIdentity.validation_input_pipeline/input_producer/Const7^validation_input_pipeline/input_producer/Assert/Assert*
T0*
_output_shapes
:
}
;validation_input_pipeline/input_producer/limit_epochs/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
†
<validation_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
dtype0	*
_output_shapes
: *
	container *
shape: *
shared_name 
г
Cvalidation_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign<validation_input_pipeline/input_producer/limit_epochs/epochs;validation_input_pipeline/input_producer/limit_epochs/Const*
use_locking(*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
validate_shape(*
_output_shapes
: 
э
Avalidation_input_pipeline/input_producer/limit_epochs/epochs/readIdentity<validation_input_pipeline/input_producer/limit_epochs/epochs*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 
Й
?validation_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo<validation_input_pipeline/input_producer/limit_epochs/epochs*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit2
џ
5validation_input_pipeline/input_producer/limit_epochsIdentity1validation_input_pipeline/input_producer/Identity@^validation_input_pipeline/input_producer/limit_epochs/CountUpTo*
T0*
_output_shapes
:
≠
(validation_input_pipeline/input_producerFIFOQueueV2*
shapes
: *
shared_name *
capacity *
	container *
_output_shapes
: *
component_types
2
л
Cvalidation_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2(validation_input_pipeline/input_producer5validation_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms€€€€€€€€€
Ц
=validation_input_pipeline/input_producer/input_producer_CloseQueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues( 
Ш
?validation_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues(
Н
<validation_input_pipeline/input_producer/input_producer_SizeQueueSizeV2(validation_input_pipeline/input_producer*
_output_shapes
: 
¶
0validation_input_pipeline/input_producer/ToFloatCast<validation_input_pipeline/input_producer/input_producer_Size*

SrcT0*
_output_shapes
: *

DstT0
s
.validation_input_pipeline/input_producer/mul/yConst*
valueB
 *   =*
dtype0*
_output_shapes
: 
ґ
,validation_input_pipeline/input_producer/mulMul0validation_input_pipeline/input_producer/ToFloat.validation_input_pipeline/input_producer/mul/y*
T0*
_output_shapes
: 
Њ
Avalidation_input_pipeline/input_producer/fraction_of_32_full/tagsConst*M
valueDBB B<validation_input_pipeline/input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 
я
<validation_input_pipeline/input_producer/fraction_of_32_fullScalarSummaryAvalidation_input_pipeline/input_producer/fraction_of_32_full/tags,validation_input_pipeline/input_producer/mul*
T0*
_output_shapes
: 
Ц
*validation_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
¶
&validation_input_pipeline/ReaderReadV2ReaderReadV2*validation_input_pipeline/TFRecordReaderV2(validation_input_pipeline/input_producer*
_output_shapes
: : 
О
Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Р
Mvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ќ
Йvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
dtype0*
_output_shapes
: *
valueB 
ї
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Blabel
Љ
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
ј
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Bdepth
Њ
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
«
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
√
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
ђ
kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Ы
`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(validation_input_pipeline/ReaderReadV2:1Йvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyuvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstMvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
Ncontext_dense*$
feature_list_dense_types
2*
Nfeature_list_sparse *
Ncontext_sparse *
context_dense_shapes
: : *
context_sparse_types
 *
Nfeature_list_dense*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		
ь
4validation_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
r
0validation_input_pipeline/TFRecordDecoding/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
к
.validation_input_pipeline/TFRecordDecoding/subSub`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample0validation_input_pipeline/TFRecordDecoding/sub/y*
T0	*
_output_shapes
: 
ќ
2validation_input_pipeline/TFRecordDecoding/ToInt32Castbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
С
8validation_input_pipeline/TFRecordDecoding/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
х
2validation_input_pipeline/TFRecordDecoding/ReshapeReshape4validation_input_pipeline/TFRecordDecoding/DecodeRaw8validation_input_pipeline/TFRecordDecoding/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
Ј
2validation_input_pipeline/TFRecordDecoding/ToFloatCast2validation_input_pipeline/TFRecordDecoding/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:validation_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4validation_input_pipeline/TFRecordDecoding/Reshape_1Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1:validation_input_pipeline/TFRecordDecoding/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4validation_input_pipeline/TFRecordDecoding/ToFloat_1Cast4validation_input_pipeline/TFRecordDecoding/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
У
:validation_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
ы
4validation_input_pipeline/TFRecordDecoding/Reshape_2Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2:validation_input_pipeline/TFRecordDecoding/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4validation_input_pipeline/TFRecordDecoding/ToFloat_2Cast4validation_input_pipeline/TFRecordDecoding/Reshape_2*/
_output_shapes
:€€€€€€€€€PP*

DstT0*

SrcT0

<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
о
:validation_input_pipeline/TFRecordDecoding/Reshape_3/shapePack2validation_input_pipeline/TFRecordDecoding/ToInt32<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
ф
4validation_input_pipeline/TFRecordDecoding/Reshape_3Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3:validation_input_pipeline/TFRecordDecoding/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ъ
Avalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ь
/validation_input_pipeline/TFRecordDecoding/MeanMean2validation_input_pipeline/TFRecordDecoding/ToFloatAvalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
÷
0validation_input_pipeline/TFRecordDecoding/sub_1Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*/
_output_shapes
:€€€€€€€€€PP*
T0
І
1validation_input_pipeline/TFRecordDecoding/SquareSquare0validation_input_pipeline/TFRecordDecoding/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ь
Cvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
€
1validation_input_pipeline/TFRecordDecoding/Mean_1Mean1validation_input_pipeline/TFRecordDecoding/SquareCvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ы
/validation_input_pipeline/TFRecordDecoding/SqrtSqrt1validation_input_pipeline/TFRecordDecoding/Mean_1*
T0*&
_output_shapes
:
y
4validation_input_pipeline/TFRecordDecoding/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
’
2validation_input_pipeline/TFRecordDecoding/MaximumMaximum/validation_input_pipeline/TFRecordDecoding/Sqrt4validation_input_pipeline/TFRecordDecoding/Maximum/y*
T0*&
_output_shapes
:
÷
0validation_input_pipeline/TFRecordDecoding/sub_2Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ё
2validation_input_pipeline/TFRecordDecoding/truedivRealDiv0validation_input_pipeline/TFRecordDecoding/sub_22validation_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ш
,validation_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
™
(validation_input_pipeline/ReaderReadV2_1ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_1(validation_input_pipeline/input_producer*
_output_shapes
: : 
Р
Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Т
Ovalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
ѕ
Лvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
љ
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Њ
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
¬
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ј
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
…
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
≈
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
Ѓ
mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
≥
bvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_1:1Лvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse *
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		
А
6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
В
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
В
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
t
2validation_input_pipeline/TFRecordDecoding_1/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
р
0validation_input_pipeline/TFRecordDecoding_1/subSubbvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_1/sub/y*
T0	*
_output_shapes
: 
“
4validation_input_pipeline/TFRecordDecoding_1/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
У
:validation_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4validation_input_pipeline/TFRecordDecoding_1/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw:validation_input_pipeline/TFRecordDecoding_1/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4validation_input_pipeline/TFRecordDecoding_1/ToFloatCast4validation_input_pipeline/TFRecordDecoding_1/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
Б
6validation_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
Б
6validation_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Б
>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
ф
<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_1/ToInt32>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ъ
6validation_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ь
Cvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
В
1validation_input_pipeline/TFRecordDecoding_1/MeanMean4validation_input_pipeline/TFRecordDecoding_1/ToFloatCvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
№
2validation_input_pipeline/TFRecordDecoding_1/sub_1Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ђ
3validation_input_pipeline/TFRecordDecoding_1/SquareSquare2validation_input_pipeline/TFRecordDecoding_1/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ю
Evalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
Е
3validation_input_pipeline/TFRecordDecoding_1/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_1/SquareEvalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Я
1validation_input_pipeline/TFRecordDecoding_1/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_1/Mean_1*&
_output_shapes
:*
T0
{
6validation_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
џ
4validation_input_pipeline/TFRecordDecoding_1/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_1/Sqrt6validation_input_pipeline/TFRecordDecoding_1/Maximum/y*&
_output_shapes
:*
T0
№
2validation_input_pipeline/TFRecordDecoding_1/sub_2Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
г
4validation_input_pipeline/TFRecordDecoding_1/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_1/sub_24validation_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
Ш
,validation_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
™
(validation_input_pipeline/ReaderReadV2_2ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_2(validation_input_pipeline/input_producer*
_output_shapes
: : 
Р
Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Т
Ovalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
ѕ
Лvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
љ
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Blabel
Њ
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
¬
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ј
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
…
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
≈
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
Ѓ
mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
dtype0*
_output_shapes
: *
valueB B 
≥
bvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_2:1Лvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
Ncontext_sparse *
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse 
А
6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
t
2validation_input_pipeline/TFRecordDecoding_2/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
р
0validation_input_pipeline/TFRecordDecoding_2/subSubbvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_2/sub/y*
T0	*
_output_shapes
: 
“
4validation_input_pipeline/TFRecordDecoding_2/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
У
:validation_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4validation_input_pipeline/TFRecordDecoding_2/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw:validation_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4validation_input_pipeline/TFRecordDecoding_2/ToFloatCast4validation_input_pipeline/TFRecordDecoding_2/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
Б
6validation_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
Б
6validation_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_2*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Б
>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
ф
<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_2/ToInt32>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
ъ
6validation_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*(
_output_shapes
:€€€€€€€€€і*
T0*
Tshape0
Ь
Cvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
В
1validation_input_pipeline/TFRecordDecoding_2/MeanMean4validation_input_pipeline/TFRecordDecoding_2/ToFloatCvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
№
2validation_input_pipeline/TFRecordDecoding_2/sub_1Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ђ
3validation_input_pipeline/TFRecordDecoding_2/SquareSquare2validation_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ю
Evalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
Е
3validation_input_pipeline/TFRecordDecoding_2/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_2/SquareEvalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Я
1validation_input_pipeline/TFRecordDecoding_2/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_2/Mean_1*&
_output_shapes
:*
T0
{
6validation_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
џ
4validation_input_pipeline/TFRecordDecoding_2/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_2/Sqrt6validation_input_pipeline/TFRecordDecoding_2/Maximum/y*
T0*&
_output_shapes
:
№
2validation_input_pipeline/TFRecordDecoding_2/sub_2Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
г
4validation_input_pipeline/TFRecordDecoding_2/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_2/sub_24validation_input_pipeline/TFRecordDecoding_2/Maximum*/
_output_shapes
:€€€€€€€€€PP*
T0
Ш
,validation_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
™
(validation_input_pipeline/ReaderReadV2_3ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_3(validation_input_pipeline/input_producer*
_output_shapes
: : 
Р
Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
Т
Ovalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
ѕ
Лvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
љ
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Њ
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
¬
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Bdepth
ј
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
…
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
≈
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
Ѓ
mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
≥
bvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_3:1Лvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse *
Ncontext_sparse *
context_sparse_types
 *
context_dense_shapes
: : *
Nfeature_list_dense*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Tcontext_dense
2		
А
6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
little_endian(*
out_type0
В
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
t
2validation_input_pipeline/TFRecordDecoding_3/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
р
0validation_input_pipeline/TFRecordDecoding_3/subSubbvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_3/sub/y*
T0	*
_output_shapes
: 
“
4validation_input_pipeline/TFRecordDecoding_3/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
У
:validation_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
ы
4validation_input_pipeline/TFRecordDecoding_3/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw:validation_input_pipeline/TFRecordDecoding_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
ї
4validation_input_pipeline/TFRecordDecoding_3/ToFloatCast4validation_input_pipeline/TFRecordDecoding_3/Reshape*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
Б
6validation_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
њ
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_1*

SrcT0*/
_output_shapes
:€€€€€€€€€PP*

DstT0
Х
<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
Б
6validation_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€PP
њ
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_2*/
_output_shapes
:€€€€€€€€€PP*

DstT0*

SrcT0
Б
>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
value
B :і*
dtype0*
_output_shapes
: 
ф
<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_3/ToInt32>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
ъ
6validation_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€і
Ь
Cvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
В
1validation_input_pipeline/TFRecordDecoding_3/MeanMean4validation_input_pipeline/TFRecordDecoding_3/ToFloatCvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
№
2validation_input_pipeline/TFRecordDecoding_3/sub_1Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
Ђ
3validation_input_pipeline/TFRecordDecoding_3/SquareSquare2validation_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:€€€€€€€€€PP
Ю
Evalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Е
3validation_input_pipeline/TFRecordDecoding_3/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_3/SquareEvalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Я
1validation_input_pipeline/TFRecordDecoding_3/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_3/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
џ
4validation_input_pipeline/TFRecordDecoding_3/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_3/Sqrt6validation_input_pipeline/TFRecordDecoding_3/Maximum/y*
T0*&
_output_shapes
:
№
2validation_input_pipeline/TFRecordDecoding_3/sub_2Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:€€€€€€€€€PP
г
4validation_input_pipeline/TFRecordDecoding_3/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_3/sub_24validation_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:€€€€€€€€€PP
t
2validation_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Є
?validation_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
shared_name *
capacity»*
	container *
_output_shapes
: *
component_types

2	*u
shapesk
i:€€€€€€€€€PP: :€€€€€€€€€PP:€€€€€€€€€PP: :€€€€€€€€€і
К
Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue4validation_input_pipeline/TFRecordDecoding/ToFloat_1.validation_input_pipeline/TFRecordDecoding/sub2validation_input_pipeline/TFRecordDecoding/truediv4validation_input_pipeline/TFRecordDecoding/ToFloat_22validation_input_pipeline/TFRecordDecoding/ToInt324validation_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
Ш
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_1/ToFloat_10validation_input_pipeline/TFRecordDecoding_1/sub4validation_input_pipeline/TFRecordDecoding_1/truediv6validation_input_pipeline/TFRecordDecoding_1/ToFloat_24validation_input_pipeline/TFRecordDecoding_1/ToInt326validation_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
Ш
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_2/ToFloat_10validation_input_pipeline/TFRecordDecoding_2/sub4validation_input_pipeline/TFRecordDecoding_2/truediv6validation_input_pipeline/TFRecordDecoding_2/ToFloat_24validation_input_pipeline/TFRecordDecoding_2/ToInt326validation_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
Ш
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_3/ToFloat_10validation_input_pipeline/TFRecordDecoding_3/sub4validation_input_pipeline/TFRecordDecoding_3/truediv6validation_input_pipeline/TFRecordDecoding_3/ToFloat_24validation_input_pipeline/TFRecordDecoding_3/ToInt326validation_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms€€€€€€€€€
µ
Evalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
Ј
Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
ђ
Dvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
≤
4validation_input_pipeline/batch_join_and_pad/ToFloatCastDvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Size*
_output_shapes
: *

DstT0*

SrcT0
w
2validation_input_pipeline/batch_join_and_pad/mul/yConst*
valueB
 *
„£;*
dtype0*
_output_shapes
: 
¬
0validation_input_pipeline/batch_join_and_pad/mulMul4validation_input_pipeline/batch_join_and_pad/ToFloat2validation_input_pipeline/batch_join_and_pad/mul/y*
T0*
_output_shapes
: 
»
Fvalidation_input_pipeline/batch_join_and_pad/fraction_of_200_full/tagsConst*R
valueIBG BAvalidation_input_pipeline/batch_join_and_pad/fraction_of_200_full*
dtype0*
_output_shapes
: 
н
Avalidation_input_pipeline/batch_join_and_pad/fraction_of_200_fullScalarSummaryFvalidation_input_pipeline/batch_join_and_pad/fraction_of_200_full/tags0validation_input_pipeline/batch_join_and_pad/mul*
T0*
_output_shapes
: 
p
.validation_input_pipeline/batch_join_and_pad/nConst*
value	B :
*
dtype0*
_output_shapes
: 
З
,validation_input_pipeline/batch_join_and_padQueueDequeueManyV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue.validation_input_pipeline/batch_join_and_pad/n*Ч
_output_shapesД
Б:
€€€€€€€€€PP:
:
€€€€€€€€€PP:
€€€€€€€€€PP:
:
€€€€€€€€€і*
component_types

2	*

timeout_ms€€€€€€€€€
e
Training/SequenceMask/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
©
Training/SequenceMask/MaxMax,training_input_pipeline/batch_join_and_pad:4Training/SequenceMask/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
Training/SequenceMask/Const_1Const*
value	B : *
dtype0*
_output_shapes
: 
_
Training/SequenceMask/Const_2Const*
dtype0*
_output_shapes
: *
value	B :
Ѓ
Training/SequenceMask/RangeRangeTraining/SequenceMask/Const_1Training/SequenceMask/MaxTraining/SequenceMask/Const_2*#
_output_shapes
:€€€€€€€€€*

Tidx0
o
$Training/SequenceMask/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
Ј
 Training/SequenceMask/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4$Training/SequenceMask/ExpandDims/dim*
_output_shapes

:
*

Tdim0*
T0
|
Training/SequenceMask/CastCast Training/SequenceMask/ExpandDims*
_output_shapes

:
*

DstT0*

SrcT0
Н
Training/SequenceMask/LessLessTraining/SequenceMask/RangeTraining/SequenceMask/Cast*
T0*'
_output_shapes
:
€€€€€€€€€
Б
Training/SequenceMask/Cast_1CastTraining/SequenceMask/Less*

SrcT0
*'
_output_shapes
:
€€€€€€€€€*

DstT0
b
Training/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ъ
Training/ExpandDims
ExpandDimsTraining/SequenceMask/Cast_1Training/ExpandDims/dim*

Tdim0*
T0*+
_output_shapes
:
€€€€€€€€€
y
 Training/cnn_model/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"€€€€P   P      
љ
Training/cnn_model/ReshapeReshape,training_input_pipeline/batch_join_and_pad:2 Training/cnn_model/Reshape/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
„
Fcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB"            *
dtype0*
_output_shapes
:
¬
Ecnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *    
ƒ
Gcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *|Ё=
Ї
Pcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shape*

seed *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
:
ѕ
Dcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulMulPcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalGcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddev*&
_output_shapes
:*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
љ
@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normalAddDcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulEcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
я
#cnn_model/convolution/conv2d/kernel
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
≠
*cnn_model/convolution/conv2d/kernel/AssignAssign#cnn_model/convolution/conv2d/kernel@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normal*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:
¬
(cnn_model/convolution/conv2d/kernel/readIdentity#cnn_model/convolution/conv2d/kernel*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
ґ
3cnn_model/convolution/conv2d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    
√
!cnn_model/convolution/conv2d/bias
VariableV2*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
О
(cnn_model/convolution/conv2d/bias/AssignAssign!cnn_model/convolution/conv2d/bias3cnn_model/convolution/conv2d/bias/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
:
∞
&cnn_model/convolution/conv2d/bias/readIdentity!cnn_model/convolution/conv2d/bias*
_output_shapes
:*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Д
3Training/cnn_model/convolution/conv2d/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
§
,Training/cnn_model/convolution/conv2d/Conv2DConv2DTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€PP*
	dilations

я
-Training/cnn_model/convolution/conv2d/BiasAddBiasAdd,Training/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€PP
Ы
*Training/cnn_model/convolution/conv2d/ReluRelu-Training/cnn_model/convolution/conv2d/BiasAdd*/
_output_shapes
:€€€€€€€€€PP*
T0
ч
4Training/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool*Training/cnn_model/convolution/conv2d/Relu*/
_output_shapes
:€€€€€€€€€((*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
џ
Hcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
∆
Gcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
»
Icnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *HYЛ=*
dtype0*
_output_shapes
: 
ј
Rcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: *

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
seed2 
„
Fcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
≈
Bcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mean*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
г
%cnn_model/convolution/conv2d_1/kernel
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
µ
,cnn_model/convolution/conv2d_1/kernel/AssignAssign%cnn_model/convolution/conv2d_1/kernelBcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
»
*cnn_model/convolution/conv2d_1/kernel/readIdentity%cnn_model/convolution/conv2d_1/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
Ї
5cnn_model/convolution/conv2d_1/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
«
#cnn_model/convolution/conv2d_1/bias
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ц
*cnn_model/convolution/conv2d_1/bias/AssignAssign#cnn_model/convolution/conv2d_1/bias5cnn_model/convolution/conv2d_1/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
ґ
(cnn_model/convolution/conv2d_1/bias/readIdentity#cnn_model/convolution/conv2d_1/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
Ж
5Training/cnn_model/convolution/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¬
.Training/cnn_model/convolution/conv2d_1/Conv2DConv2D4Training/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€(( 
е
/Training/cnn_model/convolution/conv2d_1/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€(( 
Я
,Training/cnn_model/convolution/conv2d_1/ReluRelu/Training/cnn_model/convolution/conv2d_1/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€(( 
ы
6Training/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€ 
џ
Hcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
∆
Gcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
»
Icnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *£E=*
dtype0*
_output_shapes
: 
ј
Rcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
seed2 
„
Fcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
≈
Bcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
г
%cnn_model/convolution/conv2d_2/kernel
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @
µ
,cnn_model/convolution/conv2d_2/kernel/AssignAssign%cnn_model/convolution/conv2d_2/kernelBcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
»
*cnn_model/convolution/conv2d_2/kernel/readIdentity%cnn_model/convolution/conv2d_2/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
Ї
5cnn_model/convolution/conv2d_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    
«
#cnn_model/convolution/conv2d_2/bias
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
Ц
*cnn_model/convolution/conv2d_2/bias/AssignAssign#cnn_model/convolution/conv2d_2/bias5cnn_model/convolution/conv2d_2/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias
ґ
(cnn_model/convolution/conv2d_2/bias/readIdentity#cnn_model/convolution/conv2d_2/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
Ж
5Training/cnn_model/convolution/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ƒ
.Training/cnn_model/convolution/conv2d_2/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€@*
	dilations
*
T0
е
/Training/cnn_model/convolution/conv2d_2/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€@
Я
,Training/cnn_model/convolution/conv2d_2/ReluRelu/Training/cnn_model/convolution/conv2d_2/BiasAdd*/
_output_shapes
:€€€€€€€€€@*
T0
ы
6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_2/Relu*/
_output_shapes
:€€€€€€€€€

@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
џ
Hcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   А   *
dtype0*
_output_shapes
:
∆
Gcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
»
Icnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *HY=*
dtype0*
_output_shapes
: 
Ѕ
Rcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shape*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
seed2 *
dtype0*'
_output_shapes
:@А
Ў
Fcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@А
∆
Bcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mean*'
_output_shapes
:@А*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
е
%cnn_model/convolution/conv2d_3/kernel
VariableV2*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@А*
dtype0*'
_output_shapes
:@А*
shared_name 
ґ
,cnn_model/convolution/conv2d_3/kernel/AssignAssign%cnn_model/convolution/conv2d_3/kernelBcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@А
…
*cnn_model/convolution/conv2d_3/kernel/readIdentity%cnn_model/convolution/conv2d_3/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@А
Љ
5cnn_model/convolution/conv2d_3/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
…
#cnn_model/convolution/conv2d_3/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:А
Ч
*cnn_model/convolution/conv2d_3/bias/AssignAssign#cnn_model/convolution/conv2d_3/bias5cnn_model/convolution/conv2d_3/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ј
(cnn_model/convolution/conv2d_3/bias/readIdentity#cnn_model/convolution/conv2d_3/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:А
Ж
5Training/cnn_model/convolution/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
≈
.Training/cnn_model/convolution/conv2d_3/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:€€€€€€€€€

А*
	dilations
*
T0
ж
/Training/cnn_model/convolution/conv2d_3/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€

А
†
,Training/cnn_model/convolution/conv2d_3/ReluRelu/Training/cnn_model/convolution/conv2d_3/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€

А
ь
6Training/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_3/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
T0
џ
Hcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      А      *
dtype0*
_output_shapes
:
∆
Gcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
»
Icnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *£≈<
¬
Rcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:АА*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
seed2 
ў
Fcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:АА
«
Bcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mean*(
_output_shapes
:АА*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
з
%cnn_model/convolution/conv2d_4/kernel
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:АА*
dtype0*(
_output_shapes
:АА
Ј
,cnn_model/convolution/conv2d_4/kernel/AssignAssign%cnn_model/convolution/conv2d_4/kernelBcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:АА
 
*cnn_model/convolution/conv2d_4/kernel/readIdentity%cnn_model/convolution/conv2d_4/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:АА
Љ
5cnn_model/convolution/conv2d_4/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
…
#cnn_model/convolution/conv2d_4/bias
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
Ч
*cnn_model/convolution/conv2d_4/bias/AssignAssign#cnn_model/convolution/conv2d_4/bias5cnn_model/convolution/conv2d_4/bias/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
Ј
(cnn_model/convolution/conv2d_4/bias/readIdentity#cnn_model/convolution/conv2d_4/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:А
Ж
5Training/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
≈
.Training/cnn_model/convolution/conv2d_4/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ж
/Training/cnn_model/convolution/conv2d_4/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
†
,Training/cnn_model/convolution/conv2d_4/ReluRelu/Training/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
ь
6Training/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_4/Relu*0
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
s
"Training/cnn_model/Reshape_1/shapeConst*
valueB"€€€€ 	  *
dtype0*
_output_shapes
:
ƒ
Training/cnn_model/Reshape_1Reshape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool"Training/cnn_model/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
µ
9cnn_model/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     
®
8cnn_model/dense/kernel/Initializer/truncated_normal/meanConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
™
:cnn_model/dense/kernel/Initializer/truncated_normal/stddevConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *JQЏ<*
dtype0*
_output_shapes
: 
Н
Ccnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9cnn_model/dense/kernel/Initializer/truncated_normal/shape*
T0*)
_class
loc:@cnn_model/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
АА*

seed 
Х
7cnn_model/dense/kernel/Initializer/truncated_normal/mulMulCcnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormal:cnn_model/dense/kernel/Initializer/truncated_normal/stddev*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
АА
Г
3cnn_model/dense/kernel/Initializer/truncated_normalAdd7cnn_model/dense/kernel/Initializer/truncated_normal/mul8cnn_model/dense/kernel/Initializer/truncated_normal/mean*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
АА
є
cnn_model/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:
АА
у
cnn_model/dense/kernel/AssignAssigncnn_model/dense/kernel3cnn_model/dense/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel
Х
cnn_model/dense/kernel/readIdentitycnn_model/dense/kernel* 
_output_shapes
:
АА*
T0*)
_class
loc:@cnn_model/dense/kernel
Ю
&cnn_model/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*'
_class
loc:@cnn_model/dense/bias*
valueBА*    
Ђ
cnn_model/dense/bias
VariableV2*'
_class
loc:@cnn_model/dense/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
џ
cnn_model/dense/bias/AssignAssigncnn_model/dense/bias&cnn_model/dense/bias/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:А
К
cnn_model/dense/bias/readIdentitycnn_model/dense/bias*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:А
љ
Training/cnn_model/dense/MatMulMatMulTraining/cnn_model/Reshape_1cnn_model/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
±
 Training/cnn_model/dense/BiasAddBiasAddTraining/cnn_model/dense/MatMulcnn_model/dense/bias/read*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А*
T0
z
Training/cnn_model/dense/ReluRelu Training/cnn_model/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
w
"Training/cnn_model/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*!
valueB"
   €€€€   
ѓ
Training/cnn_model/Reshape_2ReshapeTraining/cnn_model/dense/Relu"Training/cnn_model/Reshape_2/shape*
T0*
Tshape0*,
_output_shapes
:
€€€€€€€€€А
g
Training/SequenceMask_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
≠
Training/SequenceMask_1/MaxMax,training_input_pipeline/batch_join_and_pad:4Training/SequenceMask_1/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
a
Training/SequenceMask_1/Const_1Const*
dtype0*
_output_shapes
: *
value	B : 
a
Training/SequenceMask_1/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
ґ
Training/SequenceMask_1/RangeRangeTraining/SequenceMask_1/Const_1Training/SequenceMask_1/MaxTraining/SequenceMask_1/Const_2*#
_output_shapes
:€€€€€€€€€*

Tidx0
q
&Training/SequenceMask_1/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ї
"Training/SequenceMask_1/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4&Training/SequenceMask_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

А
Training/SequenceMask_1/CastCast"Training/SequenceMask_1/ExpandDims*
_output_shapes

:
*

DstT0*

SrcT0
У
Training/SequenceMask_1/LessLessTraining/SequenceMask_1/RangeTraining/SequenceMask_1/Cast*
T0*'
_output_shapes
:
€€€€€€€€€
Е
Training/SequenceMask_1/Cast_1CastTraining/SequenceMask_1/Less*'
_output_shapes
:
€€€€€€€€€*

DstT0*

SrcT0

d
Training/ExpandDims_1/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
†
Training/ExpandDims_1
ExpandDimsTraining/SequenceMask_1/Cast_1Training/ExpandDims_1/dim*

Tdim0*
T0*+
_output_shapes
:
€€€€€€€€€
g
%Training/rnn_model/recurrent/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
n
,Training/rnn_model/recurrent/rnn/range/startConst*
dtype0*
_output_shapes
: *
value	B :
n
,Training/rnn_model/recurrent/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Џ
&Training/rnn_model/recurrent/rnn/rangeRange,Training/rnn_model/recurrent/rnn/range/start%Training/rnn_model/recurrent/rnn/Rank,Training/rnn_model/recurrent/rnn/range/delta*
_output_shapes
:*

Tidx0
Б
0Training/rnn_model/recurrent/rnn/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB"       
n
,Training/rnn_model/recurrent/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
х
'Training/rnn_model/recurrent/rnn/concatConcatV20Training/rnn_model/recurrent/rnn/concat/values_0&Training/rnn_model/recurrent/rnn/range,Training/rnn_model/recurrent/rnn/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
¬
*Training/rnn_model/recurrent/rnn/transpose	TransposeTraining/cnn_model/Reshape_2'Training/rnn_model/recurrent/rnn/concat*
T0*,
_output_shapes
:€€€€€€€€€
А*
Tperm0
П
0Training/rnn_model/recurrent/rnn/sequence_lengthIdentity,training_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:

В
8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
valueB:
*
dtype0*
_output_shapes
:
Е
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
А
>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
µ
9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV28Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
Г
>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ч
8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	
А
Д
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
valueB:
*
dtype0*
_output_shapes
:
Е
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
valueB:А*
dtype0*
_output_shapes
:
Д
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
valueB:
*
dtype0*
_output_shapes
:
Е
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:А*
dtype0*
_output_shapes
:
В
@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ї
;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
Е
@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
э
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	
А
Д
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
valueB:
*
dtype0*
_output_shapes
:
Е
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
valueB:А*
dtype0*
_output_shapes
:
p
&Training/rnn_model/recurrent/rnn/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

p
&Training/rnn_model/recurrent/rnn/stackConst*
valueB:
*
dtype0*
_output_shapes
:
§
&Training/rnn_model/recurrent/rnn/EqualEqual&Training/rnn_model/recurrent/rnn/Shape&Training/rnn_model/recurrent/rnn/stack*
T0*
_output_shapes
:
p
&Training/rnn_model/recurrent/rnn/ConstConst*
valueB: *
dtype0*
_output_shapes
:
∞
$Training/rnn_model/recurrent/rnn/AllAll&Training/rnn_model/recurrent/rnn/Equal&Training/rnn_model/recurrent/rnn/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
Њ
-Training/rnn_model/recurrent/rnn/Assert/ConstConst*a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
А
/Training/rnn_model/recurrent/rnn/Assert/Const_1Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
∆
5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
Ж
5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
Љ
.Training/rnn_model/recurrent/rnn/Assert/AssertAssert$Training/rnn_model/recurrent/rnn/All5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0&Training/rnn_model/recurrent/rnn/stack5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2&Training/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
ј
,Training/rnn_model/recurrent/rnn/CheckSeqLenIdentity0Training/rnn_model/recurrent/rnn/sequence_length/^Training/rnn_model/recurrent/rnn/Assert/Assert*
T0*
_output_shapes
:

Т
(Training/rnn_model/recurrent/rnn/Shape_1Shape*Training/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
~
4Training/rnn_model/recurrent/rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6Training/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6Training/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
†
.Training/rnn_model/recurrent/rnn/strided_sliceStridedSlice(Training/rnn_model/recurrent/rnn/Shape_14Training/rnn_model/recurrent/rnn/strided_slice/stack6Training/rnn_model/recurrent/rnn/strided_slice/stack_16Training/rnn_model/recurrent/rnn/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
r
(Training/rnn_model/recurrent/rnn/Const_1Const*
valueB:
*
dtype0*
_output_shapes
:
s
(Training/rnn_model/recurrent/rnn/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
p
.Training/rnn_model/recurrent/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
у
)Training/rnn_model/recurrent/rnn/concat_1ConcatV2(Training/rnn_model/recurrent/rnn/Const_1(Training/rnn_model/recurrent/rnn/Const_2.Training/rnn_model/recurrent/rnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
q
,Training/rnn_model/recurrent/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
√
&Training/rnn_model/recurrent/rnn/zerosFill)Training/rnn_model/recurrent/rnn/concat_1,Training/rnn_model/recurrent/rnn/zeros/Const*
T0*

index_type0*
_output_shapes
:	
А
r
(Training/rnn_model/recurrent/rnn/Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
Ѕ
$Training/rnn_model/recurrent/rnn/MinMin,Training/rnn_model/recurrent/rnn/CheckSeqLen(Training/rnn_model/recurrent/rnn/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
r
(Training/rnn_model/recurrent/rnn/Const_4Const*
valueB: *
dtype0*
_output_shapes
:
Ѕ
$Training/rnn_model/recurrent/rnn/MaxMax,Training/rnn_model/recurrent/rnn/CheckSeqLen(Training/rnn_model/recurrent/rnn/Const_4*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
g
%Training/rnn_model/recurrent/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
–
,Training/rnn_model/recurrent/rnn/TensorArrayTensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*
dtype0*
_output_shapes

:: *
element_shape:	
А*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*L
tensor_array_name75Training/rnn_model/recurrent/rnn/dynamic_rnn/output_0
—
.Training/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*
element_shape:	
А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*K
tensor_array_name64Training/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 
£
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape*Training/rnn_model/recurrent/rnn/transpose*
_output_shapes
:*
T0*
out_type0
С
GTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
У
ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
У
ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
э
ATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeGTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Б
?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Б
?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Є
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRange?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
Ь
[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3.Training/rnn_model/recurrent/rnn/TensorArray_19Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range*Training/rnn_model/recurrent/rnn/transpose0Training/rnn_model/recurrent/rnn/TensorArray_1:1*
_output_shapes
: *
T0*=
_class3
1/loc:@Training/rnn_model/recurrent/rnn/transpose
l
*Training/rnn_model/recurrent/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
¶
(Training/rnn_model/recurrent/rnn/MaximumMaximum*Training/rnn_model/recurrent/rnn/Maximum/x$Training/rnn_model/recurrent/rnn/Max*
T0*
_output_shapes
: 
Ѓ
(Training/rnn_model/recurrent/rnn/MinimumMinimum.Training/rnn_model/recurrent/rnn/strided_slice(Training/rnn_model/recurrent/rnn/Maximum*
T0*
_output_shapes
: 
z
8Training/rnn_model/recurrent/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
Д
,Training/rnn_model/recurrent/rnn/while/EnterEnter8Training/rnn_model/recurrent/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
у
.Training/rnn_model/recurrent/rnn/while/Enter_1Enter%Training/rnn_model/recurrent/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ь
.Training/rnn_model/recurrent/rnn/while/Enter_2Enter.Training/rnn_model/recurrent/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
П
.Training/rnn_model/recurrent/rnn/while/Enter_3Enter8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	
А*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
С
.Training/rnn_model/recurrent/rnn/while/Enter_4Enter:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	
А*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
≈
,Training/rnn_model/recurrent/rnn/while/MergeMerge,Training/rnn_model/recurrent/rnn/while/Enter4Training/rnn_model/recurrent/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
Ћ
.Training/rnn_model/recurrent/rnn/while/Merge_1Merge.Training/rnn_model/recurrent/rnn/while/Enter_16Training/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Ћ
.Training/rnn_model/recurrent/rnn/while/Merge_2Merge.Training/rnn_model/recurrent/rnn/while/Enter_26Training/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
‘
.Training/rnn_model/recurrent/rnn/while/Merge_3Merge.Training/rnn_model/recurrent/rnn/while/Enter_36Training/rnn_model/recurrent/rnn/while/NextIteration_3*
N*!
_output_shapes
:	
А: *
T0
‘
.Training/rnn_model/recurrent/rnn/while/Merge_4Merge.Training/rnn_model/recurrent/rnn/while/Enter_46Training/rnn_model/recurrent/rnn/while/NextIteration_4*
N*!
_output_shapes
:	
А: *
T0
µ
+Training/rnn_model/recurrent/rnn/while/LessLess,Training/rnn_model/recurrent/rnn/while/Merge1Training/rnn_model/recurrent/rnn/while/Less/Enter*
T0*
_output_shapes
: 
€
1Training/rnn_model/recurrent/rnn/while/Less/EnterEnter.Training/rnn_model/recurrent/rnn/strided_slice*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
ї
-Training/rnn_model/recurrent/rnn/while/Less_1Less.Training/rnn_model/recurrent/rnn/while/Merge_13Training/rnn_model/recurrent/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
ы
3Training/rnn_model/recurrent/rnn/while/Less_1/EnterEnter(Training/rnn_model/recurrent/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
≥
1Training/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd+Training/rnn_model/recurrent/rnn/while/Less-Training/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 
Ж
/Training/rnn_model/recurrent/rnn/while/LoopCondLoopCond1Training/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 
ъ
-Training/rnn_model/recurrent/rnn/while/SwitchSwitch,Training/rnn_model/recurrent/rnn/while/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/while/Merge
А
/Training/rnn_model/recurrent/rnn/while/Switch_1Switch.Training/rnn_model/recurrent/rnn/while/Merge_1/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_1*
_output_shapes
: : 
А
/Training/rnn_model/recurrent/rnn/while/Switch_2Switch.Training/rnn_model/recurrent/rnn/while/Merge_2/Training/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_2
Т
/Training/rnn_model/recurrent/rnn/while/Switch_3Switch.Training/rnn_model/recurrent/rnn/while/Merge_3/Training/rnn_model/recurrent/rnn/while/LoopCond**
_output_shapes
:	
А:	
А*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_3
Т
/Training/rnn_model/recurrent/rnn/while/Switch_4Switch.Training/rnn_model/recurrent/rnn/while/Merge_4/Training/rnn_model/recurrent/rnn/while/LoopCond**
_output_shapes
:	
А:	
А*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_4
Н
/Training/rnn_model/recurrent/rnn/while/IdentityIdentity/Training/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 
С
1Training/rnn_model/recurrent/rnn/while/Identity_1Identity1Training/rnn_model/recurrent/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
С
1Training/rnn_model/recurrent/rnn/while/Identity_2Identity1Training/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
Ъ
1Training/rnn_model/recurrent/rnn/while/Identity_3Identity1Training/rnn_model/recurrent/rnn/while/Switch_3:1*
T0*
_output_shapes
:	
А
Ъ
1Training/rnn_model/recurrent/rnn/while/Identity_4Identity1Training/rnn_model/recurrent/rnn/while/Switch_4:1*
T0*
_output_shapes
:	
А
†
,Training/rnn_model/recurrent/rnn/while/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
±
*Training/rnn_model/recurrent/rnn/while/addAdd/Training/rnn_model/recurrent/rnn/while/Identity,Training/rnn_model/recurrent/rnn/while/add/y*
_output_shapes
: *
T0
∞
8Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3TensorArrayReadV3>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	
А
Р
>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ї
@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
÷
3Training/rnn_model/recurrent/rnn/while/GreaterEqualGreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_19Training/rnn_model/recurrent/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:

Й
9Training/rnn_model/recurrent/rnn/while/GreaterEqual/EnterEnter,Training/rnn_model/recurrent/rnn/CheckSeqLen*
parallel_iterations *
_output_shapes
:
*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
ў
Krnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
ћ
Jrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ќ
Lrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *м—<*
dtype0*
_output_shapes
: 
√
Urnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shape*

seed *
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
seed2 *
dtype0* 
_output_shapes
:
АА
Ё
Irnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulMulUrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalLrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
АА
Ћ
Ernn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normalAddIrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulJrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
АА*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
Ё
(rnn_model/recurrent/rnn/lstm_cell/kernel
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:
АА
ї
/rnn_model/recurrent/rnn/lstm_cell/kernel/AssignAssign(rnn_model/recurrent/rnn/lstm_cell/kernelErnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
О
-rnn_model/recurrent/rnn/lstm_cell/kernel/readIdentity(rnn_model/recurrent/rnn/lstm_cell/kernel*
T0* 
_output_shapes
:
АА
ќ
Hrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:А
Њ
>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
љ
8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zerosFillHrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensor>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:А
ѕ
&rnn_model/recurrent/rnn/lstm_cell/bias
VariableV2*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
£
-rnn_model/recurrent/rnn/lstm_cell/bias/AssignAssign&rnn_model/recurrent/rnn/lstm_cell/bias8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
Е
+rnn_model/recurrent/rnn/lstm_cell/bias/readIdentity&rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:А*
T0
∞
<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axisConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
≠
7Training/rnn_model/recurrent/rnn/while/lstm_cell/concatConcatV28Training/rnn_model/recurrent/rnn/while/TensorArrayReadV31Training/rnn_model/recurrent/rnn/while/Identity_4<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis*
T0*
N*
_output_shapes
:	
А*

Tidx0
Й
7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMulMatMul7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter*
T0*
_output_shapes
:	
А*
transpose_a( *
transpose_b( 
Ф
=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
parallel_iterations * 
_output_shapes
:
АА*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
э
8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAddBiasAdd7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter*
data_formatNHWC*
_output_shapes
:	
А*
T0
О
>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/EnterEnter+rnn_model/recurrent/rnn/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
™
6Training/rnn_model/recurrent/rnn/while/lstm_cell/ConstConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
і
@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dimConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ч
6Training/rnn_model/recurrent/rnn/while/lstm_cell/splitSplit@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd*
T0*@
_output_shapes.
,:	
А:	
А:	
А:	
А*
	num_split
≠
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
„
4Training/rnn_model/recurrent/rnn/while/lstm_cell/addAdd8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:26Training/rnn_model/recurrent/rnn/while/lstm_cell/add/y*
T0*
_output_shapes
:	
А
£
8Training/rnn_model/recurrent/rnn/while/lstm_cell/SigmoidSigmoid4Training/rnn_model/recurrent/rnn/while/lstm_cell/add*
_output_shapes
:	
А*
T0
“
4Training/rnn_model/recurrent/rnn/while/lstm_cell/mulMul8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid1Training/rnn_model/recurrent/rnn/while/Identity_3*
_output_shapes
:	
А*
T0
І
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1Sigmoid6Training/rnn_model/recurrent/rnn/while/lstm_cell/split*
T0*
_output_shapes
:	
А
°
5Training/rnn_model/recurrent/rnn/while/lstm_cell/TanhTanh8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:1*
T0*
_output_shapes
:	
А
Џ
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_15Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
T0*
_output_shapes
:	
А
’
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1Add4Training/rnn_model/recurrent/rnn/while/lstm_cell/mul6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1*
_output_shapes
:	
А*
T0
©
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2Sigmoid8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:3*
T0*
_output_shapes
:	
А
°
7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1Tanh6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*
_output_shapes
:	
А
№
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_27Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
T0*
_output_shapes
:	
А
ќ
-Training/rnn_model/recurrent/rnn/while/SelectSelect3Training/rnn_model/recurrent/rnn/while/GreaterEqual3Training/rnn_model/recurrent/rnn/while/Select/Enter6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
А
Ќ
3Training/rnn_model/recurrent/rnn/while/Select/EnterEnter&Training/rnn_model/recurrent/rnn/zeros*
parallel_iterations *
is_constant(*
_output_shapes
:	
А*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2
ќ
/Training/rnn_model/recurrent/rnn/while/Select_1Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_36Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	
А
ќ
/Training/rnn_model/recurrent/rnn/while/Select_2Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_46Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
А
≥
JTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1-Training/rnn_model/recurrent/rnn/while/Select1Training/rnn_model/recurrent/rnn/while/Identity_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
л
PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
is_constant(*
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
Ґ
.Training/rnn_model/recurrent/rnn/while/add_1/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ј
,Training/rnn_model/recurrent/rnn/while/add_1Add1Training/rnn_model/recurrent/rnn/while/Identity_1.Training/rnn_model/recurrent/rnn/while/add_1/y*
T0*
_output_shapes
: 
Т
4Training/rnn_model/recurrent/rnn/while/NextIterationNextIteration*Training/rnn_model/recurrent/rnn/while/add*
T0*
_output_shapes
: 
Ц
6Training/rnn_model/recurrent/rnn/while/NextIteration_1NextIteration,Training/rnn_model/recurrent/rnn/while/add_1*
T0*
_output_shapes
: 
і
6Training/rnn_model/recurrent/rnn/while/NextIteration_2NextIterationJTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Ґ
6Training/rnn_model/recurrent/rnn/while/NextIteration_3NextIteration/Training/rnn_model/recurrent/rnn/while/Select_1*
T0*
_output_shapes
:	
А
Ґ
6Training/rnn_model/recurrent/rnn/while/NextIteration_4NextIteration/Training/rnn_model/recurrent/rnn/while/Select_2*
T0*
_output_shapes
:	
А
Г
+Training/rnn_model/recurrent/rnn/while/ExitExit-Training/rnn_model/recurrent/rnn/while/Switch*
T0*
_output_shapes
: 
З
-Training/rnn_model/recurrent/rnn/while/Exit_1Exit/Training/rnn_model/recurrent/rnn/while/Switch_1*
_output_shapes
: *
T0
З
-Training/rnn_model/recurrent/rnn/while/Exit_2Exit/Training/rnn_model/recurrent/rnn/while/Switch_2*
T0*
_output_shapes
: 
Р
-Training/rnn_model/recurrent/rnn/while/Exit_3Exit/Training/rnn_model/recurrent/rnn/while/Switch_3*
_output_shapes
:	
А*
T0
Р
-Training/rnn_model/recurrent/rnn/while/Exit_4Exit/Training/rnn_model/recurrent/rnn/while/Switch_4*
T0*
_output_shapes
:	
А
О
CTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
_output_shapes
: 
ј
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startConst*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
ј
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/deltaConst*
dtype0*
_output_shapes
: *?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B :
х
7Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeRange=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startCTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/delta*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*#
_output_shapes
:€€€€€€€€€*

Tidx0
М
ETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3,Training/rnn_model/recurrent/rnn/TensorArray7Training/rnn_model/recurrent/rnn/TensorArrayStack/range-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
dtype0*,
_output_shapes
:€€€€€€€€€
А*
element_shape:	
А
s
(Training/rnn_model/recurrent/rnn/Const_5Const*
valueB:А*
dtype0*
_output_shapes
:
i
'Training/rnn_model/recurrent/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
p
.Training/rnn_model/recurrent/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
p
.Training/rnn_model/recurrent/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
в
(Training/rnn_model/recurrent/rnn/range_1Range.Training/rnn_model/recurrent/rnn/range_1/start'Training/rnn_model/recurrent/rnn/Rank_1.Training/rnn_model/recurrent/rnn/range_1/delta*
_output_shapes
:*

Tidx0
Г
2Training/rnn_model/recurrent/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
p
.Training/rnn_model/recurrent/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
э
)Training/rnn_model/recurrent/rnn/concat_2ConcatV22Training/rnn_model/recurrent/rnn/concat_2/values_0(Training/rnn_model/recurrent/rnn/range_1.Training/rnn_model/recurrent/rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
п
,Training/rnn_model/recurrent/rnn/transpose_1	TransposeETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3)Training/rnn_model/recurrent/rnn/concat_2*,
_output_shapes
:
€€€€€€€€€А*
Tperm0*
T0
q
 Training/rnn_model/Reshape/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
ґ
Training/rnn_model/ReshapeReshape,Training/rnn_model/recurrent/rnn/transpose_1 Training/rnn_model/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
n
)Training/logits/dropout/dropout/keep_probConst*
valueB
 *333?*
dtype0*
_output_shapes
: 

%Training/logits/dropout/dropout/ShapeShapeTraining/rnn_model/Reshape*
T0*
out_type0*
_output_shapes
:
w
2Training/logits/dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
w
2Training/logits/dropout/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ќ
<Training/logits/dropout/dropout/random_uniform/RandomUniformRandomUniform%Training/logits/dropout/dropout/Shape*
T0*
dtype0*(
_output_shapes
:€€€€€€€€€А*
seed2 *

seed 
¬
2Training/logits/dropout/dropout/random_uniform/subSub2Training/logits/dropout/dropout/random_uniform/max2Training/logits/dropout/dropout/random_uniform/min*
_output_shapes
: *
T0
ё
2Training/logits/dropout/dropout/random_uniform/mulMul<Training/logits/dropout/dropout/random_uniform/RandomUniform2Training/logits/dropout/dropout/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
–
.Training/logits/dropout/dropout/random_uniformAdd2Training/logits/dropout/dropout/random_uniform/mul2Training/logits/dropout/dropout/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€А
Є
#Training/logits/dropout/dropout/addAdd)Training/logits/dropout/dropout/keep_prob.Training/logits/dropout/dropout/random_uniform*
T0*(
_output_shapes
:€€€€€€€€€А
Ж
%Training/logits/dropout/dropout/FloorFloor#Training/logits/dropout/dropout/add*(
_output_shapes
:€€€€€€€€€А*
T0
®
#Training/logits/dropout/dropout/divRealDivTraining/rnn_model/Reshape)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А
©
#Training/logits/dropout/dropout/mulMul#Training/logits/dropout/dropout/div%Training/logits/dropout/dropout/Floor*(
_output_shapes
:€€€€€€€€€А*
T0
ѓ
6logits/dense/kernel/Initializer/truncated_normal/shapeConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ґ
5logits/dense/kernel/Initializer/truncated_normal/meanConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
§
7logits/dense/kernel/Initializer/truncated_normal/stddevConst*&
_class
loc:@logits/dense/kernel*
valueB
 *R${=*
dtype0*
_output_shapes
: 
Г
@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6logits/dense/kernel/Initializer/truncated_normal/shape*
T0*&
_class
loc:@logits/dense/kernel*
seed2 *
dtype0*
_output_shapes
:	А*

seed 
И
4logits/dense/kernel/Initializer/truncated_normal/mulMul@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormal7logits/dense/kernel/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	А
ц
0logits/dense/kernel/Initializer/truncated_normalAdd4logits/dense/kernel/Initializer/truncated_normal/mul5logits/dense/kernel/Initializer/truncated_normal/mean*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	А
±
logits/dense/kernel
VariableV2*
shape:	А*
dtype0*
_output_shapes
:	А*
shared_name *&
_class
loc:@logits/dense/kernel*
	container 
ж
logits/dense/kernel/AssignAssignlogits/dense/kernel0logits/dense/kernel/Initializer/truncated_normal*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel
Л
logits/dense/kernel/readIdentitylogits/dense/kernel*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	А
Ц
#logits/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*$
_class
loc:@logits/dense/bias*
valueB*    
£
logits/dense/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@logits/dense/bias
ќ
logits/dense/bias/AssignAssignlogits/dense/bias#logits/dense/bias/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:
А
logits/dense/bias/readIdentitylogits/dense/bias*
_output_shapes
:*
T0*$
_class
loc:@logits/dense/bias
љ
Training/logits/dense/MatMulMatMul#Training/logits/dropout/dropout/mullogits/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( 
І
Training/logits/dense/BiasAddBiasAddTraining/logits/dense/MatMullogits/dense/bias/read*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€*
T0
r
Training/logits/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"
   €€€€   
§
Training/logits/ReshapeReshapeTraining/logits/dense/BiasAddTraining/logits/Reshape/shape*
T0*
Tshape0*+
_output_shapes
:
€€€€€€€€€
Л
Training/logits_prediction/mulMulTraining/logits/ReshapeTraining/ExpandDims_1*
T0*+
_output_shapes
:
€€€€€€€€€
s
1Training/logits_prediction/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ј
Training/logits_prediction/MeanMeanTraining/logits_prediction/mul1Training/logits_prediction/Mean/reduction_indices*
T0*
_output_shapes

:
*
	keep_dims( *

Tidx0
П
ETraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

Ч
cTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsTraining/logits_prediction/Mean,training_input_pipeline/batch_join_and_pad:1*
T0*$
_output_shapes
:
:
*
Tlabels0	
k
!Training/cross_entropy_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
о
 Training/cross_entropy_loss/MeanMeancTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits!Training/cross_entropy_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
j
(Training/accuracy_stats/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Ј
Training/accuracy_stats/ArgMaxArgMaxTraining/logits_prediction/Mean(Training/accuracy_stats/ArgMax/dimension*
output_type0	*
_output_shapes
:
*

Tidx0*
T0
Щ
Training/accuracy_stats/EqualEqualTraining/accuracy_stats/ArgMax,training_input_pipeline/batch_join_and_pad:1*
T0	*
_output_shapes
:

w
Training/accuracy_stats/CastCastTraining/accuracy_stats/Equal*

SrcT0
*
_output_shapes
:
*

DstT0
g
Training/accuracy_stats/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Э
Training/accuracy_stats/SumSumTraining/accuracy_stats/CastTraining/accuracy_stats/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
y
Training/accuracy_stats/Cast_1CastTraining/accuracy_stats/Equal*

SrcT0
*
_output_shapes
:
*

DstT0
i
Training/accuracy_stats/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
£
Training/accuracy_stats/MeanMeanTraining/accuracy_stats/Cast_1Training/accuracy_stats/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
i
'Training/accuracy/predictions/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
µ
Training/accuracy/predictionsArgMaxTraining/logits_prediction/Mean'Training/accuracy/predictions/dimension*
T0*
output_type0	*
_output_shapes
:
*

Tidx0
d
"Training/global_step/initial_valueConst*
value	B :*
dtype0*
_output_shapes
: 
x
Training/global_step
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
“
Training/global_step/AssignAssignTraining/global_step"Training/global_step/initial_value*
T0*'
_class
loc:@Training/global_step*
validate_shape(*
_output_shapes
: *
use_locking(
Е
Training/global_step/readIdentityTraining/global_step*
T0*'
_class
loc:@Training/global_step*
_output_shapes
: 
l
'Training/ExponentialDecay/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
q
Training/ExponentialDecay/CastCastTraining/global_step/read*

SrcT0*
_output_shapes
: *

DstT0
e
"Training/ExponentialDecay/Cast_1/xConst*
dtype0*
_output_shapes
: *
value
B :ф
|
 Training/ExponentialDecay/Cast_1Cast"Training/ExponentialDecay/Cast_1/x*
_output_shapes
: *

DstT0*

SrcT0
g
"Training/ExponentialDecay/Cast_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *мQx?
П
!Training/ExponentialDecay/truedivRealDivTraining/ExponentialDecay/Cast Training/ExponentialDecay/Cast_1*
T0*
_output_shapes
: 
М
Training/ExponentialDecay/PowPow"Training/ExponentialDecay/Cast_2/x!Training/ExponentialDecay/truediv*
T0*
_output_shapes
: 
Й
Training/ExponentialDecayMul'Training/ExponentialDecay/learning_rateTraining/ExponentialDecay/Pow*
T0*
_output_shapes
: 
[
Training/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
a
Training/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
К
Training/gradients/FillFillTraining/gradients/ShapeTraining/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
\
Training/gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
÷
Training/gradients/f_count_1EnterTraining/gradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Н
Training/gradients/MergeMergeTraining/gradients/f_count_1 Training/gradients/NextIteration*
T0*
N*
_output_shapes
: : 
С
Training/gradients/SwitchSwitchTraining/gradients/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0
М
Training/gradients/Add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
u
Training/gradients/AddAddTraining/gradients/Switch:1Training/gradients/Add/y*
T0*
_output_shapes
: 
ъ
 Training/gradients/NextIterationNextIterationTraining/gradients/Add[^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2Б^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2e^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2*
T0*
_output_shapes
: 
`
Training/gradients/f_count_2ExitTraining/gradients/Switch*
T0*
_output_shapes
: 
\
Training/gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
л
Training/gradients/b_count_1EnterTraining/gradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
С
Training/gradients/Merge_1MergeTraining/gradients/b_count_1"Training/gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
У
Training/gradients/GreaterEqualGreaterEqualTraining/gradients/Merge_1%Training/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
т
%Training/gradients/GreaterEqual/EnterEnterTraining/gradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
a
Training/gradients/b_count_2LoopCondTraining/gradients/GreaterEqual*
_output_shapes
: 
В
Training/gradients/Switch_1SwitchTraining/gradients/Merge_1Training/gradients/b_count_2*
T0*
_output_shapes
: : 
Д
Training/gradients/SubSubTraining/gradients/Switch_1:1%Training/gradients/GreaterEqual/Enter*
_output_shapes
: *
T0
к
"Training/gradients/NextIteration_1NextIterationTraining/gradients/Sub|^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
b
Training/gradients/b_count_3ExitTraining/gradients/Switch_1*
T0*
_output_shapes
: 
Р
FTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
я
@Training/gradients/Training/cross_entropy_loss/Mean_grad/ReshapeReshapeTraining/gradients/FillFTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
И
>Training/gradients/Training/cross_entropy_loss/Mean_grad/ConstConst*
valueB:
*
dtype0*
_output_shapes
:
ю
=Training/gradients/Training/cross_entropy_loss/Mean_grad/TileTile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Reshape>Training/gradients/Training/cross_entropy_loss/Mean_grad/Const*

Tmultiples0*
T0*
_output_shapes
:

Е
@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1Const*
valueB
 *   A*
dtype0*
_output_shapes
: 
с
@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivRealDiv=Training/gradients/Training/cross_entropy_loss/Mean_grad/Tile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1*
_output_shapes
:
*
T0
Ї
Training/gradients/zeros_like	ZerosLikeeTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:

ж
ЛTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradienteTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
*і
message®•Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
÷
КTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Щ
ЖTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivКTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

∆
Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulЖTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsЛTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:

Ы
=Training/gradients/Training/logits_prediction/Mean_grad/ShapeShapeTraining/logits_prediction/mul*
_output_shapes
:*
T0*
out_type0
–
<Training/gradients/Training/logits_prediction/Mean_grad/SizeConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
¶
;Training/gradients/Training/logits_prediction/Mean_grad/addAdd1Training/logits_prediction/Mean/reduction_indices<Training/gradients/Training/logits_prediction/Mean_grad/Size*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
: 
µ
;Training/gradients/Training/logits_prediction/Mean_grad/modFloorMod;Training/gradients/Training/logits_prediction/Mean_grad/add<Training/gradients/Training/logits_prediction/Mean_grad/Size*
_output_shapes
: *
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape
‘
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1Const*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
valueB *
dtype0*
_output_shapes
: 
„
CTraining/gradients/Training/logits_prediction/Mean_grad/range/startConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 
„
CTraining/gradients/Training/logits_prediction/Mean_grad/range/deltaConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
И
=Training/gradients/Training/logits_prediction/Mean_grad/rangeRangeCTraining/gradients/Training/logits_prediction/Mean_grad/range/start<Training/gradients/Training/logits_prediction/Mean_grad/SizeCTraining/gradients/Training/logits_prediction/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape
÷
BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/valueConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
ќ
<Training/gradients/Training/logits_prediction/Mean_grad/FillFill?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/value*
_output_shapes
: *
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*

index_type0
Ў
ETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchDynamicStitch=Training/gradients/Training/logits_prediction/Mean_grad/range;Training/gradients/Training/logits_prediction/Mean_grad/mod=Training/gradients/Training/logits_prediction/Mean_grad/Shape<Training/gradients/Training/logits_prediction/Mean_grad/Fill*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
N*#
_output_shapes
:€€€€€€€€€
’
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/yConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
‘
?Training/gradients/Training/logits_prediction/Mean_grad/MaximumMaximumETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/y*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*#
_output_shapes
:€€€€€€€€€
√
@Training/gradients/Training/logits_prediction/Mean_grad/floordivFloorDiv=Training/gradients/Training/logits_prediction/Mean_grad/Shape?Training/gradients/Training/logits_prediction/Mean_grad/Maximum*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
:
√
?Training/gradients/Training/logits_prediction/Mean_grad/ReshapeReshapeTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
°
<Training/gradients/Training/logits_prediction/Mean_grad/TileTile?Training/gradients/Training/logits_prediction/Mean_grad/Reshape@Training/gradients/Training/logits_prediction/Mean_grad/floordiv*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€*

Tmultiples0
Э
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2ShapeTraining/logits_prediction/mul*
T0*
out_type0*
_output_shapes
:
Р
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3Const*
valueB"
      *
dtype0*
_output_shapes
:
З
=Training/gradients/Training/logits_prediction/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
В
<Training/gradients/Training/logits_prediction/Mean_grad/ProdProd?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2=Training/gradients/Training/logits_prediction/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Й
?Training/gradients/Training/logits_prediction/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Ж
>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1Prod?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3?Training/gradients/Training/logits_prediction/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Е
CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
т
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1Maximum>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
р
BTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1FloorDiv<Training/gradients/Training/logits_prediction/Mean_grad/ProdATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
Є
<Training/gradients/Training/logits_prediction/Mean_grad/CastCastBTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
ь
?Training/gradients/Training/logits_prediction/Mean_grad/truedivRealDiv<Training/gradients/Training/logits_prediction/Mean_grad/Tile<Training/gradients/Training/logits_prediction/Mean_grad/Cast*
T0*+
_output_shapes
:
€€€€€€€€€
У
<Training/gradients/Training/logits_prediction/mul_grad/ShapeShapeTraining/logits/Reshape*
T0*
out_type0*
_output_shapes
:
У
>Training/gradients/Training/logits_prediction/mul_grad/Shape_1ShapeTraining/ExpandDims_1*
T0*
out_type0*
_output_shapes
:
†
LTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<Training/gradients/Training/logits_prediction/mul_grad/Shape>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ѕ
:Training/gradients/Training/logits_prediction/mul_grad/MulMul?Training/gradients/Training/logits_prediction/Mean_grad/truedivTraining/ExpandDims_1*
T0*+
_output_shapes
:
€€€€€€€€€
Л
:Training/gradients/Training/logits_prediction/mul_grad/SumSum:Training/gradients/Training/logits_prediction/mul_grad/MulLTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
З
>Training/gradients/Training/logits_prediction/mul_grad/ReshapeReshape:Training/gradients/Training/logits_prediction/mul_grad/Sum<Training/gradients/Training/logits_prediction/mul_grad/Shape*+
_output_shapes
:
€€€€€€€€€*
T0*
Tshape0
”
<Training/gradients/Training/logits_prediction/mul_grad/Mul_1MulTraining/logits/Reshape?Training/gradients/Training/logits_prediction/Mean_grad/truediv*
T0*+
_output_shapes
:
€€€€€€€€€
С
<Training/gradients/Training/logits_prediction/mul_grad/Sum_1Sum<Training/gradients/Training/logits_prediction/mul_grad/Mul_1NTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Н
@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1Reshape<Training/gradients/Training/logits_prediction/mul_grad/Sum_1>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*+
_output_shapes
:
€€€€€€€€€*
T0*
Tshape0
”
GTraining/gradients/Training/logits_prediction/mul_grad/tuple/group_depsNoOp?^Training/gradients/Training/logits_prediction/mul_grad/ReshapeA^Training/gradients/Training/logits_prediction/mul_grad/Reshape_1
о
OTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/logits_prediction/mul_grad/ReshapeH^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*+
_output_shapes
:
€€€€€€€€€*
T0*Q
_classG
ECloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape
ф
QTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1H^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1*+
_output_shapes
:
€€€€€€€€€
Т
5Training/gradients/Training/logits/Reshape_grad/ShapeShapeTraining/logits/dense/BiasAdd*
_output_shapes
:*
T0*
out_type0
К
7Training/gradients/Training/logits/Reshape_grad/ReshapeReshapeOTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency5Training/gradients/Training/logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
≈
ATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradBiasAddGrad7Training/gradients/Training/logits/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
ћ
FTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_depsNoOp8^Training/gradients/Training/logits/Reshape_grad/ReshapeB^Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad
Џ
NTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencyIdentity7Training/gradients/Training/logits/Reshape_grad/ReshapeG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*J
_class@
><loc:@Training/gradients/Training/logits/Reshape_grad/Reshape
г
PTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1IdentityATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
И
;Training/gradients/Training/logits/dense/MatMul_grad/MatMulMatMulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencylogits/dense/kernel/read*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b(
М
=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1MatMul#Training/logits/dropout/dropout/mulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	А*
transpose_a(*
transpose_b( 
Ћ
ETraining/gradients/Training/logits/dense/MatMul_grad/tuple/group_depsNoOp<^Training/gradients/Training/logits/dense/MatMul_grad/MatMul>^Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1
б
MTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependencyIdentity;Training/gradients/Training/logits/dense/MatMul_grad/MatMulF^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*N
_classD
B@loc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul
ё
OTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1Identity=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1F^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*
T0*P
_classF
DBloc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1*
_output_shapes
:	А
§
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeShape#Training/logits/dropout/dropout/div*
T0*
out_type0*
_output_shapes
:
®
CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1Shape%Training/logits/dropout/dropout/Floor*
T0*
out_type0*
_output_shapes
:
ѓ
QTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
п
?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulMulMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency%Training/logits/dropout/dropout/Floor*
T0*(
_output_shapes
:€€€€€€€€€А
Ъ
?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumSum?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulQTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
У
CTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
п
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1Mul#Training/logits/dropout/dropout/divMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency*(
_output_shapes
:€€€€€€€€€А*
T0
†
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1STraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Щ
ETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*(
_output_shapes
:€€€€€€€€€А*
T0*
Tshape0
в
LTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1
€
TTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
Е
VTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
Ы
ATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeShapeTraining/rnn_model/Reshape*
T0*
out_type0*
_output_shapes
:
Ж
CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
ѓ
QTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
В
CTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivRealDivTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency)Training/logits/dropout/dropout/keep_prob*(
_output_shapes
:€€€€€€€€€А*
T0
Ю
?Training/gradients/Training/logits/dropout/dropout/div_grad/SumSumCTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivQTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
У
CTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/div_grad/SumATraining/gradients/Training/logits/dropout/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Х
?Training/gradients/Training/logits/dropout/dropout/div_grad/NegNegTraining/rnn_model/Reshape*
T0*(
_output_shapes
:€€€€€€€€€А
п
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1RealDiv?Training/gradients/Training/logits/dropout/dropout/div_grad/Neg)Training/logits/dropout/dropout/keep_prob*(
_output_shapes
:€€€€€€€€€А*
T0
х
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2RealDivETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А
Ц
?Training/gradients/Training/logits/dropout/dropout/div_grad/mulMulTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:€€€€€€€€€А
Ю
ATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1Sum?Training/gradients/Training/logits/dropout/dropout/div_grad/mulSTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
З
ETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
в
LTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/div_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1
€
TTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape
у
VTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1
§
8Training/gradients/Training/rnn_model/Reshape_grad/ShapeShape,Training/rnn_model/recurrent/rnn/transpose_1*
T0*
out_type0*
_output_shapes
:
Ъ
:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeReshapeTTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency8Training/gradients/Training/rnn_model/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:
€€€€€€€€€А
ї
VTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutationInvertPermutation)Training/rnn_model/recurrent/rnn/concat_2*
T0*
_output_shapes
:
≥
NTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose	Transpose:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeVTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutation*
Tperm0*
T0*,
_output_shapes
:€€€€€€€€€
А
р
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
sourceTraining/gradients*
_output_shapes

:: 
Ы
{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity-Training/rnn_model/recurrent/rnn/while/Exit_2А^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
_output_shapes
: 
∆
ЕTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV37Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeNTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
y
(Training/gradients/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"
      
c
Training/gradients/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
¶
Training/gradients/zerosFill(Training/gradients/zeros/shape_as_tensorTraining/gradients/zeros/Const*
_output_shapes
:	
А*
T0*

index_type0
{
*Training/gradients/zeros_1/shape_as_tensorConst*
valueB"
      *
dtype0*
_output_shapes
:
e
 Training/gradients/zeros_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
ђ
Training/gradients/zeros_1Fill*Training/gradients/zeros_1/shape_as_tensor Training/gradients/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	
А
Е
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitEnterЕTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
†
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitEnterTraining/gradients/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	
А*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ґ
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitEnterTraining/gradients/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	
А*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
ђ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
µ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	
А: 
µ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIteration*
N*!
_output_shapes
:	
А: *
T0
ѕ
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: : 
ѓ
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch
Ъ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
Ю
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
б
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch**
_output_shapes
:	
А:	
А
ѓ
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch
£
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
_output_shapes
:	
А*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch
І
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch*
_output_shapes
:	
А
б
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch**
_output_shapes
:	
А:	
А
ѓ
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch
£
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	
А
І
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	
А
’
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_2_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
ё
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_3_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency*
_output_shapes
:	
А*
T0
ё
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_4_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency*
T0*
_output_shapes
:	
А
У
ДTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3КTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnteraTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1*
_output_shapes

:: *I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
sourceTraining/gradients
є
КTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
д
АTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1Е^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
¬
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3ДTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2АTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:	
А
Л
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ж
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*

stack_name *
_output_shapes
:*
	elem_type0*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1
Ш
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
М
АTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1^Training/gradients/Add*
T0*
_output_shapes
: *
swap_memory(
„
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2ЕTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
: *
	elem_type0
Ј
ЕTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ф
{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerZ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2А^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2d^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2\^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
÷
sTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpb^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1u^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
І
{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentitytTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*З
_class}
{yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
_output_shapes
:	
А
и
}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
_output_shapes
: *
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch
ћ
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"
      
ґ
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/ConstConst^Training/gradients/Sub*
dtype0*
_output_shapes
: *
valueB
 *    
‘
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	
А
Ф
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like*
T0*
_output_shapes
:	
А
з
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/ConstConst*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Љ
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_accStackV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Const*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*

stack_name *
_output_shapes
:*
	elem_type0

ћ
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
≈
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2StackPushV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Enter3Training/rnn_model/recurrent/rnn/while/GreaterEqual^Training/gradients/Add*
T0
*
_output_shapes
:
*
swap_memory(
О
YTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2
StackPopV2_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:
*
	elem_type0

к
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ц
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
А
Д
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
§
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
_output_shapes
:	
А
™
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
_output_shapes
:	
А*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
ћ
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"
      *
dtype0*
_output_shapes
:
ґ
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
‘
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/Const*
_output_shapes
:	
А*
T0*

index_type0
Ф
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like*
_output_shapes
:	
А*
T0
Ц
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
А
Д
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1
§
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
_output_shapes
:	
А
™
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
_output_shapes
:	
А
 
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"
      *
dtype0*
_output_shapes
:
і
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
ќ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_likeFill`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorVTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/Const*
_output_shapes
:	
А*
T0*

index_type0
™
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like*
T0*
_output_shapes
:	
А
ђ
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*
_output_shapes
:	
А
ю
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_depsNoOpM^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1
Ь
^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependencyIdentityLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectW^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
T0*_
_classU
SQloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select*
_output_shapes
:	
А
Ґ
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1IdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1W^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1*
_output_shapes
:	
А
э
Training/gradients/AddNAddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
N*
_output_shapes
:	
А
ы
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulMulTraining/gradients/AddN]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*
_output_shapes
:	
А
п
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
»
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1
‘
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
÷
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Ы
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
:	
А
т
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
€
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1MulTraining/gradients/AddN_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	
А
ф
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*
valueB :
€€€€€€€€€
ѕ
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Const*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*

stack_name *
_output_shapes
:*
	elem_type0
Ў
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ё
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Я
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
ц
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
У
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1
Ї
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul*
_output_shapes
:	
А
ј
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1*
_output_shapes
:	
А
И
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIterationNextIteration}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
б
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes
:	
А
Ў
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
А
ч
Training/gradients/AddN_1AddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGrad*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
N*
_output_shapes
:	
А
Г
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_depsNoOp^Training/gradients/AddN_1
€
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependencyIdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	
А
Б
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1IdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	
А
«
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulMulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2*
T0*
_output_shapes
:	
А
з
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/ConstConst*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Њ
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_accStackV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Const*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*

stack_name *
_output_shapes
:*
	elem_type0
–
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ћ
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2StackPushV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Enter1Training/rnn_model/recurrent/rnn/while/Identity_3^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Ч
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2
StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
о
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ћ
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1MulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2*
_output_shapes
:	
А*
T0
р
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/ConstConst*K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
…
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Const*K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
‘
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
„
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Enter8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Ы
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
т
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Н
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_depsNoOpQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1
≤
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependencyIdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul*
_output_shapes
:	
А
Є
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1IdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1*
_output_shapes
:	
А
Ќ
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2*
T0*
_output_shapes
:	
А
н
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/ConstConst*
dtype0*
_output_shapes
: *H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
valueB :
€€€€€€€€€
∆
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh
‘
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
‘
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Enter5Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Ы
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
т
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
—
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1MuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	
А
ф
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*
valueB :
€€€€€€€€€
ѕ
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Const*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:*
	elem_type0
Ў
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Ё
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
Я
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
ц
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
У
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1
Ї
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul*
_output_shapes
:	
А
ј
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
_output_shapes
:	
А*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1
џ
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:	
А
В
Training/gradients/AddN_2AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencygTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
N*
_output_shapes
:	
А
б
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes
:	
А
÷
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1*
_output_shapes
:	
А*
T0
Љ
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeConst^Training/gradients/Sub*
valueB"
      *
dtype0*
_output_shapes
:
∞
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1Const^Training/gradients/Sub*
dtype0*
_output_shapes
: *
valueB 
в
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ў
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumSum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradbTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
љ
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeReshapePTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:	
А
Ё
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1Sum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGraddTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ї
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1ReshapeRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Х
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_depsNoOpU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1
Ї
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependencyIdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
_output_shapes
:	
А*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape
Ј
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency_1IdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1*
_output_shapes
: 
≠
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIterationNextIterationTraining/gradients/AddN_2*
_output_shapes
:	
А*
T0
ь
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatConcatV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradeTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGrad[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/Const*
T0*
N*
_output_shapes
:	
А*

Tidx0
ґ
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
€
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
data_formatNHWC*
_output_shapes	
:А*
T0
†
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_depsNoOp]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat
ƒ
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
_output_shapes
:	
А
–
kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identity\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*o
_classe
caloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
щ
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulMatMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/Enter*
_output_shapes
:	
А*
transpose_a( *
transpose_b(*
T0
∆
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Г
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1MatMulcTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( 
х
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
‘
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat
а
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
в
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat^Training/gradients/Add*
T0*
_output_shapes
:	
А*
swap_memory(
І
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	
А*
	elem_type0
ю
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ь
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_depsNoOpW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulY^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1
ƒ
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependencyIdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMula^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
_output_shapes
:	
А*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul
Ћ
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
Ђ
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
т
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1Enter\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes	
:А*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
ё
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Merge^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
Т
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/SwitchSwitch^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Training/gradients/b_count_2*
T0*"
_output_shapes
:А:А
’
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/AddAdd_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch:1kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
ч
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes	
:А
л
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3Exit]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:А
∞
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
ѓ
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/RankConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
≠
STraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modFloorModUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Rank*
_output_shapes
: *
T0
њ
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeConst^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"
      
Ѕ
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1Const^Training/gradients/Sub*
valueB"
      *
dtype0*
_output_shapes
:
Ь
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetConcatOffsetSTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
і
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceSlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape*
_output_shapes
:	
А*
Index0*
T0
Ї
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1SlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffset:1WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
_output_shapes
:	
А*
Index0*
T0
Ъ
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_depsNoOpV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceX^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1
¬
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slicea^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
_output_shapes
:	
А*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice
»
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1IdentityWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
T0*j
_class`
^\loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1*
_output_shapes
:	
А
і
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
х
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1Enter[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
а
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Merge]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
Ъ
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/SwitchSwitch]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Training/gradients/b_count_2*
T0*,
_output_shapes
:
АА:
АА
„
YTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/AddAdd^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch:1jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
АА*
T0
ъ
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationYTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
АА
о
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3Exit\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
АА
І
rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^Training/gradients/Sub*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
sourceTraining/gradients*
_output_shapes

:: 
∞
xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
џ
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(
я
nTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1s^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
ъ
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencynTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
Е
Training/gradients/AddN_3AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyjTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
N*
_output_shapes
:	
А
£
^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
с
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
я
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
N*
_output_shapes
: : *
T0
М
_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Training/gradients/b_count_2*
T0*
_output_shapes
: : 
Ё
\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddaTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
ц
fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
к
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
≠
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIterationNextIterationTraining/gradients/AddN_3*
T0*
_output_shapes
:	
А
Њ
ХTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3.Training/rnn_model/recurrent/rnn/TensorArray_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
sourceTraining/gradients*
_output_shapes

:: 
э
СTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Ц^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1
Ў
ЗTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3ХTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV39Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeСTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*,
_output_shapes
:€€€€€€€€€
А*
element_shape:
ы
ДTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpИ^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3a^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
В
МTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityЗTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3Е^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*Э
_classТ
ПМloc:@Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*,
_output_shapes
:€€€€€€€€€
А
Ы
ОTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Е^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*s
_classi
geloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
Ј
TTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutationInvertPermutation'Training/rnn_model/recurrent/rnn/concat*
T0*
_output_shapes
:
В
LTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose	TransposeМTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyTTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutation*,
_output_shapes
:
€€€€€€€€€А*
Tperm0*
T0
Ч
:Training/gradients/Training/cnn_model/Reshape_2_grad/ShapeShapeTraining/cnn_model/dense/Relu*
T0*
out_type0*
_output_shapes
:
Т
<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeReshapeLTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose:Training/gradients/Training/cnn_model/Reshape_2_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Џ
>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradReluGrad<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeTraining/cnn_model/dense/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
–
DTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradBiasAddGrad>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
ў
ITraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_depsNoOpE^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad?^Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad
п
QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*(
_output_shapes
:€€€€€€€€€А
р
STraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1IdentityDTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
T0*W
_classM
KIloc:@Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
С
>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulMatMulQTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencycnn_model/dense/kernel/read*
transpose_b(*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
М
@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1MatMulTraining/cnn_model/Reshape_1QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( *
T0
‘
HTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_depsNoOp?^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulA^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1
н
PTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulI^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А
л
RTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1I^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
∞
:Training/gradients/Training/cnn_model/Reshape_1_grad/ShapeShape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool*
_output_shapes
:*
T0*
out_type0
Ю
<Training/gradients/Training/cnn_model/Reshape_1_grad/ReshapeReshapePTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency:Training/gradients/Training/cnn_model/Reshape_1_grad/Shape*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€А
Ъ
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu6Training/cnn_model/convolution/max_pooling2d_4/MaxPool<Training/gradients/Training/cnn_model/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:€€€€€€€€€А
Ю
MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu*
T0*0
_output_shapes
:€€€€€€€€€А
о
STraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
Ж
XTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad
≥
`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*0
_output_shapes
:€€€€€€€€€А
ђ
bTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
€
MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
•
LTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ConstConst*%
valueB"      А      *
dtype0*
_output_shapes
:
С
ZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_4/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency*
paddingSAME*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ь
[Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_3/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:АА
Ъ
WTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput
Ћ
_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:€€€€€€€€€А
«
aTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*(
_output_shapes
:АА
љ
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu6Training/cnn_model/convolution/max_pooling2d_3/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency*0
_output_shapes
:€€€€€€€€€

А*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
Ю
MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu*0
_output_shapes
:€€€€€€€€€

А*
T0
о
STraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
Ж
XTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad
≥
`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*0
_output_shapes
:€€€€€€€€€

А
ђ
bTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
€
MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
•
LTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ConstConst*%
valueB"      @   А   *
dtype0*
_output_shapes
:
С
ZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_3/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ы
[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency*
paddingSAME*'
_output_shapes
:@А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ъ
WTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput
 
_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:€€€€€€€€€

@
∆
aTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@А
Љ
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu6Training/cnn_model/convolution/max_pooling2d_2/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:€€€€€€€€€@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
Э
MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu*
T0*/
_output_shapes
:€€€€€€€€€@
н
STraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
Ж
XTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad
≤
`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€@*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad
Ђ
bTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
€
MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
•
LTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ConstConst*%
valueB"          @   *
dtype0*
_output_shapes
:
С
ZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_2/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency*
paddingSAME*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ъ
[Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_1/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
: @*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ъ
WTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput
 
_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€ *
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput
≈
aTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
Љ
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu6Training/cnn_model/convolution/max_pooling2d_1/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€(( 
Э
MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu*
T0*/
_output_shapes
:€€€€€€€€€(( 
н
STraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
Ж
XTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad
≤
`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€(( 
Ђ
bTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
э
MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeNShapeN4Training/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
•
LTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
С
ZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_1/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations

ш
[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter4Training/cnn_model/convolution/max_pooling2d/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ъ
WTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput
 
_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:€€€€€€€€€((
≈
aTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
ґ
XTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu4Training/cnn_model/convolution/max_pooling2d/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€PP*
T0
Ч
KTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradReluGradXTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu*/
_output_shapes
:€€€€€€€€€PP*
T0
й
QTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradBiasAddGradKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
А
VTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_depsNoOpR^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradL^Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad
™
^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependencyIdentityKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
T0*^
_classT
RPloc:@Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:€€€€€€€€€PP
£
`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1IdentityQTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
я
KTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeNShapeNTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
£
JTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:
Й
XTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputKTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeN(cnn_model/convolution/conv2d/kernel/read^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ў
YTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTraining/cnn_model/ReshapeJTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Const^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0
Ф
UTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_depsNoOpZ^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterY^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput
¬
]Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependencyIdentityXTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:€€€€€€€€€PP
љ
_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1IdentityYTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*l
_classb
`^loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilter
Э
"Training/beta1_power/initial_valueConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ѓ
Training/beta1_power
VariableV2*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
я
Training/beta1_power/AssignAssignTraining/beta1_power"Training/beta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Т
Training/beta1_power/readIdentityTraining/beta1_power*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
Э
"Training/beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *wЊ?
Ѓ
Training/beta2_power
VariableV2*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
я
Training/beta2_power/AssignAssignTraining/beta2_power"Training/beta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Т
Training/beta2_power/readIdentityTraining/beta2_power*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
„
:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
д
(cnn_model/convolution/conv2d/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
	container *
shape:
±
/cnn_model/convolution/conv2d/kernel/Adam/AssignAssign(cnn_model/convolution/conv2d/kernel/Adam:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
ћ
-cnn_model/convolution/conv2d/kernel/Adam/readIdentity(cnn_model/convolution/conv2d/kernel/Adam*&
_output_shapes
:*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
ў
<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zerosConst*
dtype0*&
_output_shapes
:*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    
ж
*cnn_model/convolution/conv2d/kernel/Adam_1
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
	container *
shape:
Ј
1cnn_model/convolution/conv2d/kernel/Adam_1/AssignAssign*cnn_model/convolution/conv2d/kernel/Adam_1<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zeros*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
–
/cnn_model/convolution/conv2d/kernel/Adam_1/readIdentity*cnn_model/convolution/conv2d/kernel/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
ї
8cnn_model/convolution/conv2d/bias/Adam/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
»
&cnn_model/convolution/conv2d/bias/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Э
-cnn_model/convolution/conv2d/bias/Adam/AssignAssign&cnn_model/convolution/conv2d/bias/Adam8cnn_model/convolution/conv2d/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Ї
+cnn_model/convolution/conv2d/bias/Adam/readIdentity&cnn_model/convolution/conv2d/bias/Adam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:
љ
:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    
 
(cnn_model/convolution/conv2d/bias/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container 
£
/cnn_model/convolution/conv2d/bias/Adam_1/AssignAssign(cnn_model/convolution/conv2d/bias/Adam_1:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zeros*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Њ
-cnn_model/convolution/conv2d/bias/Adam_1/readIdentity(cnn_model/convolution/conv2d/bias/Adam_1*
_output_shapes
:*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
я
Lcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
Ѕ
Bcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    
”
<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0*&
_output_shapes
: 
и
*cnn_model/convolution/conv2d_1/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container *
shape: 
є
1cnn_model/convolution/conv2d_1/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_1/kernel/Adam<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
“
/cnn_model/convolution/conv2d_1/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_1/kernel/Adam*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
б
Ncnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
√
Dcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ў
>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0*&
_output_shapes
: 
к
,cnn_model/convolution/conv2d_1/kernel/Adam_1
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
њ
3cnn_model/convolution/conv2d_1/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_1/kernel/Adam_1>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
÷
1cnn_model/convolution/conv2d_1/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_1/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
њ
:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
ћ
(cnn_model/convolution/conv2d_1/bias/Adam
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
•
/cnn_model/convolution/conv2d_1/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_1/bias/Adam:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
ј
-cnn_model/convolution/conv2d_1/bias/Adam/readIdentity(cnn_model/convolution/conv2d_1/bias/Adam*
_output_shapes
: *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
Ѕ
<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
ќ
*cnn_model/convolution/conv2d_1/bias/Adam_1
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
Ђ
1cnn_model/convolution/conv2d_1/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_1/bias/Adam_1<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: 
ƒ
/cnn_model/convolution/conv2d_1/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_1/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
я
Lcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   
Ѕ
Bcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
”
<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0*&
_output_shapes
: @
и
*cnn_model/convolution/conv2d_2/kernel/Adam
VariableV2*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
є
1cnn_model/convolution/conv2d_2/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_2/kernel/Adam<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
“
/cnn_model/convolution/conv2d_2/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_2/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
б
Ncnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
√
Dcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ў
>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0*&
_output_shapes
: @
к
,cnn_model/convolution/conv2d_2/kernel/Adam_1
VariableV2*
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
	container 
њ
3cnn_model/convolution/conv2d_2/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_2/kernel/Adam_1>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
÷
1cnn_model/convolution/conv2d_2/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_2/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
њ
:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
ћ
(cnn_model/convolution/conv2d_2/bias/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container *
shape:@
•
/cnn_model/convolution/conv2d_2/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_2/bias/Adam:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
ј
-cnn_model/convolution/conv2d_2/bias/Adam/readIdentity(cnn_model/convolution/conv2d_2/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
Ѕ
<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
ќ
*cnn_model/convolution/conv2d_2/bias/Adam_1
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ђ
1cnn_model/convolution/conv2d_2/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_2/bias/Adam_1<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
ƒ
/cnn_model/convolution/conv2d_2/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_2/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
я
Lcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   А   *
dtype0*
_output_shapes
:
Ѕ
Bcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
‘
<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/Const*'
_output_shapes
:@А*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0
к
*cnn_model/convolution/conv2d_3/kernel/Adam
VariableV2*
shape:@А*
dtype0*'
_output_shapes
:@А*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container 
Ї
1cnn_model/convolution/conv2d_3/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_3/kernel/Adam<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@А*
use_locking(
”
/cnn_model/convolution/conv2d_3/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_3/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@А
б
Ncnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   А   *
dtype0*
_output_shapes
:
√
Dcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Џ
>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0*'
_output_shapes
:@А
м
,cnn_model/convolution/conv2d_3/kernel/Adam_1
VariableV2*
shape:@А*
dtype0*'
_output_shapes
:@А*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container 
ј
3cnn_model/convolution/conv2d_3/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_3/kernel/Adam_1>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@А
„
1cnn_model/convolution/conv2d_3/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_3/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@А
Ѕ
:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
ќ
(cnn_model/convolution/conv2d_3/bias/Adam
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias
¶
/cnn_model/convolution/conv2d_3/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_3/bias/Adam:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias
Ѕ
-cnn_model/convolution/conv2d_3/bias/Adam/readIdentity(cnn_model/convolution/conv2d_3/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:А
√
<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
–
*cnn_model/convolution/conv2d_3/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:А
ђ
1cnn_model/convolution/conv2d_3/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_3/bias/Adam_1<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
≈
/cnn_model/convolution/conv2d_3/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_3/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:А
я
Lcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      А      
Ѕ
Bcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    
’
<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/Const*(
_output_shapes
:АА*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0
м
*cnn_model/convolution/conv2d_4/kernel/Adam
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:АА*
dtype0*(
_output_shapes
:АА
ї
1cnn_model/convolution/conv2d_4/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_4/kernel/Adam<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros*
validate_shape(*(
_output_shapes
:АА*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
‘
/cnn_model/convolution/conv2d_4/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_4/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:АА
б
Ncnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      А      *
dtype0*
_output_shapes
:
√
Dcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
џ
>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0*(
_output_shapes
:АА
о
,cnn_model/convolution/conv2d_4/kernel/Adam_1
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:АА*
dtype0*(
_output_shapes
:АА
Ѕ
3cnn_model/convolution/conv2d_4/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_4/kernel/Adam_1>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(
Ў
1cnn_model/convolution/conv2d_4/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_4/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:АА
Ѕ
:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
ќ
(cnn_model/convolution/conv2d_4/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:А
¶
/cnn_model/convolution/conv2d_4/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_4/bias/Adam:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
Ѕ
-cnn_model/convolution/conv2d_4/bias/Adam/readIdentity(cnn_model/convolution/conv2d_4/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:А
√
<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBА*    
–
*cnn_model/convolution/conv2d_4/bias/Adam_1
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
ђ
1cnn_model/convolution/conv2d_4/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_4/bias/Adam_1<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
≈
/cnn_model/convolution/conv2d_4/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_4/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:А
є
=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
£
3cnn_model/dense/kernel/Adam/Initializer/zeros/ConstConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
С
-cnn_model/dense/kernel/Adam/Initializer/zerosFill=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensor3cnn_model/dense/kernel/Adam/Initializer/zeros/Const*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0* 
_output_shapes
:
АА
Њ
cnn_model/dense/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:
АА
ч
"cnn_model/dense/kernel/Adam/AssignAssigncnn_model/dense/kernel/Adam-cnn_model/dense/kernel/Adam/Initializer/zeros*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
Я
 cnn_model/dense/kernel/Adam/readIdentitycnn_model/dense/kernel/Adam*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
АА
ї
?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     
•
5cnn_model/dense/kernel/Adam_1/Initializer/zeros/ConstConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
/cnn_model/dense/kernel/Adam_1/Initializer/zerosFill?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor5cnn_model/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0* 
_output_shapes
:
АА
ј
cnn_model/dense/kernel/Adam_1
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *)
_class
loc:@cnn_model/dense/kernel
э
$cnn_model/dense/kernel/Adam_1/AssignAssigncnn_model/dense/kernel/Adam_1/cnn_model/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:
АА
£
"cnn_model/dense/kernel/Adam_1/readIdentitycnn_model/dense/kernel/Adam_1*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
АА
£
+cnn_model/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*'
_class
loc:@cnn_model/dense/bias*
valueBА*    
∞
cnn_model/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:А
к
 cnn_model/dense/bias/Adam/AssignAssigncnn_model/dense/bias/Adam+cnn_model/dense/bias/Adam/Initializer/zeros*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ф
cnn_model/dense/bias/Adam/readIdentitycnn_model/dense/bias/Adam*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:А
•
-cnn_model/dense/bias/Adam_1/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
≤
cnn_model/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:А
р
"cnn_model/dense/bias/Adam_1/AssignAssigncnn_model/dense/bias/Adam_1-cnn_model/dense/bias/Adam_1/Initializer/zeros*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ш
 cnn_model/dense/bias/Adam_1/readIdentitycnn_model/dense/bias/Adam_1*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:А
Ё
Ornn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      
«
Ernn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ў
?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:
АА
в
-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam
VariableV2*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА
њ
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
’
2rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/readIdentity-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
АА
я
Qrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
…
Grnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
я
Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zerosFillQrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorGrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
АА*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0
д
/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
≈
6rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/AssignAssign/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
ў
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/readIdentity/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
АА
”
Mrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:А*
dtype0*
_output_shapes
:
√
Crnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
ћ
=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zerosFillMrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorCrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:А
‘
+rnn_model/recurrent/rnn/lstm_cell/bias/Adam
VariableV2*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
≤
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam/AssignAssign+rnn_model/recurrent/rnn/lstm_cell/bias/Adam=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
 
0rnn_model/recurrent/rnn/lstm_cell/bias/Adam/readIdentity+rnn_model/recurrent/rnn/lstm_cell/bias/Adam*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:А
’
Ornn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:А*
dtype0*
_output_shapes
:
≈
Ernn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
“
?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/Const*
_output_shapes	
:А*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0
÷
-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1
VariableV2*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Є
4rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
ќ
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/readIdentity-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:А
≥
:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*&
_class
loc:@logits/dense/kernel*
valueB"      
Э
0logits/dense/kernel/Adam/Initializer/zeros/ConstConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Д
*logits/dense/kernel/Adam/Initializer/zerosFill:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensor0logits/dense/kernel/Adam/Initializer/zeros/Const*
T0*&
_class
loc:@logits/dense/kernel*

index_type0*
_output_shapes
:	А
ґ
logits/dense/kernel/Adam
VariableV2*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	А*
dtype0*
_output_shapes
:	А
к
logits/dense/kernel/Adam/AssignAssignlogits/dense/kernel/Adam*logits/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel*
validate_shape(*
_output_shapes
:	А
Х
logits/dense/kernel/Adam/readIdentitylogits/dense/kernel/Adam*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	А
µ
<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
Я
2logits/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *&
_class
loc:@logits/dense/kernel*
valueB
 *    
К
,logits/dense/kernel/Adam_1/Initializer/zerosFill<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor2logits/dense/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes
:	А*
T0*&
_class
loc:@logits/dense/kernel*

index_type0
Є
logits/dense/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes
:	А*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	А
р
!logits/dense/kernel/Adam_1/AssignAssignlogits/dense/kernel/Adam_1,logits/dense/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel
Щ
logits/dense/kernel/Adam_1/readIdentitylogits/dense/kernel/Adam_1*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	А
Ы
(logits/dense/bias/Adam/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
®
logits/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@logits/dense/bias*
	container *
shape:
Ё
logits/dense/bias/Adam/AssignAssignlogits/dense/bias/Adam(logits/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:
К
logits/dense/bias/Adam/readIdentitylogits/dense/bias/Adam*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:
Э
*logits/dense/bias/Adam_1/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
™
logits/dense/bias/Adam_1
VariableV2*$
_class
loc:@logits/dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
г
logits/dense/bias/Adam_1/AssignAssignlogits/dense/bias/Adam_1*logits/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:
О
logits/dense/bias/Adam_1/readIdentitylogits/dense/bias/Adam_1*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:
X
Training/Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
X
Training/Adam/beta2Const*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
Z
Training/Adam/epsilonConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
Ќ
BTraining/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d/kernel(cnn_model/convolution/conv2d/kernel/Adam*cnn_model/convolution/conv2d/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
use_nesterov( *&
_output_shapes
:
Є
@Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdam	ApplyAdam!cnn_model/convolution/conv2d/bias&cnn_model/convolution/conv2d/bias/Adam(cnn_model/convolution/conv2d/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
ў
DTraining/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_1/kernel*cnn_model/convolution/conv2d_1/kernel/Adam,cnn_model/convolution/conv2d_1/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
use_nesterov( *&
_output_shapes
: 
ƒ
BTraining/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_1/bias(cnn_model/convolution/conv2d_1/bias/Adam*cnn_model/convolution/conv2d_1/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
use_nesterov( *
_output_shapes
: *
use_locking( 
ў
DTraining/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_2/kernel*cnn_model/convolution/conv2d_2/kernel/Adam,cnn_model/convolution/conv2d_2/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
use_nesterov( *&
_output_shapes
: @
ƒ
BTraining/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_2/bias(cnn_model/convolution/conv2d_2/bias/Adam*cnn_model/convolution/conv2d_2/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
use_nesterov( *
_output_shapes
:@*
use_locking( 
Џ
DTraining/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_3/kernel*cnn_model/convolution/conv2d_3/kernel/Adam,cnn_model/convolution/conv2d_3/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
use_nesterov( *'
_output_shapes
:@А*
use_locking( 
≈
BTraining/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_3/bias(cnn_model/convolution/conv2d_3/bias/Adam*cnn_model/convolution/conv2d_3/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
use_nesterov( *
_output_shapes	
:А
џ
DTraining/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_4/kernel*cnn_model/convolution/conv2d_4/kernel/Adam,cnn_model/convolution/conv2d_4/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
use_nesterov( *(
_output_shapes
:АА*
use_locking( 
≈
BTraining/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_4/bias(cnn_model/convolution/conv2d_4/bias/Adam*cnn_model/convolution/conv2d_4/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
use_nesterov( *
_output_shapes	
:А
щ
5Training/Adam/update_cnn_model/dense/kernel/ApplyAdam	ApplyAdamcnn_model/dense/kernelcnn_model/dense/kernel/Adamcnn_model/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonRTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@cnn_model/dense/kernel*
use_nesterov( * 
_output_shapes
:
АА
л
3Training/Adam/update_cnn_model/dense/bias/ApplyAdam	ApplyAdamcnn_model/dense/biascnn_model/dense/bias/Adamcnn_model/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonSTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:А*
use_locking( *
T0*'
_class
loc:@cnn_model/dense/bias
ё
GTraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam	ApplyAdam(rnn_model/recurrent/rnn/lstm_cell/kernel-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3*
use_locking( *
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
АА
–
ETraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdam	ApplyAdam&rnn_model/recurrent/rnn/lstm_cell/bias+rnn_model/recurrent/rnn/lstm_cell/bias/Adam-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
use_nesterov( *
_output_shapes	
:А*
use_locking( 
ж
2Training/Adam/update_logits/dense/kernel/ApplyAdam	ApplyAdamlogits/dense/kernellogits/dense/kernel/Adamlogits/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonOTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:	А*
use_locking( *
T0*&
_class
loc:@logits/dense/kernel
Ў
0Training/Adam/update_logits/dense/bias/ApplyAdam	ApplyAdamlogits/dense/biaslogits/dense/bias/Adamlogits/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonPTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*$
_class
loc:@logits/dense/bias
њ	
Training/Adam/mulMulTraining/beta1_power/readTraining/Adam/beta1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
_output_shapes
: *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
«
Training/Adam/AssignAssignTraining/beta1_powerTraining/Adam/mul*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
Ѕ	
Training/Adam/mul_1MulTraining/beta2_power/readTraining/Adam/beta2A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
Ћ
Training/Adam/Assign_1AssignTraining/beta2_powerTraining/Adam/mul_1*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
м
Training/Adam/updateNoOp^Training/Adam/Assign^Training/Adam/Assign_1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam
Х
Training/Adam/valueConst^Training/Adam/update*'
_class
loc:@Training/global_step*
value	B :*
dtype0*
_output_shapes
: 
Ґ
Training/Adam	AssignAddTraining/global_stepTraining/Adam/value*
_output_shapes
: *
use_locking( *
T0*'
_class
loc:@Training/global_step
g
Validation/SequenceMask/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
ѓ
Validation/SequenceMask/MaxMax.validation_input_pipeline/batch_join_and_pad:4Validation/SequenceMask/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
Validation/SequenceMask/Const_1Const*
value	B : *
dtype0*
_output_shapes
: 
a
Validation/SequenceMask/Const_2Const*
dtype0*
_output_shapes
: *
value	B :
ґ
Validation/SequenceMask/RangeRangeValidation/SequenceMask/Const_1Validation/SequenceMask/MaxValidation/SequenceMask/Const_2*#
_output_shapes
:€€€€€€€€€*

Tidx0
q
&Validation/SequenceMask/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
љ
"Validation/SequenceMask/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4&Validation/SequenceMask/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

А
Validation/SequenceMask/CastCast"Validation/SequenceMask/ExpandDims*

SrcT0*
_output_shapes

:
*

DstT0
У
Validation/SequenceMask/LessLessValidation/SequenceMask/RangeValidation/SequenceMask/Cast*
T0*'
_output_shapes
:
€€€€€€€€€
Е
Validation/SequenceMask/Cast_1CastValidation/SequenceMask/Less*'
_output_shapes
:
€€€€€€€€€*

DstT0*

SrcT0

d
Validation/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
†
Validation/ExpandDims
ExpandDimsValidation/SequenceMask/Cast_1Validation/ExpandDims/dim*+
_output_shapes
:
€€€€€€€€€*

Tdim0*
T0
{
"Validation/cnn_model/Reshape/shapeConst*%
valueB"€€€€P   P      *
dtype0*
_output_shapes
:
√
Validation/cnn_model/ReshapeReshape.validation_input_pipeline/batch_join_and_pad:2"Validation/cnn_model/Reshape/shape*/
_output_shapes
:€€€€€€€€€PP*
T0*
Tshape0
Ж
5Validation/cnn_model/convolution/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
®
.Validation/cnn_model/convolution/conv2d/Conv2DConv2DValidation/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€PP
г
/Validation/cnn_model/convolution/conv2d/BiasAddBiasAdd.Validation/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€PP
Я
,Validation/cnn_model/convolution/conv2d/ReluRelu/Validation/cnn_model/convolution/conv2d/BiasAdd*/
_output_shapes
:€€€€€€€€€PP*
T0
ы
6Validation/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool,Validation/cnn_model/convolution/conv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€((
И
7Validation/cnn_model/convolution/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
∆
0Validation/cnn_model/convolution/conv2d_1/Conv2DConv2D6Validation/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
paddingSAME*/
_output_shapes
:€€€€€€€€€(( *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
й
1Validation/cnn_model/convolution/conv2d_1/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€(( 
£
.Validation/cnn_model/convolution/conv2d_1/ReluRelu1Validation/cnn_model/convolution/conv2d_1/BiasAdd*/
_output_shapes
:€€€€€€€€€(( *
T0
€
8Validation/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€ 
И
7Validation/cnn_model/convolution/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
»
0Validation/cnn_model/convolution/conv2d_2/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:€€€€€€€€€@
й
1Validation/cnn_model/convolution/conv2d_2/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€@
£
.Validation/cnn_model/convolution/conv2d_2/ReluRelu1Validation/cnn_model/convolution/conv2d_2/BiasAdd*
T0*/
_output_shapes
:€€€€€€€€€@
€
8Validation/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_2/Relu*
ksize
*
paddingSAME*/
_output_shapes
:€€€€€€€€€

@*
T0*
data_formatNHWC*
strides

И
7Validation/cnn_model/convolution/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
…
0Validation/cnn_model/convolution/conv2d_3/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*0
_output_shapes
:€€€€€€€€€

А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
к
1Validation/cnn_model/convolution/conv2d_3/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€

А
§
.Validation/cnn_model/convolution/conv2d_3/ReluRelu1Validation/cnn_model/convolution/conv2d_3/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€

А
А
8Validation/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_3/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:€€€€€€€€€А
И
7Validation/cnn_model/convolution/conv2d_4/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
…
0Validation/cnn_model/convolution/conv2d_4/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*0
_output_shapes
:€€€€€€€€€А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
к
1Validation/cnn_model/convolution/conv2d_4/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:€€€€€€€€€А
§
.Validation/cnn_model/convolution/conv2d_4/ReluRelu1Validation/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:€€€€€€€€€А
А
8Validation/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_4/Relu*
ksize
*
paddingSAME*0
_output_shapes
:€€€€€€€€€А*
T0*
data_formatNHWC*
strides

u
$Validation/cnn_model/Reshape_1/shapeConst*
valueB"€€€€ 	  *
dtype0*
_output_shapes
:
 
Validation/cnn_model/Reshape_1Reshape8Validation/cnn_model/convolution/max_pooling2d_4/MaxPool$Validation/cnn_model/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Ѕ
!Validation/cnn_model/dense/MatMulMatMulValidation/cnn_model/Reshape_1cnn_model/dense/kernel/read*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( 
µ
"Validation/cnn_model/dense/BiasAddBiasAdd!Validation/cnn_model/dense/MatMulcnn_model/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
~
Validation/cnn_model/dense/ReluRelu"Validation/cnn_model/dense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
y
$Validation/cnn_model/Reshape_2/shapeConst*!
valueB"
   €€€€   *
dtype0*
_output_shapes
:
µ
Validation/cnn_model/Reshape_2ReshapeValidation/cnn_model/dense/Relu$Validation/cnn_model/Reshape_2/shape*
T0*
Tshape0*,
_output_shapes
:
€€€€€€€€€А
i
Validation/SequenceMask_1/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
≥
Validation/SequenceMask_1/MaxMax.validation_input_pipeline/batch_join_and_pad:4Validation/SequenceMask_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
c
!Validation/SequenceMask_1/Const_1Const*
value	B : *
dtype0*
_output_shapes
: 
c
!Validation/SequenceMask_1/Const_2Const*
dtype0*
_output_shapes
: *
value	B :
Њ
Validation/SequenceMask_1/RangeRange!Validation/SequenceMask_1/Const_1Validation/SequenceMask_1/Max!Validation/SequenceMask_1/Const_2*#
_output_shapes
:€€€€€€€€€*

Tidx0
s
(Validation/SequenceMask_1/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ѕ
$Validation/SequenceMask_1/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4(Validation/SequenceMask_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

Д
Validation/SequenceMask_1/CastCast$Validation/SequenceMask_1/ExpandDims*

SrcT0*
_output_shapes

:
*

DstT0
Щ
Validation/SequenceMask_1/LessLessValidation/SequenceMask_1/RangeValidation/SequenceMask_1/Cast*
T0*'
_output_shapes
:
€€€€€€€€€
Й
 Validation/SequenceMask_1/Cast_1CastValidation/SequenceMask_1/Less*

SrcT0
*'
_output_shapes
:
€€€€€€€€€*

DstT0
f
Validation/ExpandDims_1/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
¶
Validation/ExpandDims_1
ExpandDims Validation/SequenceMask_1/Cast_1Validation/ExpandDims_1/dim*

Tdim0*
T0*+
_output_shapes
:
€€€€€€€€€
i
'Validation/rnn_model/recurrent/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
p
.Validation/rnn_model/recurrent/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
p
.Validation/rnn_model/recurrent/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
в
(Validation/rnn_model/recurrent/rnn/rangeRange.Validation/rnn_model/recurrent/rnn/range/start'Validation/rnn_model/recurrent/rnn/Rank.Validation/rnn_model/recurrent/rnn/range/delta*
_output_shapes
:*

Tidx0
Г
2Validation/rnn_model/recurrent/rnn/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB"       
p
.Validation/rnn_model/recurrent/rnn/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
э
)Validation/rnn_model/recurrent/rnn/concatConcatV22Validation/rnn_model/recurrent/rnn/concat/values_0(Validation/rnn_model/recurrent/rnn/range.Validation/rnn_model/recurrent/rnn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
»
,Validation/rnn_model/recurrent/rnn/transpose	TransposeValidation/cnn_model/Reshape_2)Validation/rnn_model/recurrent/rnn/concat*,
_output_shapes
:€€€€€€€€€
А*
Tperm0*
T0
У
2Validation/rnn_model/recurrent/rnn/sequence_lengthIdentity.validation_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:

Д
:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
valueB:
*
dtype0*
_output_shapes
:
З
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
valueB:А*
dtype0*
_output_shapes
:
В
@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
љ
;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV2:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Е
@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
э
:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	
А
Ж
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
valueB:
*
dtype0*
_output_shapes
:
З
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
dtype0*
_output_shapes
:*
valueB:А
Ж
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
valueB:
*
dtype0*
_output_shapes
:
З
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
dtype0*
_output_shapes
:*
valueB:А
Д
BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
√
=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
З
BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Г
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	
А
Ж
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
valueB:
*
dtype0*
_output_shapes
:
З
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
dtype0*
_output_shapes
:*
valueB:А
r
(Validation/rnn_model/recurrent/rnn/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
r
(Validation/rnn_model/recurrent/rnn/stackConst*
valueB:
*
dtype0*
_output_shapes
:
™
(Validation/rnn_model/recurrent/rnn/EqualEqual(Validation/rnn_model/recurrent/rnn/Shape(Validation/rnn_model/recurrent/rnn/stack*
T0*
_output_shapes
:
r
(Validation/rnn_model/recurrent/rnn/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ґ
&Validation/rnn_model/recurrent/rnn/AllAll(Validation/rnn_model/recurrent/rnn/Equal(Validation/rnn_model/recurrent/rnn/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
¬
/Validation/rnn_model/recurrent/rnn/Assert/ConstConst*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
В
1Validation/rnn_model/recurrent/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
 
7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
И
7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
»
0Validation/rnn_model/recurrent/rnn/Assert/AssertAssert&Validation/rnn_model/recurrent/rnn/All7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0(Validation/rnn_model/recurrent/rnn/stack7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2(Validation/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
∆
.Validation/rnn_model/recurrent/rnn/CheckSeqLenIdentity2Validation/rnn_model/recurrent/rnn/sequence_length1^Validation/rnn_model/recurrent/rnn/Assert/Assert*
T0*
_output_shapes
:

Ц
*Validation/rnn_model/recurrent/rnn/Shape_1Shape,Validation/rnn_model/recurrent/rnn/transpose*
_output_shapes
:*
T0*
out_type0
А
6Validation/rnn_model/recurrent/rnn/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
В
8Validation/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
В
8Validation/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
™
0Validation/rnn_model/recurrent/rnn/strided_sliceStridedSlice*Validation/rnn_model/recurrent/rnn/Shape_16Validation/rnn_model/recurrent/rnn/strided_slice/stack8Validation/rnn_model/recurrent/rnn/strided_slice/stack_18Validation/rnn_model/recurrent/rnn/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
t
*Validation/rnn_model/recurrent/rnn/Const_1Const*
valueB:
*
dtype0*
_output_shapes
:
u
*Validation/rnn_model/recurrent/rnn/Const_2Const*
valueB:А*
dtype0*
_output_shapes
:
r
0Validation/rnn_model/recurrent/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ы
+Validation/rnn_model/recurrent/rnn/concat_1ConcatV2*Validation/rnn_model/recurrent/rnn/Const_1*Validation/rnn_model/recurrent/rnn/Const_20Validation/rnn_model/recurrent/rnn/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
s
.Validation/rnn_model/recurrent/rnn/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
…
(Validation/rnn_model/recurrent/rnn/zerosFill+Validation/rnn_model/recurrent/rnn/concat_1.Validation/rnn_model/recurrent/rnn/zeros/Const*
_output_shapes
:	
А*
T0*

index_type0
t
*Validation/rnn_model/recurrent/rnn/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
«
&Validation/rnn_model/recurrent/rnn/MinMin.Validation/rnn_model/recurrent/rnn/CheckSeqLen*Validation/rnn_model/recurrent/rnn/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
t
*Validation/rnn_model/recurrent/rnn/Const_4Const*
dtype0*
_output_shapes
:*
valueB: 
«
&Validation/rnn_model/recurrent/rnn/MaxMax.Validation/rnn_model/recurrent/rnn/CheckSeqLen*Validation/rnn_model/recurrent/rnn/Const_4*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
i
'Validation/rnn_model/recurrent/rnn/timeConst*
dtype0*
_output_shapes
: *
value	B : 
÷
.Validation/rnn_model/recurrent/rnn/TensorArrayTensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*
identical_element_shapes(*N
tensor_array_name97Validation/rnn_model/recurrent/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:	
А*
clear_after_read(*
dynamic_size( 
„
0Validation/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*M
tensor_array_name86Validation/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	
А*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
І
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape,Validation/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
У
IValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Х
KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Х
KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
З
CValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeIValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackKValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
Г
AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Г
AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ј
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRangeAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startCValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
®
]Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV30Validation/rnn_model/recurrent/rnn/TensorArray_1;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/range,Validation/rnn_model/recurrent/rnn/transpose2Validation/rnn_model/recurrent/rnn/TensorArray_1:1*
T0*?
_class5
31loc:@Validation/rnn_model/recurrent/rnn/transpose*
_output_shapes
: 
n
,Validation/rnn_model/recurrent/rnn/Maximum/xConst*
dtype0*
_output_shapes
: *
value	B :
ђ
*Validation/rnn_model/recurrent/rnn/MaximumMaximum,Validation/rnn_model/recurrent/rnn/Maximum/x&Validation/rnn_model/recurrent/rnn/Max*
T0*
_output_shapes
: 
і
*Validation/rnn_model/recurrent/rnn/MinimumMinimum0Validation/rnn_model/recurrent/rnn/strided_slice*Validation/rnn_model/recurrent/rnn/Maximum*
T0*
_output_shapes
: 
|
:Validation/rnn_model/recurrent/rnn/while/iteration_counterConst*
dtype0*
_output_shapes
: *
value	B : 
К
.Validation/rnn_model/recurrent/rnn/while/EnterEnter:Validation/rnn_model/recurrent/rnn/while/iteration_counter*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
щ
0Validation/rnn_model/recurrent/rnn/while/Enter_1Enter'Validation/rnn_model/recurrent/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
В
0Validation/rnn_model/recurrent/rnn/while/Enter_2Enter0Validation/rnn_model/recurrent/rnn/TensorArray:1*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
Х
0Validation/rnn_model/recurrent/rnn/while/Enter_3Enter:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
parallel_iterations *
_output_shapes
:	
А*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
Ч
0Validation/rnn_model/recurrent/rnn/while/Enter_4Enter<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	
А*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ћ
.Validation/rnn_model/recurrent/rnn/while/MergeMerge.Validation/rnn_model/recurrent/rnn/while/Enter6Validation/rnn_model/recurrent/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
—
0Validation/rnn_model/recurrent/rnn/while/Merge_1Merge0Validation/rnn_model/recurrent/rnn/while/Enter_18Validation/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
—
0Validation/rnn_model/recurrent/rnn/while/Merge_2Merge0Validation/rnn_model/recurrent/rnn/while/Enter_28Validation/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
Џ
0Validation/rnn_model/recurrent/rnn/while/Merge_3Merge0Validation/rnn_model/recurrent/rnn/while/Enter_38Validation/rnn_model/recurrent/rnn/while/NextIteration_3*
N*!
_output_shapes
:	
А: *
T0
Џ
0Validation/rnn_model/recurrent/rnn/while/Merge_4Merge0Validation/rnn_model/recurrent/rnn/while/Enter_48Validation/rnn_model/recurrent/rnn/while/NextIteration_4*
N*!
_output_shapes
:	
А: *
T0
ї
-Validation/rnn_model/recurrent/rnn/while/LessLess.Validation/rnn_model/recurrent/rnn/while/Merge3Validation/rnn_model/recurrent/rnn/while/Less/Enter*
_output_shapes
: *
T0
Е
3Validation/rnn_model/recurrent/rnn/while/Less/EnterEnter0Validation/rnn_model/recurrent/rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ѕ
/Validation/rnn_model/recurrent/rnn/while/Less_1Less0Validation/rnn_model/recurrent/rnn/while/Merge_15Validation/rnn_model/recurrent/rnn/while/Less_1/Enter*
_output_shapes
: *
T0
Б
5Validation/rnn_model/recurrent/rnn/while/Less_1/EnterEnter*Validation/rnn_model/recurrent/rnn/Minimum*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
є
3Validation/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd-Validation/rnn_model/recurrent/rnn/while/Less/Validation/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 
К
1Validation/rnn_model/recurrent/rnn/while/LoopCondLoopCond3Validation/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 
В
/Validation/rnn_model/recurrent/rnn/while/SwitchSwitch.Validation/rnn_model/recurrent/rnn/while/Merge1Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/while/Merge*
_output_shapes
: : 
И
1Validation/rnn_model/recurrent/rnn/while/Switch_1Switch0Validation/rnn_model/recurrent/rnn/while/Merge_11Validation/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_1
И
1Validation/rnn_model/recurrent/rnn/while/Switch_2Switch0Validation/rnn_model/recurrent/rnn/while/Merge_21Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_2*
_output_shapes
: : 
Ъ
1Validation/rnn_model/recurrent/rnn/while/Switch_3Switch0Validation/rnn_model/recurrent/rnn/while/Merge_31Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_3**
_output_shapes
:	
А:	
А
Ъ
1Validation/rnn_model/recurrent/rnn/while/Switch_4Switch0Validation/rnn_model/recurrent/rnn/while/Merge_41Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_4**
_output_shapes
:	
А:	
А
С
1Validation/rnn_model/recurrent/rnn/while/IdentityIdentity1Validation/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 
Х
3Validation/rnn_model/recurrent/rnn/while/Identity_1Identity3Validation/rnn_model/recurrent/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
Х
3Validation/rnn_model/recurrent/rnn/while/Identity_2Identity3Validation/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
Ю
3Validation/rnn_model/recurrent/rnn/while/Identity_3Identity3Validation/rnn_model/recurrent/rnn/while/Switch_3:1*
T0*
_output_shapes
:	
А
Ю
3Validation/rnn_model/recurrent/rnn/while/Identity_4Identity3Validation/rnn_model/recurrent/rnn/wh