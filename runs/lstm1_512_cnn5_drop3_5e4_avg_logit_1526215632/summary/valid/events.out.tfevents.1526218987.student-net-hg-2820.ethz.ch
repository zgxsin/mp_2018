       БK"	  └:ЙоAbrain.Event:2ЈкуSТ%     Ышo┴	§п└:ЙоA"┘╦
Ћ
,training_input_pipeline/input_producer/ConstConst*┤

valueф
BД
(B../train/dataTrain_1.tfrecordsB../train/dataTrain_2.tfrecordsB../train/dataTrain_3.tfrecordsB../train/dataTrain_4.tfrecordsB../train/dataTrain_5.tfrecordsB../train/dataTrain_6.tfrecordsB../train/dataTrain_7.tfrecordsB../train/dataTrain_8.tfrecordsB../train/dataTrain_9.tfrecordsB../train/dataTrain_10.tfrecordsB../train/dataTrain_11.tfrecordsB../train/dataTrain_12.tfrecordsB../train/dataTrain_13.tfrecordsB../train/dataTrain_14.tfrecordsB../train/dataTrain_15.tfrecordsB../train/dataTrain_16.tfrecordsB../train/dataTrain_17.tfrecordsB../train/dataTrain_18.tfrecordsB../train/dataTrain_19.tfrecordsB../train/dataTrain_20.tfrecordsB../train/dataTrain_21.tfrecordsB../train/dataTrain_22.tfrecordsB../train/dataTrain_23.tfrecordsB../train/dataTrain_24.tfrecordsB../train/dataTrain_25.tfrecordsB../train/dataTrain_26.tfrecordsB../train/dataTrain_27.tfrecordsB../train/dataTrain_28.tfrecordsB../train/dataTrain_29.tfrecordsB../train/dataTrain_30.tfrecordsB../train/dataTrain_31.tfrecordsB../train/dataTrain_32.tfrecordsB../train/dataTrain_33.tfrecordsB../train/dataTrain_34.tfrecordsB../train/dataTrain_35.tfrecordsB../train/dataTrain_36.tfrecordsB../train/dataTrain_37.tfrecordsB../train/dataTrain_38.tfrecordsB../train/dataTrain_39.tfrecordsB../train/dataTrain_40.tfrecords*
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
╣
.training_input_pipeline/input_producer/GreaterGreater+training_input_pipeline/input_producer/Size0training_input_pipeline/input_producer/Greater/y*
T0*
_output_shapes
: 
ф
3training_input_pipeline/input_producer/Assert/ConstConst*
dtype0*
_output_shapes
: *G
value>B< B6string_input_producer requires a non-null input tensor
▓
;training_input_pipeline/input_producer/Assert/Assert/data_0Const*
dtype0*
_output_shapes
: *G
value>B< B6string_input_producer requires a non-null input tensor
╚
4training_input_pipeline/input_producer/Assert/AssertAssert.training_input_pipeline/input_producer/Greater;training_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
┼
/training_input_pipeline/input_producer/IdentityIdentity,training_input_pipeline/input_producer/Const5^training_input_pipeline/input_producer/Assert/Assert*
T0*
_output_shapes
:(
┤
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
ъ
:training_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
shared_name *
dtype0	*
_output_shapes
: *
	container *
shape: 
█
Atraining_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign:training_input_pipeline/input_producer/limit_epochs/epochs9training_input_pipeline/input_producer/limit_epochs/Const*
use_locking(*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
validate_shape(*
_output_shapes
: 
э
?training_input_pipeline/input_producer/limit_epochs/epochs/readIdentity:training_input_pipeline/input_producer/limit_epochs/epochs*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 
Ѓ
=training_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo:training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs
┌
3training_input_pipeline/input_producer/limit_epochsIdentity4training_input_pipeline/input_producer/RandomShuffle>^training_input_pipeline/input_producer/limit_epochs/CountUpTo*
T0*
_output_shapes
:(
Ф
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
т
Atraining_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2&training_input_pipeline/input_producer3training_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms         
њ
;training_input_pipeline/input_producer/input_producer_CloseQueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues( 
ћ
=training_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues(
Ѕ
:training_input_pipeline/input_producer/input_producer_SizeQueueSizeV2&training_input_pipeline/input_producer*
_output_shapes
: 
б
.training_input_pipeline/input_producer/ToFloatCast:training_input_pipeline/input_producer/input_producer_Size*
_output_shapes
: *

DstT0*

SrcT0
q
,training_input_pipeline/input_producer/mul/yConst*
valueB
 *   =*
dtype0*
_output_shapes
: 
░
*training_input_pipeline/input_producer/mulMul.training_input_pipeline/input_producer/ToFloat,training_input_pipeline/input_producer/mul/y*
_output_shapes
: *
T0
║
?training_input_pipeline/input_producer/fraction_of_32_full/tagsConst*K
valueBB@ B:training_input_pipeline/input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 
┘
:training_input_pipeline/input_producer/fraction_of_32_fullScalarSummary?training_input_pipeline/input_producer/fraction_of_32_full/tags*training_input_pipeline/input_producer/mul*
T0*
_output_shapes
: 
ћ
(training_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
а
$training_input_pipeline/ReaderReadV2ReaderReadV2(training_input_pipeline/TFRecordReaderV2&training_input_pipeline/input_producer*
_output_shapes
: : 
ї
Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
ј
Ktraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
╦
Єtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
╣
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
║
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
Й
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
╝
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
┼
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
┴
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
ф
itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Ѓ
^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample&training_input_pipeline/ReaderReadV2:1Єtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptystraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstKtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :         :         :         :         *
Tcontext_dense
2		*
Ncontext_dense*$
feature_list_dense_types
2*
Nfeature_list_sparse *
Ncontext_sparse 
Э
2training_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
Щ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
Щ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
Щ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
p
.training_input_pipeline/TFRecordDecoding/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
С
,training_input_pipeline/TFRecordDecoding/subSub^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample.training_input_pipeline/TFRecordDecoding/sub/y*
T0	*
_output_shapes
: 
╩
0training_input_pipeline/TFRecordDecoding/ToInt32Cast`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Ј
6training_input_pipeline/TFRecordDecoding/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
№
0training_input_pipeline/TFRecordDecoding/ReshapeReshape2training_input_pipeline/TFRecordDecoding/DecodeRaw6training_input_pipeline/TFRecordDecoding/Reshape/shape*/
_output_shapes
:         PP*
T0*
Tshape0
│
0training_input_pipeline/TFRecordDecoding/ToFloatCast0training_input_pipeline/TFRecordDecoding/Reshape*/
_output_shapes
:         PP*

DstT0*

SrcT0
Љ
8training_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
ш
2training_input_pipeline/TFRecordDecoding/Reshape_1Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_18training_input_pipeline/TFRecordDecoding/Reshape_1/shape*/
_output_shapes
:         PP*
T0*
Tshape0
и
2training_input_pipeline/TFRecordDecoding/ToFloat_1Cast2training_input_pipeline/TFRecordDecoding/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Љ
8training_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
ш
2training_input_pipeline/TFRecordDecoding/Reshape_2Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_28training_input_pipeline/TFRecordDecoding/Reshape_2/shape*/
_output_shapes
:         PP*
T0*
Tshape0
и
2training_input_pipeline/TFRecordDecoding/ToFloat_2Cast2training_input_pipeline/TFRecordDecoding/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0
}
:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
У
8training_input_pipeline/TFRecordDecoding/Reshape_3/shapePack0training_input_pipeline/TFRecordDecoding/ToInt32:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
Ь
2training_input_pipeline/TFRecordDecoding/Reshape_3Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_38training_input_pipeline/TFRecordDecoding/Reshape_3/shape*(
_output_shapes
:         ┤*
T0*
Tshape0
ў
?training_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ш
-training_input_pipeline/TFRecordDecoding/MeanMean0training_input_pipeline/TFRecordDecoding/ToFloat?training_input_pipeline/TFRecordDecoding/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
л
.training_input_pipeline/TFRecordDecoding/sub_1Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:         PP
Б
/training_input_pipeline/TFRecordDecoding/SquareSquare.training_input_pipeline/TFRecordDecoding/sub_1*
T0*/
_output_shapes
:         PP
џ
Atraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
щ
/training_input_pipeline/TFRecordDecoding/Mean_1Mean/training_input_pipeline/TFRecordDecoding/SquareAtraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Ќ
-training_input_pipeline/TFRecordDecoding/SqrtSqrt/training_input_pipeline/TFRecordDecoding/Mean_1*
T0*&
_output_shapes
:
w
2training_input_pipeline/TFRecordDecoding/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
¤
0training_input_pipeline/TFRecordDecoding/MaximumMaximum-training_input_pipeline/TFRecordDecoding/Sqrt2training_input_pipeline/TFRecordDecoding/Maximum/y*
T0*&
_output_shapes
:
л
.training_input_pipeline/TFRecordDecoding/sub_2Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:         PP
О
0training_input_pipeline/TFRecordDecoding/truedivRealDiv.training_input_pipeline/TFRecordDecoding/sub_20training_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:         PP
ќ
*training_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
ц
&training_input_pipeline/ReaderReadV2_1ReaderReadV2*training_input_pipeline/TFRecordReaderV2_1&training_input_pipeline/input_producer*
_output_shapes
: : 
ј
Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
љ
Mtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
═
Ѕtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
dtype0*
_output_shapes
: *
valueB 
╗
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
╝
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
└
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Й
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
К
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
├
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
г
ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Џ
`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_1:1Ѕtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :         :         :         :         *
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
Ч
4training_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
r
0training_input_pipeline/TFRecordDecoding_1/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
Ж
.training_input_pipeline/TFRecordDecoding_1/subSub`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_1/sub/y*
T0	*
_output_shapes
: 
╬
2training_input_pipeline/TFRecordDecoding_1/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Љ
8training_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ш
2training_input_pipeline/TFRecordDecoding_1/ReshapeReshape4training_input_pipeline/TFRecordDecoding_1/DecodeRaw8training_input_pipeline/TFRecordDecoding_1/Reshape/shape*/
_output_shapes
:         PP*
T0*
Tshape0
и
2training_input_pipeline/TFRecordDecoding_1/ToFloatCast2training_input_pipeline/TFRecordDecoding_1/Reshape*/
_output_shapes
:         PP*

DstT0*

SrcT0
Њ
:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4training_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4training_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Њ
:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
ч
4training_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*/
_output_shapes
:         PP*
T0*
Tshape0
╗
4training_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0

<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
Ь
:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_1/ToInt32<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
З
4training_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*(
_output_shapes
:         ┤*
T0*
Tshape0
џ
Atraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ч
/training_input_pipeline/TFRecordDecoding_1/MeanMean2training_input_pipeline/TFRecordDecoding_1/ToFloatAtraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
о
0training_input_pipeline/TFRecordDecoding_1/sub_1Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*/
_output_shapes
:         PP*
T0
Д
1training_input_pipeline/TFRecordDecoding_1/SquareSquare0training_input_pipeline/TFRecordDecoding_1/sub_1*/
_output_shapes
:         PP*
T0
ю
Ctraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
 
1training_input_pipeline/TFRecordDecoding_1/Mean_1Mean1training_input_pipeline/TFRecordDecoding_1/SquareCtraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Џ
/training_input_pipeline/TFRecordDecoding_1/SqrtSqrt1training_input_pipeline/TFRecordDecoding_1/Mean_1*&
_output_shapes
:*
T0
y
4training_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
Н
2training_input_pipeline/TFRecordDecoding_1/MaximumMaximum/training_input_pipeline/TFRecordDecoding_1/Sqrt4training_input_pipeline/TFRecordDecoding_1/Maximum/y*
T0*&
_output_shapes
:
о
0training_input_pipeline/TFRecordDecoding_1/sub_2Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*/
_output_shapes
:         PP*
T0
П
2training_input_pipeline/TFRecordDecoding_1/truedivRealDiv0training_input_pipeline/TFRecordDecoding_1/sub_22training_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:         PP
ќ
*training_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
ц
&training_input_pipeline/ReaderReadV2_2ReaderReadV2*training_input_pipeline/TFRecordReaderV2_2&training_input_pipeline/input_producer*
_output_shapes
: : 
ј
Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
љ
Mtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
═
Ѕtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
╗
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
╝
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
└
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Й
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
К
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
├
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
г
ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Џ
`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_2:1Ѕtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :         :         :         :         *
Tcontext_dense
2		*
Ncontext_dense*$
feature_list_dense_types
2*
Nfeature_list_sparse *
Ncontext_sparse 
Ч
4training_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
r
0training_input_pipeline/TFRecordDecoding_2/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ж
.training_input_pipeline/TFRecordDecoding_2/subSub`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_2/sub/y*
T0	*
_output_shapes
: 
╬
2training_input_pipeline/TFRecordDecoding_2/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Љ
8training_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ш
2training_input_pipeline/TFRecordDecoding_2/ReshapeReshape4training_input_pipeline/TFRecordDecoding_2/DecodeRaw8training_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
и
2training_input_pipeline/TFRecordDecoding_2/ToFloatCast2training_input_pipeline/TFRecordDecoding_2/Reshape*

SrcT0*/
_output_shapes
:         PP*

DstT0
Њ
:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4training_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4training_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Њ
:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4training_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4training_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_2*/
_output_shapes
:         PP*

DstT0*

SrcT0

<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
Ь
:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_2/ToInt32<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
З
4training_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
џ
Atraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ч
/training_input_pipeline/TFRecordDecoding_2/MeanMean2training_input_pipeline/TFRecordDecoding_2/ToFloatAtraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
о
0training_input_pipeline/TFRecordDecoding_2/sub_1Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*/
_output_shapes
:         PP*
T0
Д
1training_input_pipeline/TFRecordDecoding_2/SquareSquare0training_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:         PP
ю
Ctraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
 
1training_input_pipeline/TFRecordDecoding_2/Mean_1Mean1training_input_pipeline/TFRecordDecoding_2/SquareCtraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Џ
/training_input_pipeline/TFRecordDecoding_2/SqrtSqrt1training_input_pipeline/TFRecordDecoding_2/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *й7є5
Н
2training_input_pipeline/TFRecordDecoding_2/MaximumMaximum/training_input_pipeline/TFRecordDecoding_2/Sqrt4training_input_pipeline/TFRecordDecoding_2/Maximum/y*&
_output_shapes
:*
T0
о
0training_input_pipeline/TFRecordDecoding_2/sub_2Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:         PP
П
2training_input_pipeline/TFRecordDecoding_2/truedivRealDiv0training_input_pipeline/TFRecordDecoding_2/sub_22training_input_pipeline/TFRecordDecoding_2/Maximum*
T0*/
_output_shapes
:         PP
ќ
*training_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
ц
&training_input_pipeline/ReaderReadV2_3ReaderReadV2*training_input_pipeline/TFRecordReaderV2_3&training_input_pipeline/input_producer*
_output_shapes
: : 
ј
Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
љ
Mtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
═
Ѕtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
╗
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
╝
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
└
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Bdepth
Й
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
К
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
├
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
г
ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Џ
`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_3:1Ѕtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :         :         :         :         *
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
Ч
4training_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
r
0training_input_pipeline/TFRecordDecoding_3/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ж
.training_input_pipeline/TFRecordDecoding_3/subSub`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_3/sub/y*
T0	*
_output_shapes
: 
╬
2training_input_pipeline/TFRecordDecoding_3/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Љ
8training_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ш
2training_input_pipeline/TFRecordDecoding_3/ReshapeReshape4training_input_pipeline/TFRecordDecoding_3/DecodeRaw8training_input_pipeline/TFRecordDecoding_3/Reshape/shape*/
_output_shapes
:         PP*
T0*
Tshape0
и
2training_input_pipeline/TFRecordDecoding_3/ToFloatCast2training_input_pipeline/TFRecordDecoding_3/Reshape*

SrcT0*/
_output_shapes
:         PP*

DstT0
Њ
:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4training_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4training_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Њ
:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4training_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4training_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0

<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
Ь
:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_3/ToInt32<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
З
4training_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
џ
Atraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ч
/training_input_pipeline/TFRecordDecoding_3/MeanMean2training_input_pipeline/TFRecordDecoding_3/ToFloatAtraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
о
0training_input_pipeline/TFRecordDecoding_3/sub_1Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:         PP
Д
1training_input_pipeline/TFRecordDecoding_3/SquareSquare0training_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:         PP
ю
Ctraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
 
1training_input_pipeline/TFRecordDecoding_3/Mean_1Mean1training_input_pipeline/TFRecordDecoding_3/SquareCtraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Џ
/training_input_pipeline/TFRecordDecoding_3/SqrtSqrt1training_input_pipeline/TFRecordDecoding_3/Mean_1*&
_output_shapes
:*
T0
y
4training_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
Н
2training_input_pipeline/TFRecordDecoding_3/MaximumMaximum/training_input_pipeline/TFRecordDecoding_3/Sqrt4training_input_pipeline/TFRecordDecoding_3/Maximum/y*
T0*&
_output_shapes
:
о
0training_input_pipeline/TFRecordDecoding_3/sub_2Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*/
_output_shapes
:         PP*
T0
П
2training_input_pipeline/TFRecordDecoding_3/truedivRealDiv0training_input_pipeline/TFRecordDecoding_3/sub_22training_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:         PP
r
0training_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Х
=training_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
capacity└*
	container *
_output_shapes
: *
component_types

2	*u
shapesk
i:         PP: :         PP:         PP: :         ┤*
shared_name 
Щ
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue2training_input_pipeline/TFRecordDecoding/ToFloat_1,training_input_pipeline/TFRecordDecoding/sub0training_input_pipeline/TFRecordDecoding/truediv2training_input_pipeline/TFRecordDecoding/ToFloat_20training_input_pipeline/TFRecordDecoding/ToInt322training_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms         
ѕ
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_1/ToFloat_1.training_input_pipeline/TFRecordDecoding_1/sub2training_input_pipeline/TFRecordDecoding_1/truediv4training_input_pipeline/TFRecordDecoding_1/ToFloat_22training_input_pipeline/TFRecordDecoding_1/ToInt324training_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms         
ѕ
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_2/ToFloat_1.training_input_pipeline/TFRecordDecoding_2/sub2training_input_pipeline/TFRecordDecoding_2/truediv4training_input_pipeline/TFRecordDecoding_2/ToFloat_22training_input_pipeline/TFRecordDecoding_2/ToInt324training_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms         
ѕ
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_3/ToFloat_1.training_input_pipeline/TFRecordDecoding_3/sub2training_input_pipeline/TFRecordDecoding_3/truediv4training_input_pipeline/TFRecordDecoding_3/ToFloat_22training_input_pipeline/TFRecordDecoding_3/ToInt324training_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms         
▒
Ctraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
│
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
е
Btraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
«
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
 *═╠L;
╝
.training_input_pipeline/batch_join_and_pad/mulMul2training_input_pipeline/batch_join_and_pad/ToFloat0training_input_pipeline/batch_join_and_pad/mul/y*
_output_shapes
: *
T0
─
Dtraining_input_pipeline/batch_join_and_pad/fraction_of_320_full/tagsConst*P
valueGBE B?training_input_pipeline/batch_join_and_pad/fraction_of_320_full*
dtype0*
_output_shapes
: 
у
?training_input_pipeline/batch_join_and_pad/fraction_of_320_fullScalarSummaryDtraining_input_pipeline/batch_join_and_pad/fraction_of_320_full/tags.training_input_pipeline/batch_join_and_pad/mul*
T0*
_output_shapes
: 
n
,training_input_pipeline/batch_join_and_pad/nConst*
dtype0*
_output_shapes
: *
value	B :
Ђ
*training_input_pipeline/batch_join_and_padQueueDequeueManyV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue,training_input_pipeline/batch_join_and_pad/n*

timeout_ms         *Ќ
_output_shapesё
Ђ:         PP::         PP:         PP::         ┤*
component_types

2	
З
.validation_input_pipeline/input_producer/ConstConst*Љ
valueЄBёB(../validation/dataValidation_1.tfrecordsB(../validation/dataValidation_2.tfrecordsB(../validation/dataValidation_3.tfrecordsB(../validation/dataValidation_4.tfrecordsB(../validation/dataValidation_5.tfrecordsB(../validation/dataValidation_6.tfrecordsB(../validation/dataValidation_7.tfrecordsB(../validation/dataValidation_8.tfrecordsB(../validation/dataValidation_9.tfrecordsB)../validation/dataValidation_10.tfrecordsB)../validation/dataValidation_11.tfrecordsB)../validation/dataValidation_12.tfrecordsB)../validation/dataValidation_13.tfrecordsB)../validation/dataValidation_14.tfrecordsB)../validation/dataValidation_15.tfrecords*
dtype0*
_output_shapes
:
o
-validation_input_pipeline/input_producer/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
t
2validation_input_pipeline/input_producer/Greater/yConst*
value	B : *
dtype0*
_output_shapes
: 
┐
0validation_input_pipeline/input_producer/GreaterGreater-validation_input_pipeline/input_producer/Size2validation_input_pipeline/input_producer/Greater/y*
T0*
_output_shapes
: 
г
5validation_input_pipeline/input_producer/Assert/ConstConst*
dtype0*
_output_shapes
: *G
value>B< B6string_input_producer requires a non-null input tensor
┤
=validation_input_pipeline/input_producer/Assert/Assert/data_0Const*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
╬
6validation_input_pipeline/input_producer/Assert/AssertAssert0validation_input_pipeline/input_producer/Greater=validation_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
╦
1validation_input_pipeline/input_producer/IdentityIdentity.validation_input_pipeline/input_producer/Const7^validation_input_pipeline/input_producer/Assert/Assert*
_output_shapes
:*
T0
}
;validation_input_pipeline/input_producer/limit_epochs/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
а
<validation_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
с
Cvalidation_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign<validation_input_pipeline/input_producer/limit_epochs/epochs;validation_input_pipeline/input_producer/limit_epochs/Const*
use_locking(*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
validate_shape(*
_output_shapes
: 
§
Avalidation_input_pipeline/input_producer/limit_epochs/epochs/readIdentity<validation_input_pipeline/input_producer/limit_epochs/epochs*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 
Ѕ
?validation_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo<validation_input_pipeline/input_producer/limit_epochs/epochs*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit
█
5validation_input_pipeline/input_producer/limit_epochsIdentity1validation_input_pipeline/input_producer/Identity@^validation_input_pipeline/input_producer/limit_epochs/CountUpTo*
_output_shapes
:*
T0
Г
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
в
Cvalidation_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2(validation_input_pipeline/input_producer5validation_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms         
ќ
=validation_input_pipeline/input_producer/input_producer_CloseQueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues( 
ў
?validation_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues(
Ї
<validation_input_pipeline/input_producer/input_producer_SizeQueueSizeV2(validation_input_pipeline/input_producer*
_output_shapes
: 
д
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
Х
,validation_input_pipeline/input_producer/mulMul0validation_input_pipeline/input_producer/ToFloat.validation_input_pipeline/input_producer/mul/y*
_output_shapes
: *
T0
Й
Avalidation_input_pipeline/input_producer/fraction_of_32_full/tagsConst*M
valueDBB B<validation_input_pipeline/input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 
▀
<validation_input_pipeline/input_producer/fraction_of_32_fullScalarSummaryAvalidation_input_pipeline/input_producer/fraction_of_32_full/tags,validation_input_pipeline/input_producer/mul*
T0*
_output_shapes
: 
ќ
*validation_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
д
&validation_input_pipeline/ReaderReadV2ReaderReadV2*validation_input_pipeline/TFRecordReaderV2(validation_input_pipeline/input_producer*
_output_shapes
: : 
ј
Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 
љ
Mvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
═
Ѕvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
dtype0*
_output_shapes
: *
valueB 
╗
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
╝
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
└
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Й
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
К
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
├
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
г
kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Џ
`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(validation_input_pipeline/ReaderReadV2:1Ѕvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyuvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstMvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :         :         :         :         *
Tcontext_dense
2		
Ч
4validation_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
r
0validation_input_pipeline/TFRecordDecoding/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ж
.validation_input_pipeline/TFRecordDecoding/subSub`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample0validation_input_pipeline/TFRecordDecoding/sub/y*
_output_shapes
: *
T0	
╬
2validation_input_pipeline/TFRecordDecoding/ToInt32Castbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Љ
8validation_input_pipeline/TFRecordDecoding/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ш
2validation_input_pipeline/TFRecordDecoding/ReshapeReshape4validation_input_pipeline/TFRecordDecoding/DecodeRaw8validation_input_pipeline/TFRecordDecoding/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
и
2validation_input_pipeline/TFRecordDecoding/ToFloatCast2validation_input_pipeline/TFRecordDecoding/Reshape*

SrcT0*/
_output_shapes
:         PP*

DstT0
Њ
:validation_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4validation_input_pipeline/TFRecordDecoding/Reshape_1Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1:validation_input_pipeline/TFRecordDecoding/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4validation_input_pipeline/TFRecordDecoding/ToFloat_1Cast4validation_input_pipeline/TFRecordDecoding/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Њ
:validation_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4validation_input_pipeline/TFRecordDecoding/Reshape_2Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2:validation_input_pipeline/TFRecordDecoding/Reshape_2/shape*/
_output_shapes
:         PP*
T0*
Tshape0
╗
4validation_input_pipeline/TFRecordDecoding/ToFloat_2Cast4validation_input_pipeline/TFRecordDecoding/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0

<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
Ь
:validation_input_pipeline/TFRecordDecoding/Reshape_3/shapePack2validation_input_pipeline/TFRecordDecoding/ToInt32<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
З
4validation_input_pipeline/TFRecordDecoding/Reshape_3Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3:validation_input_pipeline/TFRecordDecoding/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
џ
Avalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ч
/validation_input_pipeline/TFRecordDecoding/MeanMean2validation_input_pipeline/TFRecordDecoding/ToFloatAvalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
о
0validation_input_pipeline/TFRecordDecoding/sub_1Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*/
_output_shapes
:         PP*
T0
Д
1validation_input_pipeline/TFRecordDecoding/SquareSquare0validation_input_pipeline/TFRecordDecoding/sub_1*
T0*/
_output_shapes
:         PP
ю
Cvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
 
1validation_input_pipeline/TFRecordDecoding/Mean_1Mean1validation_input_pipeline/TFRecordDecoding/SquareCvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Џ
/validation_input_pipeline/TFRecordDecoding/SqrtSqrt1validation_input_pipeline/TFRecordDecoding/Mean_1*
T0*&
_output_shapes
:
y
4validation_input_pipeline/TFRecordDecoding/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
Н
2validation_input_pipeline/TFRecordDecoding/MaximumMaximum/validation_input_pipeline/TFRecordDecoding/Sqrt4validation_input_pipeline/TFRecordDecoding/Maximum/y*
T0*&
_output_shapes
:
о
0validation_input_pipeline/TFRecordDecoding/sub_2Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*/
_output_shapes
:         PP*
T0
П
2validation_input_pipeline/TFRecordDecoding/truedivRealDiv0validation_input_pipeline/TFRecordDecoding/sub_22validation_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:         PP
ў
,validation_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
ф
(validation_input_pipeline/ReaderReadV2_1ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_1(validation_input_pipeline/input_producer*
_output_shapes
: : 
љ
Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
њ
Ovalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
¤
Іvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
й
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Й
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
┬
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
└
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
╔
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
┼
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
«
mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
│
bvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_1:1Іvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :         :         :         :         *
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
ђ
6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*0
_output_shapes
:                  *
little_endian(*
out_type0
ѓ
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*0
_output_shapes
:                  *
little_endian(*
out_type0
t
2validation_input_pipeline/TFRecordDecoding_1/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
­
0validation_input_pipeline/TFRecordDecoding_1/subSubbvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_1/sub/y*
T0	*
_output_shapes
: 
м
4validation_input_pipeline/TFRecordDecoding_1/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	
Њ
:validation_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
ч
4validation_input_pipeline/TFRecordDecoding_1/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw:validation_input_pipeline/TFRecordDecoding_1/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4validation_input_pipeline/TFRecordDecoding_1/ToFloatCast4validation_input_pipeline/TFRecordDecoding_1/Reshape*/
_output_shapes
:         PP*

DstT0*

SrcT0
Ћ
<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
┐
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_1*/
_output_shapes
:         PP*

DstT0*

SrcT0
Ћ
<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*/
_output_shapes
:         PP*
T0*
Tshape0
┐
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0
Ђ
>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
З
<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_1/ToInt32>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
Щ
6validation_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
ю
Cvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ѓ
1validation_input_pipeline/TFRecordDecoding_1/MeanMean4validation_input_pipeline/TFRecordDecoding_1/ToFloatCvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
▄
2validation_input_pipeline/TFRecordDecoding_1/sub_1Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:         PP
Ф
3validation_input_pipeline/TFRecordDecoding_1/SquareSquare2validation_input_pipeline/TFRecordDecoding_1/sub_1*
T0*/
_output_shapes
:         PP
ъ
Evalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ё
3validation_input_pipeline/TFRecordDecoding_1/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_1/SquareEvalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ъ
1validation_input_pipeline/TFRecordDecoding_1/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_1/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *й7є5
█
4validation_input_pipeline/TFRecordDecoding_1/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_1/Sqrt6validation_input_pipeline/TFRecordDecoding_1/Maximum/y*
T0*&
_output_shapes
:
▄
2validation_input_pipeline/TFRecordDecoding_1/sub_2Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:         PP
с
4validation_input_pipeline/TFRecordDecoding_1/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_1/sub_24validation_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:         PP
ў
,validation_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
ф
(validation_input_pipeline/ReaderReadV2_2ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_2(validation_input_pipeline/input_producer*
_output_shapes
: : 
љ
Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
њ
Ovalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
¤
Іvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
й
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Й
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
┬
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
└
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
╔
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
┼
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
«
mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
│
bvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_2:1Іvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :         :         :         :         *
Tcontext_dense
2		
ђ
6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:                  *
little_endian(*
out_type0
ѓ
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
t
2validation_input_pipeline/TFRecordDecoding_2/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
­
0validation_input_pipeline/TFRecordDecoding_2/subSubbvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_2/sub/y*
T0	*
_output_shapes
: 
м
4validation_input_pipeline/TFRecordDecoding_2/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	
Њ
:validation_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4validation_input_pipeline/TFRecordDecoding_2/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw:validation_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4validation_input_pipeline/TFRecordDecoding_2/ToFloatCast4validation_input_pipeline/TFRecordDecoding_2/Reshape*

SrcT0*/
_output_shapes
:         PP*

DstT0
Ћ
<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
┐
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Ћ
<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*/
_output_shapes
:         PP*
T0*
Tshape0
┐
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0
Ђ
>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
З
<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_2/ToInt32>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
Щ
6validation_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
ю
Cvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ѓ
1validation_input_pipeline/TFRecordDecoding_2/MeanMean4validation_input_pipeline/TFRecordDecoding_2/ToFloatCvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
▄
2validation_input_pipeline/TFRecordDecoding_2/sub_1Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:         PP
Ф
3validation_input_pipeline/TFRecordDecoding_2/SquareSquare2validation_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:         PP
ъ
Evalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ё
3validation_input_pipeline/TFRecordDecoding_2/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_2/SquareEvalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ъ
1validation_input_pipeline/TFRecordDecoding_2/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_2/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
█
4validation_input_pipeline/TFRecordDecoding_2/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_2/Sqrt6validation_input_pipeline/TFRecordDecoding_2/Maximum/y*
T0*&
_output_shapes
:
▄
2validation_input_pipeline/TFRecordDecoding_2/sub_2Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:         PP
с
4validation_input_pipeline/TFRecordDecoding_2/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_2/sub_24validation_input_pipeline/TFRecordDecoding_2/Maximum*
T0*/
_output_shapes
:         PP
ў
,validation_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
ф
(validation_input_pipeline/ReaderReadV2_3ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_3(validation_input_pipeline/input_producer*
_output_shapes
: : 
љ
Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 
њ
Ovalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
¤
Іvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
dtype0*
_output_shapes
: *
valueB 
й
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Й
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
┬
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
└
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
╔
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
┼
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
«
mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
│
bvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_3:1Іvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :         :         :         :         *
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
ђ
6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*0
_output_shapes
:                  *
little_endian(*
out_type0
t
2validation_input_pipeline/TFRecordDecoding_3/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
­
0validation_input_pipeline/TFRecordDecoding_3/subSubbvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_3/sub/y*
T0	*
_output_shapes
: 
м
4validation_input_pipeline/TFRecordDecoding_3/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Њ
:validation_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4validation_input_pipeline/TFRecordDecoding_3/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw:validation_input_pipeline/TFRecordDecoding_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4validation_input_pipeline/TFRecordDecoding_3/ToFloatCast4validation_input_pipeline/TFRecordDecoding_3/Reshape*

SrcT0*/
_output_shapes
:         PP*

DstT0
Ћ
<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
┐
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Ћ
<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:         PP
┐
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0
Ђ
>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
З
<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_3/ToInt32>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
Щ
6validation_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
ю
Cvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ѓ
1validation_input_pipeline/TFRecordDecoding_3/MeanMean4validation_input_pipeline/TFRecordDecoding_3/ToFloatCvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
▄
2validation_input_pipeline/TFRecordDecoding_3/sub_1Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:         PP
Ф
3validation_input_pipeline/TFRecordDecoding_3/SquareSquare2validation_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:         PP
ъ
Evalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ё
3validation_input_pipeline/TFRecordDecoding_3/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_3/SquareEvalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ъ
1validation_input_pipeline/TFRecordDecoding_3/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_3/Mean_1*&
_output_shapes
:*
T0
{
6validation_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
█
4validation_input_pipeline/TFRecordDecoding_3/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_3/Sqrt6validation_input_pipeline/TFRecordDecoding_3/Maximum/y*&
_output_shapes
:*
T0
▄
2validation_input_pipeline/TFRecordDecoding_3/sub_2Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:         PP
с
4validation_input_pipeline/TFRecordDecoding_3/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_3/sub_24validation_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:         PP
t
2validation_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
И
?validation_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
_output_shapes
: *
component_types

2	*u
shapesk
i:         PP: :         PP:         PP: :         ┤*
shared_name *
capacity└*
	container 
і
Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue4validation_input_pipeline/TFRecordDecoding/ToFloat_1.validation_input_pipeline/TFRecordDecoding/sub2validation_input_pipeline/TFRecordDecoding/truediv4validation_input_pipeline/TFRecordDecoding/ToFloat_22validation_input_pipeline/TFRecordDecoding/ToInt324validation_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms         
ў
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_1/ToFloat_10validation_input_pipeline/TFRecordDecoding_1/sub4validation_input_pipeline/TFRecordDecoding_1/truediv6validation_input_pipeline/TFRecordDecoding_1/ToFloat_24validation_input_pipeline/TFRecordDecoding_1/ToInt326validation_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms         
ў
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_2/ToFloat_10validation_input_pipeline/TFRecordDecoding_2/sub4validation_input_pipeline/TFRecordDecoding_2/truediv6validation_input_pipeline/TFRecordDecoding_2/ToFloat_24validation_input_pipeline/TFRecordDecoding_2/ToInt326validation_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms         
ў
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_3/ToFloat_10validation_input_pipeline/TFRecordDecoding_3/sub4validation_input_pipeline/TFRecordDecoding_3/truediv6validation_input_pipeline/TFRecordDecoding_3/ToFloat_24validation_input_pipeline/TFRecordDecoding_3/ToInt326validation_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms         
х
Evalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
и
Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
г
Dvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
▓
4validation_input_pipeline/batch_join_and_pad/ToFloatCastDvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Size*

SrcT0*
_output_shapes
: *

DstT0
w
2validation_input_pipeline/batch_join_and_pad/mul/yConst*
valueB
 *═╠L;*
dtype0*
_output_shapes
: 
┬
0validation_input_pipeline/batch_join_and_pad/mulMul4validation_input_pipeline/batch_join_and_pad/ToFloat2validation_input_pipeline/batch_join_and_pad/mul/y*
_output_shapes
: *
T0
╚
Fvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full/tagsConst*R
valueIBG BAvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full*
dtype0*
_output_shapes
: 
ь
Avalidation_input_pipeline/batch_join_and_pad/fraction_of_320_fullScalarSummaryFvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full/tags0validation_input_pipeline/batch_join_and_pad/mul*
T0*
_output_shapes
: 
p
.validation_input_pipeline/batch_join_and_pad/nConst*
value	B :*
dtype0*
_output_shapes
: 
Є
,validation_input_pipeline/batch_join_and_padQueueDequeueManyV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue.validation_input_pipeline/batch_join_and_pad/n*

timeout_ms         *Ќ
_output_shapesё
Ђ:         PP::         PP:         PP::         ┤*
component_types

2	
e
Training/SequenceMask/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Е
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
Training/SequenceMask/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
«
Training/SequenceMask/RangeRangeTraining/SequenceMask/Const_1Training/SequenceMask/MaxTraining/SequenceMask/Const_2*#
_output_shapes
:         *

Tidx0
o
$Training/SequenceMask/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
и
 Training/SequenceMask/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4$Training/SequenceMask/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
|
Training/SequenceMask/CastCast Training/SequenceMask/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0
Ї
Training/SequenceMask/LessLessTraining/SequenceMask/RangeTraining/SequenceMask/Cast*
T0*'
_output_shapes
:         
Ђ
Training/SequenceMask/Cast_1CastTraining/SequenceMask/Less*'
_output_shapes
:         *

DstT0*

SrcT0

b
Training/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
џ
Training/ExpandDims
ExpandDimsTraining/SequenceMask/Cast_1Training/ExpandDims/dim*+
_output_shapes
:         *

Tdim0*
T0
y
 Training/cnn_model/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
й
Training/cnn_model/ReshapeReshape,training_input_pipeline/batch_join_and_pad:2 Training/cnn_model/Reshape/shape*/
_output_shapes
:         PP*
T0*
Tshape0
О
Fcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB"            *
dtype0*
_output_shapes
:
┬
Ecnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/meanConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
─
Gcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddevConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *|П=*
dtype0*
_output_shapes
: 
║
Pcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
seed2 
¤
Dcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulMulPcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalGcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
й
@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normalAddDcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulEcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
▀
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
Г
*cnn_model/convolution/conv2d/kernel/AssignAssign#cnn_model/convolution/conv2d/kernel@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
┬
(cnn_model/convolution/conv2d/kernel/readIdentity#cnn_model/convolution/conv2d/kernel*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
Х
3cnn_model/convolution/conv2d/bias/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
├
!cnn_model/convolution/conv2d/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape:
ј
(cnn_model/convolution/conv2d/bias/AssignAssign!cnn_model/convolution/conv2d/bias3cnn_model/convolution/conv2d/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
░
&cnn_model/convolution/conv2d/bias/readIdentity!cnn_model/convolution/conv2d/bias*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:
ё
3Training/cnn_model/convolution/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ц
,Training/cnn_model/convolution/conv2d/Conv2DConv2DTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*/
_output_shapes
:         PP*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
▀
-Training/cnn_model/convolution/conv2d/BiasAddBiasAdd,Training/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
data_formatNHWC*/
_output_shapes
:         PP*
T0
Џ
*Training/cnn_model/convolution/conv2d/ReluRelu-Training/cnn_model/convolution/conv2d/BiasAdd*
T0*/
_output_shapes
:         PP
э
4Training/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool*Training/cnn_model/convolution/conv2d/Relu*
ksize
*
paddingSAME*/
_output_shapes
:         ((*
T0*
data_formatNHWC*
strides

█
Hcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
к
Gcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
Icnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *HYІ=*
dtype0*
_output_shapes
: 
└
Rcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shape*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
seed2 *
dtype0*&
_output_shapes
: *

seed 
О
Fcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
┼
Bcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mean*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
с
%cnn_model/convolution/conv2d_1/kernel
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container 
х
,cnn_model/convolution/conv2d_1/kernel/AssignAssign%cnn_model/convolution/conv2d_1/kernelBcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
╚
*cnn_model/convolution/conv2d_1/kernel/readIdentity%cnn_model/convolution/conv2d_1/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
║
5cnn_model/convolution/conv2d_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    
К
#cnn_model/convolution/conv2d_1/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
	container *
shape: 
ќ
*cnn_model/convolution/conv2d_1/bias/AssignAssign#cnn_model/convolution/conv2d_1/bias5cnn_model/convolution/conv2d_1/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Х
(cnn_model/convolution/conv2d_1/bias/readIdentity#cnn_model/convolution/conv2d_1/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
є
5Training/cnn_model/convolution/conv2d_1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
┬
.Training/cnn_model/convolution/conv2d_1/Conv2DConv2D4Training/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
paddingSAME*/
_output_shapes
:         (( *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
т
/Training/cnn_model/convolution/conv2d_1/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         (( 
Ъ
,Training/cnn_model/convolution/conv2d_1/ReluRelu/Training/cnn_model/convolution/conv2d_1/BiasAdd*/
_output_shapes
:         (( *
T0
ч
6Training/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_1/Relu*/
_output_shapes
:          *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
█
Hcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
к
Gcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
Icnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *БE=*
dtype0*
_output_shapes
: 
└
Rcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
seed2 
О
Fcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
┼
Bcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
с
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
х
,cnn_model/convolution/conv2d_2/kernel/AssignAssign%cnn_model/convolution/conv2d_2/kernelBcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
╚
*cnn_model/convolution/conv2d_2/kernel/readIdentity%cnn_model/convolution/conv2d_2/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
║
5cnn_model/convolution/conv2d_2/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
К
#cnn_model/convolution/conv2d_2/bias
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
ќ
*cnn_model/convolution/conv2d_2/bias/AssignAssign#cnn_model/convolution/conv2d_2/bias5cnn_model/convolution/conv2d_2/bias/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
Х
(cnn_model/convolution/conv2d_2/bias/readIdentity#cnn_model/convolution/conv2d_2/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
є
5Training/cnn_model/convolution/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
─
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
:         @
т
/Training/cnn_model/convolution/conv2d_2/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         @
Ъ
,Training/cnn_model/convolution/conv2d_2/ReluRelu/Training/cnn_model/convolution/conv2d_2/BiasAdd*/
_output_shapes
:         @*
T0
ч
6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_2/Relu*/
_output_shapes
:         

@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
█
Hcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   ђ   
к
Gcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
Icnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *HY=
┴
Rcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shape*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
seed2 *
dtype0*'
_output_shapes
:@ђ*

seed 
п
Fcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@ђ
к
Bcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@ђ
т
%cnn_model/convolution/conv2d_3/kernel
VariableV2*
shape:@ђ*
dtype0*'
_output_shapes
:@ђ*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container 
Х
,cnn_model/convolution/conv2d_3/kernel/AssignAssign%cnn_model/convolution/conv2d_3/kernelBcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@ђ
╔
*cnn_model/convolution/conv2d_3/kernel/readIdentity%cnn_model/convolution/conv2d_3/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@ђ
╝
5cnn_model/convolution/conv2d_3/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
╔
#cnn_model/convolution/conv2d_3/bias
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:ђ
Ќ
*cnn_model/convolution/conv2d_3/bias/AssignAssign#cnn_model/convolution/conv2d_3/bias5cnn_model/convolution/conv2d_3/bias/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:ђ
и
(cnn_model/convolution/conv2d_3/bias/readIdentity#cnn_model/convolution/conv2d_3/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:ђ
є
5Training/cnn_model/convolution/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
┼
.Training/cnn_model/convolution/conv2d_3/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         

ђ
Т
/Training/cnn_model/convolution/conv2d_3/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:         

ђ
а
,Training/cnn_model/convolution/conv2d_3/ReluRelu/Training/cnn_model/convolution/conv2d_3/BiasAdd*
T0*0
_output_shapes
:         

ђ
Ч
6Training/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_3/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:         ђ
█
Hcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      ђ      *
dtype0*
_output_shapes
:
к
Gcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
Icnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *Б┼<*
dtype0*
_output_shapes
: 
┬
Rcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*(
_output_shapes
:ђђ*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
┘
Fcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:ђђ
К
Bcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:ђђ
у
%cnn_model/convolution/conv2d_4/kernel
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:ђђ*
dtype0*(
_output_shapes
:ђђ
и
,cnn_model/convolution/conv2d_4/kernel/AssignAssign%cnn_model/convolution/conv2d_4/kernelBcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ђђ*
use_locking(
╩
*cnn_model/convolution/conv2d_4/kernel/readIdentity%cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:ђђ*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
╝
5cnn_model/convolution/conv2d_4/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
╔
#cnn_model/convolution/conv2d_4/bias
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:ђ
Ќ
*cnn_model/convolution/conv2d_4/bias/AssignAssign#cnn_model/convolution/conv2d_4/bias5cnn_model/convolution/conv2d_4/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:ђ*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias
и
(cnn_model/convolution/conv2d_4/bias/readIdentity#cnn_model/convolution/conv2d_4/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:ђ
є
5Training/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
┼
.Training/cnn_model/convolution/conv2d_4/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         ђ
Т
/Training/cnn_model/convolution/conv2d_4/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
data_formatNHWC*0
_output_shapes
:         ђ*
T0
а
,Training/cnn_model/convolution/conv2d_4/ReluRelu/Training/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:         ђ
Ч
6Training/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_4/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:         ђ
s
"Training/cnn_model/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"     	  
─
Training/cnn_model/Reshape_1Reshape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool"Training/cnn_model/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:         ђ
х
9cnn_model/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     
е
8cnn_model/dense/kernel/Initializer/truncated_normal/meanConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ф
:cnn_model/dense/kernel/Initializer/truncated_normal/stddevConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *JQ┌<*
dtype0*
_output_shapes
: 
Ї
Ccnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9cnn_model/dense/kernel/Initializer/truncated_normal/shape*
T0*)
_class
loc:@cnn_model/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
ђђ*

seed 
Ћ
7cnn_model/dense/kernel/Initializer/truncated_normal/mulMulCcnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormal:cnn_model/dense/kernel/Initializer/truncated_normal/stddev*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
ђђ
Ѓ
3cnn_model/dense/kernel/Initializer/truncated_normalAdd7cnn_model/dense/kernel/Initializer/truncated_normal/mul8cnn_model/dense/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
ђђ*
T0*)
_class
loc:@cnn_model/dense/kernel
╣
cnn_model/dense/kernel
VariableV2*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:
ђђ*
dtype0* 
_output_shapes
:
ђђ
з
cnn_model/dense/kernel/AssignAssigncnn_model/dense/kernel3cnn_model/dense/kernel/Initializer/truncated_normal*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:
ђђ*
use_locking(
Ћ
cnn_model/dense/kernel/readIdentitycnn_model/dense/kernel*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
ђђ
ъ
&cnn_model/dense/bias/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
Ф
cnn_model/dense/bias
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:ђ
█
cnn_model/dense/bias/AssignAssigncnn_model/dense/bias&cnn_model/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:ђ*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias
і
cnn_model/dense/bias/readIdentitycnn_model/dense/bias*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:ђ
й
Training/cnn_model/dense/MatMulMatMulTraining/cnn_model/Reshape_1cnn_model/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:         ђ*
transpose_a( 
▒
 Training/cnn_model/dense/BiasAddBiasAddTraining/cnn_model/dense/MatMulcnn_model/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         ђ
z
Training/cnn_model/dense/ReluRelu Training/cnn_model/dense/BiasAdd*
T0*(
_output_shapes
:         ђ
w
"Training/cnn_model/Reshape_2/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
»
Training/cnn_model/Reshape_2ReshapeTraining/cnn_model/dense/Relu"Training/cnn_model/Reshape_2/shape*
T0*
Tshape0*,
_output_shapes
:         ђ
g
Training/SequenceMask_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Г
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
Х
Training/SequenceMask_1/RangeRangeTraining/SequenceMask_1/Const_1Training/SequenceMask_1/MaxTraining/SequenceMask_1/Const_2*#
_output_shapes
:         *

Tidx0
q
&Training/SequenceMask_1/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
╗
"Training/SequenceMask_1/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4&Training/SequenceMask_1/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
ђ
Training/SequenceMask_1/CastCast"Training/SequenceMask_1/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0
Њ
Training/SequenceMask_1/LessLessTraining/SequenceMask_1/RangeTraining/SequenceMask_1/Cast*
T0*'
_output_shapes
:         
Ё
Training/SequenceMask_1/Cast_1CastTraining/SequenceMask_1/Less*'
_output_shapes
:         *

DstT0*

SrcT0

d
Training/ExpandDims_1/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
а
Training/ExpandDims_1
ExpandDimsTraining/SequenceMask_1/Cast_1Training/ExpandDims_1/dim*
T0*+
_output_shapes
:         *

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
┌
&Training/rnn_model/recurrent/rnn/rangeRange,Training/rnn_model/recurrent/rnn/range/start%Training/rnn_model/recurrent/rnn/Rank,Training/rnn_model/recurrent/rnn/range/delta*

Tidx0*
_output_shapes
:
Ђ
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
ш
'Training/rnn_model/recurrent/rnn/concatConcatV20Training/rnn_model/recurrent/rnn/concat/values_0&Training/rnn_model/recurrent/rnn/range,Training/rnn_model/recurrent/rnn/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
┬
*Training/rnn_model/recurrent/rnn/transpose	TransposeTraining/cnn_model/Reshape_2'Training/rnn_model/recurrent/rnn/concat*,
_output_shapes
:         ђ*
Tperm0*
T0
Ј
0Training/rnn_model/recurrent/rnn/sequence_lengthIdentity,training_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:
ѓ
8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:
Ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
valueB:ђ*
dtype0*
_output_shapes
:
ђ
>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
х
9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV28Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ѓ
>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
э
8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
_output_shapes
:	ђ*
T0*

index_type0
ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
dtype0*
_output_shapes
:*
valueB:
Ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
valueB:ђ*
dtype0*
_output_shapes
:
ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
dtype0*
_output_shapes
:*
valueB:
Ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:ђ*
dtype0*
_output_shapes
:
ѓ
@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╗
;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ё
@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	ђ
ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
dtype0*
_output_shapes
:*
valueB:
Ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
valueB:ђ*
dtype0*
_output_shapes
:
p
&Training/rnn_model/recurrent/rnn/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
p
&Training/rnn_model/recurrent/rnn/stackConst*
valueB:*
dtype0*
_output_shapes
:
ц
&Training/rnn_model/recurrent/rnn/EqualEqual&Training/rnn_model/recurrent/rnn/Shape&Training/rnn_model/recurrent/rnn/stack*
T0*
_output_shapes
:
p
&Training/rnn_model/recurrent/rnn/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
░
$Training/rnn_model/recurrent/rnn/AllAll&Training/rnn_model/recurrent/rnn/Equal&Training/rnn_model/recurrent/rnn/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
Й
-Training/rnn_model/recurrent/rnn/Assert/ConstConst*
dtype0*
_output_shapes
: *a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is 
ђ
/Training/rnn_model/recurrent/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
к
5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*
dtype0*
_output_shapes
: *a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is 
є
5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
╝
.Training/rnn_model/recurrent/rnn/Assert/AssertAssert$Training/rnn_model/recurrent/rnn/All5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0&Training/rnn_model/recurrent/rnn/stack5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2&Training/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
└
,Training/rnn_model/recurrent/rnn/CheckSeqLenIdentity0Training/rnn_model/recurrent/rnn/sequence_length/^Training/rnn_model/recurrent/rnn/Assert/Assert*
T0*
_output_shapes
:
њ
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
ђ
6Training/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
ђ
6Training/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
а
.Training/rnn_model/recurrent/rnn/strided_sliceStridedSlice(Training/rnn_model/recurrent/rnn/Shape_14Training/rnn_model/recurrent/rnn/strided_slice/stack6Training/rnn_model/recurrent/rnn/strided_slice/stack_16Training/rnn_model/recurrent/rnn/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
r
(Training/rnn_model/recurrent/rnn/Const_1Const*
dtype0*
_output_shapes
:*
valueB:
s
(Training/rnn_model/recurrent/rnn/Const_2Const*
valueB:ђ*
dtype0*
_output_shapes
:
p
.Training/rnn_model/recurrent/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
з
)Training/rnn_model/recurrent/rnn/concat_1ConcatV2(Training/rnn_model/recurrent/rnn/Const_1(Training/rnn_model/recurrent/rnn/Const_2.Training/rnn_model/recurrent/rnn/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
q
,Training/rnn_model/recurrent/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
├
&Training/rnn_model/recurrent/rnn/zerosFill)Training/rnn_model/recurrent/rnn/concat_1,Training/rnn_model/recurrent/rnn/zeros/Const*
T0*

index_type0*
_output_shapes
:	ђ
r
(Training/rnn_model/recurrent/rnn/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
┴
$Training/rnn_model/recurrent/rnn/MinMin,Training/rnn_model/recurrent/rnn/CheckSeqLen(Training/rnn_model/recurrent/rnn/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
r
(Training/rnn_model/recurrent/rnn/Const_4Const*
valueB: *
dtype0*
_output_shapes
:
┴
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
л
,Training/rnn_model/recurrent/rnn/TensorArrayTensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*
dtype0*
_output_shapes

:: *
element_shape:	ђ*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*L
tensor_array_name75Training/rnn_model/recurrent/rnn/dynamic_rnn/output_0
Л
.Training/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*K
tensor_array_name64Training/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	ђ*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
Б
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape*Training/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
Љ
GTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Њ
ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Њ
ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
§
ATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeGTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ђ
?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Ђ
?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
И
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRange?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:         *

Tidx0
ю
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
д
(Training/rnn_model/recurrent/rnn/MaximumMaximum*Training/rnn_model/recurrent/rnn/Maximum/x$Training/rnn_model/recurrent/rnn/Max*
T0*
_output_shapes
: 
«
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
ё
,Training/rnn_model/recurrent/rnn/while/EnterEnter8Training/rnn_model/recurrent/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
з
.Training/rnn_model/recurrent/rnn/while/Enter_1Enter%Training/rnn_model/recurrent/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ч
.Training/rnn_model/recurrent/rnn/while/Enter_2Enter.Training/rnn_model/recurrent/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ј
.Training/rnn_model/recurrent/rnn/while/Enter_3Enter8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
parallel_iterations *
_output_shapes
:	ђ*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
Љ
.Training/rnn_model/recurrent/rnn/while/Enter_4Enter:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	ђ*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
┼
,Training/rnn_model/recurrent/rnn/while/MergeMerge,Training/rnn_model/recurrent/rnn/while/Enter4Training/rnn_model/recurrent/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
╦
.Training/rnn_model/recurrent/rnn/while/Merge_1Merge.Training/rnn_model/recurrent/rnn/while/Enter_16Training/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
╦
.Training/rnn_model/recurrent/rnn/while/Merge_2Merge.Training/rnn_model/recurrent/rnn/while/Enter_26Training/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
н
.Training/rnn_model/recurrent/rnn/while/Merge_3Merge.Training/rnn_model/recurrent/rnn/while/Enter_36Training/rnn_model/recurrent/rnn/while/NextIteration_3*
T0*
N*!
_output_shapes
:	ђ: 
н
.Training/rnn_model/recurrent/rnn/while/Merge_4Merge.Training/rnn_model/recurrent/rnn/while/Enter_46Training/rnn_model/recurrent/rnn/while/NextIteration_4*
T0*
N*!
_output_shapes
:	ђ: 
х
+Training/rnn_model/recurrent/rnn/while/LessLess,Training/rnn_model/recurrent/rnn/while/Merge1Training/rnn_model/recurrent/rnn/while/Less/Enter*
T0*
_output_shapes
: 
 
1Training/rnn_model/recurrent/rnn/while/Less/EnterEnter.Training/rnn_model/recurrent/rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
╗
-Training/rnn_model/recurrent/rnn/while/Less_1Less.Training/rnn_model/recurrent/rnn/while/Merge_13Training/rnn_model/recurrent/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
ч
3Training/rnn_model/recurrent/rnn/while/Less_1/EnterEnter(Training/rnn_model/recurrent/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
│
1Training/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd+Training/rnn_model/recurrent/rnn/while/Less-Training/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 
є
/Training/rnn_model/recurrent/rnn/while/LoopCondLoopCond1Training/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 
Щ
-Training/rnn_model/recurrent/rnn/while/SwitchSwitch,Training/rnn_model/recurrent/rnn/while/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/while/Merge*
_output_shapes
: : 
ђ
/Training/rnn_model/recurrent/rnn/while/Switch_1Switch.Training/rnn_model/recurrent/rnn/while/Merge_1/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_1*
_output_shapes
: : 
ђ
/Training/rnn_model/recurrent/rnn/while/Switch_2Switch.Training/rnn_model/recurrent/rnn/while/Merge_2/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_2*
_output_shapes
: : 
њ
/Training/rnn_model/recurrent/rnn/while/Switch_3Switch.Training/rnn_model/recurrent/rnn/while/Merge_3/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_3**
_output_shapes
:	ђ:	ђ
њ
/Training/rnn_model/recurrent/rnn/while/Switch_4Switch.Training/rnn_model/recurrent/rnn/while/Merge_4/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_4**
_output_shapes
:	ђ:	ђ
Ї
/Training/rnn_model/recurrent/rnn/while/IdentityIdentity/Training/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 
Љ
1Training/rnn_model/recurrent/rnn/while/Identity_1Identity1Training/rnn_model/recurrent/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
Љ
1Training/rnn_model/recurrent/rnn/while/Identity_2Identity1Training/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
џ
1Training/rnn_model/recurrent/rnn/while/Identity_3Identity1Training/rnn_model/recurrent/rnn/while/Switch_3:1*
_output_shapes
:	ђ*
T0
џ
1Training/rnn_model/recurrent/rnn/while/Identity_4Identity1Training/rnn_model/recurrent/rnn/while/Switch_4:1*
_output_shapes
:	ђ*
T0
а
,Training/rnn_model/recurrent/rnn/while/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
▒
*Training/rnn_model/recurrent/rnn/while/addAdd/Training/rnn_model/recurrent/rnn/while/Identity,Training/rnn_model/recurrent/rnn/while/add/y*
T0*
_output_shapes
: 
░
8Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3TensorArrayReadV3>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	ђ
љ
>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
╗
@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
о
3Training/rnn_model/recurrent/rnn/while/GreaterEqualGreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_19Training/rnn_model/recurrent/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:
Ѕ
9Training/rnn_model/recurrent/rnn/while/GreaterEqual/EnterEnter,Training/rnn_model/recurrent/rnn/CheckSeqLen*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
┘
Krnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
╠
Jrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
╬
Lrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *ВЛ<*
dtype0*
_output_shapes
: 
├
Urnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
ђђ*

seed *
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
seed2 
П
Irnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulMulUrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalLrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
ђђ
╦
Ernn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normalAddIrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulJrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
ђђ*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
П
(rnn_model/recurrent/rnn/lstm_cell/kernel
VariableV2*
dtype0* 
_output_shapes
:
ђђ*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:
ђђ
╗
/rnn_model/recurrent/rnn/lstm_cell/kernel/AssignAssign(rnn_model/recurrent/rnn/lstm_cell/kernelErnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
ђђ
ј
-rnn_model/recurrent/rnn/lstm_cell/kernel/readIdentity(rnn_model/recurrent/rnn/lstm_cell/kernel*
T0* 
_output_shapes
:
ђђ
╬
Hrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:ђ*
dtype0*
_output_shapes
:
Й
>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
й
8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zerosFillHrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensor>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:ђ
¤
&rnn_model/recurrent/rnn/lstm_cell/bias
VariableV2*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:ђ*
dtype0*
_output_shapes	
:ђ
Б
-rnn_model/recurrent/rnn/lstm_cell/bias/AssignAssign&rnn_model/recurrent/rnn/lstm_cell/bias8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:ђ*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias
Ё
+rnn_model/recurrent/rnn/lstm_cell/bias/readIdentity&rnn_model/recurrent/rnn/lstm_cell/bias*
T0*
_output_shapes	
:ђ
░
<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axisConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Г
7Training/rnn_model/recurrent/rnn/while/lstm_cell/concatConcatV28Training/rnn_model/recurrent/rnn/while/TensorArrayReadV31Training/rnn_model/recurrent/rnn/while/Identity_4<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis*
T0*
N*
_output_shapes
:	ђ*

Tidx0
Ѕ
7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMulMatMul7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter*
T0*
_output_shapes
:	ђ*
transpose_a( *
transpose_b( 
ћ
=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
parallel_iterations * 
_output_shapes
:
ђђ*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
§
8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAddBiasAdd7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter*
data_formatNHWC*
_output_shapes
:	ђ*
T0
ј
>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/EnterEnter+rnn_model/recurrent/rnn/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:ђ*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ф
6Training/rnn_model/recurrent/rnn/while/lstm_cell/ConstConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
┤
@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dimConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ќ
6Training/rnn_model/recurrent/rnn/while/lstm_cell/splitSplit@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd*
T0*@
_output_shapes.
,:	ђ:	ђ:	ђ:	ђ*
	num_split
Г
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
О
4Training/rnn_model/recurrent/rnn/while/lstm_cell/addAdd8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:26Training/rnn_model/recurrent/rnn/while/lstm_cell/add/y*
T0*
_output_shapes
:	ђ
Б
8Training/rnn_model/recurrent/rnn/while/lstm_cell/SigmoidSigmoid4Training/rnn_model/recurrent/rnn/while/lstm_cell/add*
T0*
_output_shapes
:	ђ
м
4Training/rnn_model/recurrent/rnn/while/lstm_cell/mulMul8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid1Training/rnn_model/recurrent/rnn/while/Identity_3*
_output_shapes
:	ђ*
T0
Д
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1Sigmoid6Training/rnn_model/recurrent/rnn/while/lstm_cell/split*
T0*
_output_shapes
:	ђ
А
5Training/rnn_model/recurrent/rnn/while/lstm_cell/TanhTanh8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:1*
_output_shapes
:	ђ*
T0
┌
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_15Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
T0*
_output_shapes
:	ђ
Н
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1Add4Training/rnn_model/recurrent/rnn/while/lstm_cell/mul6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1*
_output_shapes
:	ђ*
T0
Е
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2Sigmoid8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:3*
T0*
_output_shapes
:	ђ
А
7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1Tanh6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*
_output_shapes
:	ђ
▄
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_27Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
T0*
_output_shapes
:	ђ
╬
-Training/rnn_model/recurrent/rnn/while/SelectSelect3Training/rnn_model/recurrent/rnn/while/GreaterEqual3Training/rnn_model/recurrent/rnn/while/Select/Enter6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	ђ
═
3Training/rnn_model/recurrent/rnn/while/Select/EnterEnter&Training/rnn_model/recurrent/rnn/zeros*
is_constant(*
_output_shapes
:	ђ*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
╬
/Training/rnn_model/recurrent/rnn/while/Select_1Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_36Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	ђ
╬
/Training/rnn_model/recurrent/rnn/while/Select_2Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_46Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	ђ
│
JTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1-Training/rnn_model/recurrent/rnn/while/Select1Training/rnn_model/recurrent/rnn/while/Identity_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
в
PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2
б
.Training/rnn_model/recurrent/rnn/while/add_1/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
и
,Training/rnn_model/recurrent/rnn/while/add_1Add1Training/rnn_model/recurrent/rnn/while/Identity_1.Training/rnn_model/recurrent/rnn/while/add_1/y*
_output_shapes
: *
T0
њ
4Training/rnn_model/recurrent/rnn/while/NextIterationNextIteration*Training/rnn_model/recurrent/rnn/while/add*
T0*
_output_shapes
: 
ќ
6Training/rnn_model/recurrent/rnn/while/NextIteration_1NextIteration,Training/rnn_model/recurrent/rnn/while/add_1*
T0*
_output_shapes
: 
┤
6Training/rnn_model/recurrent/rnn/while/NextIteration_2NextIterationJTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
б
6Training/rnn_model/recurrent/rnn/while/NextIteration_3NextIteration/Training/rnn_model/recurrent/rnn/while/Select_1*
T0*
_output_shapes
:	ђ
б
6Training/rnn_model/recurrent/rnn/while/NextIteration_4NextIteration/Training/rnn_model/recurrent/rnn/while/Select_2*
_output_shapes
:	ђ*
T0
Ѓ
+Training/rnn_model/recurrent/rnn/while/ExitExit-Training/rnn_model/recurrent/rnn/while/Switch*
T0*
_output_shapes
: 
Є
-Training/rnn_model/recurrent/rnn/while/Exit_1Exit/Training/rnn_model/recurrent/rnn/while/Switch_1*
T0*
_output_shapes
: 
Є
-Training/rnn_model/recurrent/rnn/while/Exit_2Exit/Training/rnn_model/recurrent/rnn/while/Switch_2*
T0*
_output_shapes
: 
љ
-Training/rnn_model/recurrent/rnn/while/Exit_3Exit/Training/rnn_model/recurrent/rnn/while/Switch_3*
T0*
_output_shapes
:	ђ
љ
-Training/rnn_model/recurrent/rnn/while/Exit_4Exit/Training/rnn_model/recurrent/rnn/while/Switch_4*
_output_shapes
:	ђ*
T0
ј
CTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*
_output_shapes
: *?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray
└
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B : 
└
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/deltaConst*
dtype0*
_output_shapes
: *?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B :
ш
7Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeRange=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startCTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/delta*

Tidx0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*#
_output_shapes
:         
ї
ETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3,Training/rnn_model/recurrent/rnn/TensorArray7Training/rnn_model/recurrent/rnn/TensorArrayStack/range-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
dtype0*,
_output_shapes
:         ђ*
element_shape:	ђ
s
(Training/rnn_model/recurrent/rnn/Const_5Const*
valueB:ђ*
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
Р
(Training/rnn_model/recurrent/rnn/range_1Range.Training/rnn_model/recurrent/rnn/range_1/start'Training/rnn_model/recurrent/rnn/Rank_1.Training/rnn_model/recurrent/rnn/range_1/delta*
_output_shapes
:*

Tidx0
Ѓ
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
§
)Training/rnn_model/recurrent/rnn/concat_2ConcatV22Training/rnn_model/recurrent/rnn/concat_2/values_0(Training/rnn_model/recurrent/rnn/range_1.Training/rnn_model/recurrent/rnn/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
№
,Training/rnn_model/recurrent/rnn/transpose_1	TransposeETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3)Training/rnn_model/recurrent/rnn/concat_2*
Tperm0*
T0*,
_output_shapes
:         ђ
q
 Training/rnn_model/Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
Х
Training/rnn_model/ReshapeReshape,Training/rnn_model/recurrent/rnn/transpose_1 Training/rnn_model/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:         ђ
n
)Training/logits/dropout/dropout/keep_probConst*
dtype0*
_output_shapes
: *
valueB
 *333?
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
 *  ђ?*
dtype0*
_output_shapes
: 
═
<Training/logits/dropout/dropout/random_uniform/RandomUniformRandomUniform%Training/logits/dropout/dropout/Shape*
T0*
dtype0*(
_output_shapes
:         ђ*
seed2 *

seed 
┬
2Training/logits/dropout/dropout/random_uniform/subSub2Training/logits/dropout/dropout/random_uniform/max2Training/logits/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
я
2Training/logits/dropout/dropout/random_uniform/mulMul<Training/logits/dropout/dropout/random_uniform/RandomUniform2Training/logits/dropout/dropout/random_uniform/sub*
T0*(
_output_shapes
:         ђ
л
.Training/logits/dropout/dropout/random_uniformAdd2Training/logits/dropout/dropout/random_uniform/mul2Training/logits/dropout/dropout/random_uniform/min*(
_output_shapes
:         ђ*
T0
И
#Training/logits/dropout/dropout/addAdd)Training/logits/dropout/dropout/keep_prob.Training/logits/dropout/dropout/random_uniform*
T0*(
_output_shapes
:         ђ
є
%Training/logits/dropout/dropout/FloorFloor#Training/logits/dropout/dropout/add*
T0*(
_output_shapes
:         ђ
е
#Training/logits/dropout/dropout/divRealDivTraining/rnn_model/Reshape)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:         ђ
Е
#Training/logits/dropout/dropout/mulMul#Training/logits/dropout/dropout/div%Training/logits/dropout/dropout/Floor*
T0*(
_output_shapes
:         ђ
»
6logits/dense/kernel/Initializer/truncated_normal/shapeConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
б
5logits/dense/kernel/Initializer/truncated_normal/meanConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ц
7logits/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *&
_class
loc:@logits/dense/kernel*
valueB
 *R${=
Ѓ
@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6logits/dense/kernel/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	ђ*

seed *
T0*&
_class
loc:@logits/dense/kernel*
seed2 
ѕ
4logits/dense/kernel/Initializer/truncated_normal/mulMul@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormal7logits/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes
:	ђ*
T0*&
_class
loc:@logits/dense/kernel
Ш
0logits/dense/kernel/Initializer/truncated_normalAdd4logits/dense/kernel/Initializer/truncated_normal/mul5logits/dense/kernel/Initializer/truncated_normal/mean*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	ђ
▒
logits/dense/kernel
VariableV2*
dtype0*
_output_shapes
:	ђ*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	ђ
Т
logits/dense/kernel/AssignAssignlogits/dense/kernel0logits/dense/kernel/Initializer/truncated_normal*
validate_shape(*
_output_shapes
:	ђ*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel
І
logits/dense/kernel/readIdentitylogits/dense/kernel*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	ђ
ќ
#logits/dense/bias/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
Б
logits/dense/bias
VariableV2*$
_class
loc:@logits/dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
╬
logits/dense/bias/AssignAssignlogits/dense/bias#logits/dense/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*$
_class
loc:@logits/dense/bias
ђ
logits/dense/bias/readIdentitylogits/dense/bias*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:
й
Training/logits/dense/MatMulMatMul#Training/logits/dropout/dropout/mullogits/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:         *
transpose_a( 
Д
Training/logits/dense/BiasAddBiasAddTraining/logits/dense/MatMullogits/dense/bias/read*
data_formatNHWC*'
_output_shapes
:         *
T0
r
Training/logits/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"          
ц
Training/logits/ReshapeReshapeTraining/logits/dense/BiasAddTraining/logits/Reshape/shape*+
_output_shapes
:         *
T0*
Tshape0
І
Training/logits_prediction/mulMulTraining/logits/ReshapeTraining/ExpandDims_1*
T0*+
_output_shapes
:         
s
1Training/logits_prediction/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
└
Training/logits_prediction/MeanMeanTraining/logits_prediction/mul1Training/logits_prediction/Mean/reduction_indices*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0
Ј
ETraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
Ќ
cTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsTraining/logits_prediction/Mean,training_input_pipeline/batch_join_and_pad:1*
T0*$
_output_shapes
::*
Tlabels0	
k
!Training/cross_entropy_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ь
 Training/cross_entropy_loss/MeanMeancTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits!Training/cross_entropy_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
j
(Training/accuracy_stats/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
и
Training/accuracy_stats/ArgMaxArgMaxTraining/logits_prediction/Mean(Training/accuracy_stats/ArgMax/dimension*
T0*
output_type0	*
_output_shapes
:*

Tidx0
Ў
Training/accuracy_stats/EqualEqualTraining/accuracy_stats/ArgMax,training_input_pipeline/batch_join_and_pad:1*
T0	*
_output_shapes
:
w
Training/accuracy_stats/CastCastTraining/accuracy_stats/Equal*

SrcT0
*
_output_shapes
:*

DstT0
g
Training/accuracy_stats/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ю
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
:*

DstT0
i
Training/accuracy_stats/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Б
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
х
Training/accuracy/predictionsArgMaxTraining/logits_prediction/Mean'Training/accuracy/predictions/dimension*

Tidx0*
T0*
output_type0	*
_output_shapes
:
d
"Training/global_step/initial_valueConst*
value	B :*
dtype0*
_output_shapes
: 
x
Training/global_step
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
м
Training/global_step/AssignAssignTraining/global_step"Training/global_step/initial_value*
T0*'
_class
loc:@Training/global_step*
validate_shape(*
_output_shapes
: *
use_locking(
Ё
Training/global_step/readIdentityTraining/global_step*
T0*'
_class
loc:@Training/global_step*
_output_shapes
: 
l
'Training/ExponentialDecay/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o:
q
Training/ExponentialDecay/CastCastTraining/global_step/read*

SrcT0*
_output_shapes
: *

DstT0
e
"Training/ExponentialDecay/Cast_1/xConst*
value
B :З*
dtype0*
_output_shapes
: 
|
 Training/ExponentialDecay/Cast_1Cast"Training/ExponentialDecay/Cast_1/x*
_output_shapes
: *

DstT0*

SrcT0
g
"Training/ExponentialDecay/Cast_2/xConst*
valueB
 *ВQx?*
dtype0*
_output_shapes
: 
Ј
!Training/ExponentialDecay/truedivRealDivTraining/ExponentialDecay/Cast Training/ExponentialDecay/Cast_1*
T0*
_output_shapes
: 
ї
Training/ExponentialDecay/PowPow"Training/ExponentialDecay/Cast_2/x!Training/ExponentialDecay/truediv*
_output_shapes
: *
T0
Ѕ
Training/ExponentialDecayMul'Training/ExponentialDecay/learning_rateTraining/ExponentialDecay/Pow*
T0*
_output_shapes
: 
[
Training/gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
a
Training/gradients/grad_ys_0Const*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
і
Training/gradients/FillFillTraining/gradients/ShapeTraining/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
\
Training/gradients/f_countConst*
dtype0*
_output_shapes
: *
value	B : 
о
Training/gradients/f_count_1EnterTraining/gradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ї
Training/gradients/MergeMergeTraining/gradients/f_count_1 Training/gradients/NextIteration*
T0*
N*
_output_shapes
: : 
Љ
Training/gradients/SwitchSwitchTraining/gradients/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0
ї
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
Щ
 Training/gradients/NextIterationNextIterationTraining/gradients/Add[^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2Ђ^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2e^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2*
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
в
Training/gradients/b_count_1EnterTraining/gradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Љ
Training/gradients/Merge_1MergeTraining/gradients/b_count_1"Training/gradients/NextIteration_1*
N*
_output_shapes
: : *
T0
Њ
Training/gradients/GreaterEqualGreaterEqualTraining/gradients/Merge_1%Training/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
Ы
%Training/gradients/GreaterEqual/EnterEnterTraining/gradients/b_count*
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
a
Training/gradients/b_count_2LoopCondTraining/gradients/GreaterEqual*
_output_shapes
: 
ѓ
Training/gradients/Switch_1SwitchTraining/gradients/Merge_1Training/gradients/b_count_2*
T0*
_output_shapes
: : 
ё
Training/gradients/SubSubTraining/gradients/Switch_1:1%Training/gradients/GreaterEqual/Enter*
_output_shapes
: *
T0
Ж
"Training/gradients/NextIteration_1NextIterationTraining/gradients/Sub|^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
b
Training/gradients/b_count_3ExitTraining/gradients/Switch_1*
T0*
_output_shapes
: 
љ
FTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
▀
@Training/gradients/Training/cross_entropy_loss/Mean_grad/ReshapeReshapeTraining/gradients/FillFTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ѕ
>Training/gradients/Training/cross_entropy_loss/Mean_grad/ConstConst*
valueB:*
dtype0*
_output_shapes
:
■
=Training/gradients/Training/cross_entropy_loss/Mean_grad/TileTile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Reshape>Training/gradients/Training/cross_entropy_loss/Mean_grad/Const*
T0*
_output_shapes
:*

Tmultiples0
Ё
@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1Const*
valueB
 *  ђA*
dtype0*
_output_shapes
: 
ы
@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivRealDiv=Training/gradients/Training/cross_entropy_loss/Mean_grad/Tile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1*
_output_shapes
:*
T0
║
Training/gradients/zeros_like	ZerosLikeeTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
Т
ІTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradienteTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
о
іTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
Ў
єTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivіTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
к
Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulєTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsІTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
Џ
=Training/gradients/Training/logits_prediction/Mean_grad/ShapeShapeTraining/logits_prediction/mul*
_output_shapes
:*
T0*
out_type0
л
<Training/gradients/Training/logits_prediction/Mean_grad/SizeConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
д
;Training/gradients/Training/logits_prediction/Mean_grad/addAdd1Training/logits_prediction/Mean/reduction_indices<Training/gradients/Training/logits_prediction/Mean_grad/Size*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
: 
х
;Training/gradients/Training/logits_prediction/Mean_grad/modFloorMod;Training/gradients/Training/logits_prediction/Mean_grad/add<Training/gradients/Training/logits_prediction/Mean_grad/Size*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
: 
н
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1Const*
dtype0*
_output_shapes
: *P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
valueB 
О
CTraining/gradients/Training/logits_prediction/Mean_grad/range/startConst*
dtype0*
_output_shapes
: *P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B : 
О
CTraining/gradients/Training/logits_prediction/Mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :
ѕ
=Training/gradients/Training/logits_prediction/Mean_grad/rangeRangeCTraining/gradients/Training/logits_prediction/Mean_grad/range/start<Training/gradients/Training/logits_prediction/Mean_grad/SizeCTraining/gradients/Training/logits_prediction/Mean_grad/range/delta*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
:*

Tidx0
о
BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :
╬
<Training/gradients/Training/logits_prediction/Mean_grad/FillFill?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/value*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*

index_type0*
_output_shapes
: 
п
ETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchDynamicStitch=Training/gradients/Training/logits_prediction/Mean_grad/range;Training/gradients/Training/logits_prediction/Mean_grad/mod=Training/gradients/Training/logits_prediction/Mean_grad/Shape<Training/gradients/Training/logits_prediction/Mean_grad/Fill*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
N*#
_output_shapes
:         
Н
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/yConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
н
?Training/gradients/Training/logits_prediction/Mean_grad/MaximumMaximumETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/y*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*#
_output_shapes
:         
├
@Training/gradients/Training/logits_prediction/Mean_grad/floordivFloorDiv=Training/gradients/Training/logits_prediction/Mean_grad/Shape?Training/gradients/Training/logits_prediction/Mean_grad/Maximum*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
:
├
?Training/gradients/Training/logits_prediction/Mean_grad/ReshapeReshapeTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
А
<Training/gradients/Training/logits_prediction/Mean_grad/TileTile?Training/gradients/Training/logits_prediction/Mean_grad/Reshape@Training/gradients/Training/logits_prediction/Mean_grad/floordiv*

Tmultiples0*
T0*=
_output_shapes+
):'                           
Ю
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2ShapeTraining/logits_prediction/mul*
_output_shapes
:*
T0*
out_type0
љ
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3Const*
valueB"      *
dtype0*
_output_shapes
:
Є
=Training/gradients/Training/logits_prediction/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
ѓ
<Training/gradients/Training/logits_prediction/Mean_grad/ProdProd?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2=Training/gradients/Training/logits_prediction/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Ѕ
?Training/gradients/Training/logits_prediction/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
є
>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1Prod?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3?Training/gradients/Training/logits_prediction/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Ё
CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ы
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1Maximum>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
­
BTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1FloorDiv<Training/gradients/Training/logits_prediction/Mean_grad/ProdATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
И
<Training/gradients/Training/logits_prediction/Mean_grad/CastCastBTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
Ч
?Training/gradients/Training/logits_prediction/Mean_grad/truedivRealDiv<Training/gradients/Training/logits_prediction/Mean_grad/Tile<Training/gradients/Training/logits_prediction/Mean_grad/Cast*
T0*+
_output_shapes
:         
Њ
<Training/gradients/Training/logits_prediction/mul_grad/ShapeShapeTraining/logits/Reshape*
T0*
out_type0*
_output_shapes
:
Њ
>Training/gradients/Training/logits_prediction/mul_grad/Shape_1ShapeTraining/ExpandDims_1*
T0*
out_type0*
_output_shapes
:
а
LTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<Training/gradients/Training/logits_prediction/mul_grad/Shape>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
¤
:Training/gradients/Training/logits_prediction/mul_grad/MulMul?Training/gradients/Training/logits_prediction/Mean_grad/truedivTraining/ExpandDims_1*
T0*+
_output_shapes
:         
І
:Training/gradients/Training/logits_prediction/mul_grad/SumSum:Training/gradients/Training/logits_prediction/mul_grad/MulLTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Є
>Training/gradients/Training/logits_prediction/mul_grad/ReshapeReshape:Training/gradients/Training/logits_prediction/mul_grad/Sum<Training/gradients/Training/logits_prediction/mul_grad/Shape*+
_output_shapes
:         *
T0*
Tshape0
М
<Training/gradients/Training/logits_prediction/mul_grad/Mul_1MulTraining/logits/Reshape?Training/gradients/Training/logits_prediction/Mean_grad/truediv*+
_output_shapes
:         *
T0
Љ
<Training/gradients/Training/logits_prediction/mul_grad/Sum_1Sum<Training/gradients/Training/logits_prediction/mul_grad/Mul_1NTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ї
@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1Reshape<Training/gradients/Training/logits_prediction/mul_grad/Sum_1>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*
T0*
Tshape0*+
_output_shapes
:         
М
GTraining/gradients/Training/logits_prediction/mul_grad/tuple/group_depsNoOp?^Training/gradients/Training/logits_prediction/mul_grad/ReshapeA^Training/gradients/Training/logits_prediction/mul_grad/Reshape_1
Ь
OTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/logits_prediction/mul_grad/ReshapeH^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape*+
_output_shapes
:         
З
QTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1H^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1*+
_output_shapes
:         
њ
5Training/gradients/Training/logits/Reshape_grad/ShapeShapeTraining/logits/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:
і
7Training/gradients/Training/logits/Reshape_grad/ReshapeReshapeOTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency5Training/gradients/Training/logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
┼
ATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradBiasAddGrad7Training/gradients/Training/logits/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
╠
FTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_depsNoOp8^Training/gradients/Training/logits/Reshape_grad/ReshapeB^Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad
┌
NTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencyIdentity7Training/gradients/Training/logits/Reshape_grad/ReshapeG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@Training/gradients/Training/logits/Reshape_grad/Reshape*'
_output_shapes
:         
с
PTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1IdentityATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
ѕ
;Training/gradients/Training/logits/dense/MatMul_grad/MatMulMatMulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencylogits/dense/kernel/read*
T0*(
_output_shapes
:         ђ*
transpose_a( *
transpose_b(
ї
=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1MatMul#Training/logits/dropout/dropout/mulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	ђ*
transpose_a(*
transpose_b( 
╦
ETraining/gradients/Training/logits/dense/MatMul_grad/tuple/group_depsNoOp<^Training/gradients/Training/logits/dense/MatMul_grad/MatMul>^Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1
р
MTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependencyIdentity;Training/gradients/Training/logits/dense/MatMul_grad/MatMulF^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:         ђ*
T0*N
_classD
B@loc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul
я
OTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1Identity=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1F^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*
T0*P
_classF
DBloc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1*
_output_shapes
:	ђ
ц
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeShape#Training/logits/dropout/dropout/div*
T0*
out_type0*
_output_shapes
:
е
CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1Shape%Training/logits/dropout/dropout/Floor*
T0*
out_type0*
_output_shapes
:
»
QTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
№
?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulMulMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency%Training/logits/dropout/dropout/Floor*
T0*(
_output_shapes
:         ђ
џ
?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumSum?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulQTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Њ
CTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:         ђ
№
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1Mul#Training/logits/dropout/dropout/divMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:         ђ
а
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1STraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ў
ETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:         ђ
Р
LTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1
 
TTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape*(
_output_shapes
:         ђ
Ё
VTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1*(
_output_shapes
:         ђ
Џ
ATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeShapeTraining/rnn_model/Reshape*
T0*
out_type0*
_output_shapes
:
є
CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
»
QTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ѓ
CTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivRealDivTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:         ђ
ъ
?Training/gradients/Training/logits/dropout/dropout/div_grad/SumSumCTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivQTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Њ
CTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/div_grad/SumATraining/gradients/Training/logits/dropout/dropout/div_grad/Shape*(
_output_shapes
:         ђ*
T0*
Tshape0
Ћ
?Training/gradients/Training/logits/dropout/dropout/div_grad/NegNegTraining/rnn_model/Reshape*
T0*(
_output_shapes
:         ђ
№
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1RealDiv?Training/gradients/Training/logits/dropout/dropout/div_grad/Neg)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:         ђ
ш
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2RealDivETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:         ђ
ќ
?Training/gradients/Training/logits/dropout/dropout/div_grad/mulMulTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:         ђ
ъ
ATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1Sum?Training/gradients/Training/logits/dropout/dropout/div_grad/mulSTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Є
ETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Р
LTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/div_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1
 
TTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*(
_output_shapes
:         ђ*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape
з
VTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1*
_output_shapes
: 
ц
8Training/gradients/Training/rnn_model/Reshape_grad/ShapeShape,Training/rnn_model/recurrent/rnn/transpose_1*
T0*
out_type0*
_output_shapes
:
џ
:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeReshapeTTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency8Training/gradients/Training/rnn_model/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:         ђ
╗
VTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutationInvertPermutation)Training/rnn_model/recurrent/rnn/concat_2*
_output_shapes
:*
T0
│
NTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose	Transpose:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeVTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutation*
Tperm0*
T0*,
_output_shapes
:         ђ
­
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
sourceTraining/gradients*
_output_shapes

:: 
Џ
{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity-Training/rnn_model/recurrent/rnn/while/Exit_2ђ^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray
к
ЁTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV37Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeNTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
y
(Training/gradients/zeros/shape_as_tensorConst*
valueB"      *
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
д
Training/gradients/zerosFill(Training/gradients/zeros/shape_as_tensorTraining/gradients/zeros/Const*
_output_shapes
:	ђ*
T0*

index_type0
{
*Training/gradients/zeros_1/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
e
 Training/gradients/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
г
Training/gradients/zeros_1Fill*Training/gradients/zeros_1/shape_as_tensor Training/gradients/zeros_1/Const*
_output_shapes
:	ђ*
T0*

index_type0
Ё
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitEnterЁTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
а
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitEnterTraining/gradients/zeros*
parallel_iterations *
_output_shapes
:	ђ*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
б
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitEnterTraining/gradients/zeros_1*
parallel_iterations *
_output_shapes
:	ђ*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
г
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIteration*
N*
_output_shapes
: : *
T0
х
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	ђ: 
х
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	ђ: 
¤
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: : 
»
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch
џ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
ъ
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
_output_shapes
: *
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch
р
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch**
_output_shapes
:	ђ:	ђ
»
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch
Б
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch*
_output_shapes
:	ђ
Д
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch*
_output_shapes
:	ђ
р
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch**
_output_shapes
:	ђ:	ђ
»
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch
Б
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	ђ
Д
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	ђ
Н
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_2_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
я
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_3_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency*
T0*
_output_shapes
:	ђ
я
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_4_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency*
_output_shapes
:	ђ*
T0
Њ
ёTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3іTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnteraTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
sourceTraining/gradients*
_output_shapes

:: 
╣
іTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
parallel_iterations *
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2
С
ђTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1Ё^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
┬
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3ёTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2ђTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:	ђ
І
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1*
valueB :
         *
dtype0*
_output_shapes
: 
є
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*

stack_name *
_output_shapes
:*
	elem_type0*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1
ў
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ї
ђTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1^Training/gradients/Add*
T0*
_output_shapes
: *
swap_memory(
О
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2ЁTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
: *
	elem_type0
и
ЁTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
ћ
{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerZ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2ђ^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2d^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2\^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
о
sTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpb^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1u^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
Д
{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentitytTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*Є
_class}
{yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
_output_shapes
:	ђ
У
}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
_output_shapes
: *
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch
╠
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
Х
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
н
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	ђ
ћ
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like*
T0*
_output_shapes
:	ђ
у
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/ConstConst*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*
valueB :
         *
dtype0*
_output_shapes
: 
╝
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_accStackV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Const*
	elem_type0
*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*

stack_name *
_output_shapes
:
╠
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
┼
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2StackPushV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Enter3Training/rnn_model/recurrent/rnn/while/GreaterEqual^Training/gradients/Add*
T0
*
_output_shapes
:*
swap_memory(
ј
YTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2
StackPopV2_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:*
	elem_type0

Ж
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
ќ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	ђ
ё
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
ц
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
_output_shapes
:	ђ
ф
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	ђ
╠
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
Х
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
н
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	ђ
ћ
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like*
T0*
_output_shapes
:	ђ
ќ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	ђ
ё
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1
ц
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
_output_shapes
:	ђ
ф
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
_output_shapes
:	ђ
╩
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
┤
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
╬
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_likeFill`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorVTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/Const*
_output_shapes
:	ђ*
T0*

index_type0
ф
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like*
_output_shapes
:	ђ*
T0
г
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*
_output_shapes
:	ђ
■
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_depsNoOpM^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1
ю
^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependencyIdentityLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectW^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
T0*_
_classU
SQloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select*
_output_shapes
:	ђ
б
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1IdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1W^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
_output_shapes
:	ђ*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1
§
Training/gradients/AddNAddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
N*
_output_shapes
:	ђ
ч
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulMulTraining/gradients/AddN]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*
_output_shapes
:	ђ
№
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
valueB :
         *
dtype0*
_output_shapes
: 
╚
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1
н
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
о
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1^Training/gradients/Add*
_output_shapes
:	ђ*
swap_memory(*
T0
Џ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
Ы
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
 
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1MulTraining/gradients/AddN_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	ђ
З
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/ConstConst*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*
valueB :
         *
dtype0*
_output_shapes
: 
¤
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Const*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*

stack_name *
_output_shapes
:*
	elem_type0
п
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
П
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2^Training/gradients/Add*
_output_shapes
:	ђ*
swap_memory(*
T0
Ъ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
Ш
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Њ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1
║
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul*
_output_shapes
:	ђ
└
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
_output_shapes
:	ђ*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1
ѕ
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIterationNextIteration}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
р
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes
:	ђ
п
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1*
_output_shapes
:	ђ*
T0
э
Training/gradients/AddN_1AddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGrad*
N*
_output_shapes
:	ђ*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
Ѓ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_depsNoOp^Training/gradients/AddN_1
 
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependencyIdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	ђ
Ђ
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1IdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	ђ
К
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulMulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2*
T0*
_output_shapes
:	ђ
у
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/ConstConst*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*
valueB :
         *
dtype0*
_output_shapes
: 
Й
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_accStackV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Const*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*

stack_name *
_output_shapes
:*
	elem_type0
л
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
╠
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2StackPushV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Enter1Training/rnn_model/recurrent/rnn/while/Identity_3^Training/gradients/Add*
_output_shapes
:	ђ*
swap_memory(*
T0
Ќ
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2
StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
:	ђ
Ь
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
╦
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1MulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	ђ
­
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*
valueB :
         
╔
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Const*K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
н
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
О
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Enter8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid^Training/gradients/Add*
T0*
_output_shapes
:	ђ*
swap_memory(
Џ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
Ы
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ї
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_depsNoOpQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1
▓
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependencyIdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul*
_output_shapes
:	ђ
И
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1IdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1*
_output_shapes
:	ђ
═
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2*
T0*
_output_shapes
:	ђ
ь
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/ConstConst*
dtype0*
_output_shapes
: *H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
valueB :
         
к
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Const*H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
н
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
н
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Enter5Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh^Training/gradients/Add*
T0*
_output_shapes
:	ђ*
swap_memory(
Џ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
Ы
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Л
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1MuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2*
_output_shapes
:	ђ*
T0
З
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*
valueB :
         
¤
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Const*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:*
	elem_type0
п
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
П
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1^Training/gradients/Add*
_output_shapes
:	ђ*
swap_memory(*
T0
Ъ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
Ш
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Њ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1
║
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
_output_shapes
:	ђ*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul
└
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1*
_output_shapes
:	ђ
█
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:	ђ
ѓ
Training/gradients/AddN_2AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencygTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
N*
_output_shapes
:	ђ
р
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes
:	ђ
о
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	ђ
╝
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
░
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1Const^Training/gradients/Sub*
dtype0*
_output_shapes
: *
valueB 
Р
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┘
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumSum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradbTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
й
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeReshapePTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:	ђ
П
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1Sum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGraddTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
║
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1ReshapeRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
Ћ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_depsNoOpU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1
║
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependencyIdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
_output_shapes
:	ђ*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape
и
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency_1IdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1*
_output_shapes
: 
Г
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIterationNextIterationTraining/gradients/AddN_2*
T0*
_output_shapes
:	ђ
Ч
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatConcatV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradeTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGrad[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/Const*
N*
_output_shapes
:	ђ*

Tidx0*
T0
Х
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
 
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:ђ
а
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_depsNoOp]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat
─
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
_output_shapes
:	ђ
л
kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identity\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*o
_classe
caloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:ђ
щ
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulMatMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/Enter*
T0*
_output_shapes
:	ђ*
transpose_a( *
transpose_b(
к
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
ђђ*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ѓ
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1MatMulcTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
ђђ*
transpose_a(*
transpose_b( *
T0
ш
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat*
valueB :
         *
dtype0*
_output_shapes
: 
н
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Const*
	elem_type0*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat*

stack_name *
_output_shapes
:
Я
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Р
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat^Training/gradients/Add*
T0*
_output_shapes
:	ђ*
swap_memory(
Д
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
■
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
ю
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_depsNoOpW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulY^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1
─
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependencyIdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMula^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
_output_shapes
:	ђ*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul
╦
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
ђђ
Ф
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
Ы
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1Enter\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes	
:ђ*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
я
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Merge^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:ђ: 
њ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/SwitchSwitch^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Training/gradients/b_count_2*
T0*"
_output_shapes
:ђ:ђ
Н
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/AddAdd_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch:1kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:ђ
э
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes	
:ђ
в
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3Exit]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:ђ
░
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstConst^Training/gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
»
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/RankConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Г
STraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modFloorModUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
┐
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeConst^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"      
┴
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1Const^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
ю
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetConcatOffsetSTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
┤
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceSlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape*
_output_shapes
:	ђ*
Index0*
T0
║
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1SlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffset:1WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
_output_shapes
:	ђ*
Index0*
T0
џ
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_depsNoOpV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceX^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1
┬
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slicea^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice*
_output_shapes
:	ђ
╚
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1IdentityWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
T0*j
_class`
^\loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1*
_output_shapes
:	ђ
┤
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
ђђ*    *
dtype0* 
_output_shapes
:
ђђ
ш
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1Enter[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
ђђ*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Я
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Merge]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
ђђ: 
џ
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/SwitchSwitch]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Training/gradients/b_count_2*
T0*,
_output_shapes
:
ђђ:
ђђ
О
YTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/AddAdd^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch:1jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
ђђ
Щ
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationYTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Add* 
_output_shapes
:
ђђ*
T0
Ь
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3Exit\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
ђђ
Д
rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^Training/gradients/Sub*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
sourceTraining/gradients*
_output_shapes

:: 
░
xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
█
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
▀
nTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1s^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
Щ
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencynTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
_output_shapes
: *
T0
Ё
Training/gradients/AddN_3AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyjTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
N*
_output_shapes
:	ђ
Б
^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ы
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
▀
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
ї
_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Training/gradients/b_count_2*
T0*
_output_shapes
: : 
П
\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddaTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
Ш
fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
Ж
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
Г
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIterationNextIterationTraining/gradients/AddN_3*
T0*
_output_shapes
:	ђ
Й
ЋTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3.Training/rnn_model/recurrent/rnn/TensorArray_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
sourceTraining/gradients*
_output_shapes

:: 
§
ЉTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ќ^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
_output_shapes
: 
п
ЄTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3ЋTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV39Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeЉTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:*
dtype0*,
_output_shapes
:         ђ
ч
ёTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpѕ^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3a^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
ѓ
їTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityЄTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3Ё^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*Ю
_classњ
Јїloc:@Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*,
_output_shapes
:         ђ
Џ
јTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Ё^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*s
_classi
geloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
и
TTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutationInvertPermutation'Training/rnn_model/recurrent/rnn/concat*
_output_shapes
:*
T0
ѓ
LTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose	TransposeїTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyTTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutation*
T0*,
_output_shapes
:         ђ*
Tperm0
Ќ
:Training/gradients/Training/cnn_model/Reshape_2_grad/ShapeShapeTraining/cnn_model/dense/Relu*
T0*
out_type0*
_output_shapes
:
њ
<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeReshapeLTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose:Training/gradients/Training/cnn_model/Reshape_2_grad/Shape*(
_output_shapes
:         ђ*
T0*
Tshape0
┌
>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradReluGrad<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeTraining/cnn_model/dense/Relu*(
_output_shapes
:         ђ*
T0
л
DTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradBiasAddGrad>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:ђ
┘
ITraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_depsNoOpE^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad?^Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad
№
QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*(
_output_shapes
:         ђ
­
STraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1IdentityDTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:ђ*
T0*W
_classM
KIloc:@Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad
Љ
>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulMatMulQTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencycnn_model/dense/kernel/read*(
_output_shapes
:         ђ*
transpose_a( *
transpose_b(*
T0
ї
@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1MatMulTraining/cnn_model/Reshape_1QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
ђђ*
transpose_a(
н
HTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_depsNoOp?^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulA^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1
ь
PTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulI^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul*(
_output_shapes
:         ђ
в
RTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1I^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps* 
_output_shapes
:
ђђ*
T0*S
_classI
GEloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1
░
:Training/gradients/Training/cnn_model/Reshape_1_grad/ShapeShape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool*
T0*
out_type0*
_output_shapes
:
ъ
<Training/gradients/Training/cnn_model/Reshape_1_grad/ReshapeReshapePTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency:Training/gradients/Training/cnn_model/Reshape_1_grad/Shape*
T0*
Tshape0*0
_output_shapes
:         ђ
џ
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu6Training/cnn_model/convolution/max_pooling2d_4/MaxPool<Training/gradients/Training/cnn_model/Reshape_1_grad/Reshape*0
_output_shapes
:         ђ*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
ъ
MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu*
T0*0
_output_shapes
:         ђ
Ь
STraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:ђ*
T0
є
XTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad
│
`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*0
_output_shapes
:         ђ
г
bTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:ђ
 
MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
Ц
LTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ConstConst*%
valueB"      ђ      *
dtype0*
_output_shapes
:
Љ
ZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_4/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency*
paddingSAME*J
_output_shapes8
6:4                                    *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ч
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
:ђђ
џ
WTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput
╦
_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:         ђ
К
aTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*(
_output_shapes
:ђђ
й
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu6Training/cnn_model/convolution/max_pooling2d_3/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:         

ђ
ъ
MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu*
T0*0
_output_shapes
:         

ђ
Ь
STraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:ђ*
T0
є
XTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad
│
`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*0
_output_shapes
:         

ђ
г
bTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:ђ
 
MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Ц
LTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ConstConst*%
valueB"      @   ђ   *
dtype0*
_output_shapes
:
Љ
ZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_3/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4                                    *
	dilations
*
T0
ч
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
:@ђ
џ
WTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput
╩
_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*/
_output_shapes
:         

@*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput
к
aTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*'
_output_shapes
:@ђ*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter
╝
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu6Training/cnn_model/convolution/max_pooling2d_2/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency*
ksize
*
paddingSAME*/
_output_shapes
:         @*
T0*
data_formatNHWC*
strides

Ю
MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu*
T0*/
_output_shapes
:         @
ь
STraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
є
XTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad
▓
`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:         @*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad
Ф
bTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGrad
 
MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
Ц
LTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ConstConst*
dtype0*
_output_shapes
:*%
valueB"          @   
Љ
ZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_2/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4                                    
Щ
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
џ
WTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput
╩
_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*/
_output_shapes
:          *
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput
┼
aTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
╝
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu6Training/cnn_model/convolution/max_pooling2d_1/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:         (( *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
Ю
MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu*
T0*/
_output_shapes
:         (( 
ь
STraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
є
XTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad
▓
`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*/
_output_shapes
:         (( 
Ф
bTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
§
MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeNShapeN4Training/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Ц
LTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ConstConst*
dtype0*
_output_shapes
:*%
valueB"             
Љ
ZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_1/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Э
[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter4Training/cnn_model/convolution/max_pooling2d/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: 
џ
WTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput
╩
_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:         ((
┼
aTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter
Х
XTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu4Training/cnn_model/convolution/max_pooling2d/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:         PP*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
Ќ
KTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradReluGradXTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu*
T0*/
_output_shapes
:         PP
ж
QTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradBiasAddGradKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0
ђ
VTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_depsNoOpR^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradL^Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad
ф
^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependencyIdentityKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
T0*^
_classT
RPloc:@Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:         PP
Б
`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1IdentityQTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*d
_classZ
XVloc:@Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGrad
▀
KTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeNShapeNTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Б
JTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ConstConst*
dtype0*
_output_shapes
:*%
valueB"            
Ѕ
XTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputKTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeN(cnn_model/convolution/conv2d/kernel/read^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4                                    *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
п
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
ћ
UTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_depsNoOpZ^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterY^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput
┬
]Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependencyIdentityXTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:         PP
й
_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1IdentityYTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*l
_classb
`^loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilter
Ю
"Training/beta1_power/initial_valueConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
«
Training/beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
▀
Training/beta1_power/AssignAssignTraining/beta1_power"Training/beta1_power/initial_value*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 
њ
Training/beta1_power/readIdentityTraining/beta1_power*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
Ю
"Training/beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *wЙ?
«
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
▀
Training/beta2_power/AssignAssignTraining/beta2_power"Training/beta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
њ
Training/beta2_power/readIdentityTraining/beta2_power*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
О
:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zerosConst*
dtype0*&
_output_shapes
:*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    
С
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
▒
/cnn_model/convolution/conv2d/kernel/Adam/AssignAssign(cnn_model/convolution/conv2d/kernel/Adam:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zeros*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
╠
-cnn_model/convolution/conv2d/kernel/Adam/readIdentity(cnn_model/convolution/conv2d/kernel/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
┘
<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
Т
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
и
1cnn_model/convolution/conv2d/kernel/Adam_1/AssignAssign*cnn_model/convolution/conv2d/kernel/Adam_1<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:
л
/cnn_model/convolution/conv2d/kernel/Adam_1/readIdentity*cnn_model/convolution/conv2d/kernel/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
╗
8cnn_model/convolution/conv2d/bias/Adam/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
╚
&cnn_model/convolution/conv2d/bias/Adam
VariableV2*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ю
-cnn_model/convolution/conv2d/bias/Adam/AssignAssign&cnn_model/convolution/conv2d/bias/Adam8cnn_model/convolution/conv2d/bias/Adam/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
:
║
+cnn_model/convolution/conv2d/bias/Adam/readIdentity&cnn_model/convolution/conv2d/bias/Adam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:
й
:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
╩
(cnn_model/convolution/conv2d/bias/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Б
/cnn_model/convolution/conv2d/bias/Adam_1/AssignAssign(cnn_model/convolution/conv2d/bias/Adam_1:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Й
-cnn_model/convolution/conv2d/bias/Adam_1/readIdentity(cnn_model/convolution/conv2d/bias/Adam_1*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:
▀
Lcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
┴
Bcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
М
<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0
У
*cnn_model/convolution/conv2d_1/kernel/Adam
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container 
╣
1cnn_model/convolution/conv2d_1/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_1/kernel/Adam<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
м
/cnn_model/convolution/conv2d_1/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_1/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
р
Ncnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             
├
Dcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
┘
>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/Const*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0
Ж
,cnn_model/convolution/conv2d_1/kernel/Adam_1
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container *
shape: 
┐
3cnn_model/convolution/conv2d_1/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_1/kernel/Adam_1>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
о
1cnn_model/convolution/conv2d_1/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_1/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
┐
:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
╠
(cnn_model/convolution/conv2d_1/bias/Adam
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
Ц
/cnn_model/convolution/conv2d_1/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_1/bias/Adam:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: 
└
-cnn_model/convolution/conv2d_1/bias/Adam/readIdentity(cnn_model/convolution/conv2d_1/bias/Adam*
_output_shapes
: *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
┴
<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
╬
*cnn_model/convolution/conv2d_1/bias/Adam_1
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ф
1cnn_model/convolution/conv2d_1/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_1/bias/Adam_1<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: 
─
/cnn_model/convolution/conv2d_1/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_1/bias/Adam_1*
_output_shapes
: *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
▀
Lcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
┴
Bcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
М
<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0*&
_output_shapes
: @
У
*cnn_model/convolution/conv2d_2/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
	container *
shape: @
╣
1cnn_model/convolution/conv2d_2/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_2/kernel/Adam<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
м
/cnn_model/convolution/conv2d_2/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_2/kernel/Adam*&
_output_shapes
: @*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
р
Ncnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
├
Dcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    
┘
>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0*&
_output_shapes
: @
Ж
,cnn_model/convolution/conv2d_2/kernel/Adam_1
VariableV2*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name 
┐
3cnn_model/convolution/conv2d_2/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_2/kernel/Adam_1>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
о
1cnn_model/convolution/conv2d_2/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_2/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
┐
:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
╠
(cnn_model/convolution/conv2d_2/bias/Adam
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
/cnn_model/convolution/conv2d_2/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_2/bias/Adam:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
└
-cnn_model/convolution/conv2d_2/bias/Adam/readIdentity(cnn_model/convolution/conv2d_2/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
┴
<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
╬
*cnn_model/convolution/conv2d_2/bias/Adam_1
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
Ф
1cnn_model/convolution/conv2d_2/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_2/bias/Adam_1<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
─
/cnn_model/convolution/conv2d_2/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_2/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
▀
Lcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   ђ   *
dtype0*
_output_shapes
:
┴
Bcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
н
<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/Const*'
_output_shapes
:@ђ*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0
Ж
*cnn_model/convolution/conv2d_3/kernel/Adam
VariableV2*
dtype0*'
_output_shapes
:@ђ*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@ђ
║
1cnn_model/convolution/conv2d_3/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_3/kernel/Adam<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros*
validate_shape(*'
_output_shapes
:@ђ*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
М
/cnn_model/convolution/conv2d_3/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_3/kernel/Adam*'
_output_shapes
:@ђ*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
р
Ncnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   ђ   *
dtype0*
_output_shapes
:
├
Dcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
┌
>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/Const*'
_output_shapes
:@ђ*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0
В
,cnn_model/convolution/conv2d_3/kernel/Adam_1
VariableV2*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@ђ*
dtype0*'
_output_shapes
:@ђ*
shared_name 
└
3cnn_model/convolution/conv2d_3/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_3/kernel/Adam_1>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros*
validate_shape(*'
_output_shapes
:@ђ*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
О
1cnn_model/convolution/conv2d_3/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_3/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@ђ
┴
:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
╬
(cnn_model/convolution/conv2d_3/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:ђ
д
/cnn_model/convolution/conv2d_3/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_3/bias/Adam:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:ђ
┴
-cnn_model/convolution/conv2d_3/bias/Adam/readIdentity(cnn_model/convolution/conv2d_3/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:ђ
├
<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
л
*cnn_model/convolution/conv2d_3/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:ђ
г
1cnn_model/convolution/conv2d_3/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_3/bias/Adam_1<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:ђ*
use_locking(
┼
/cnn_model/convolution/conv2d_3/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_3/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:ђ
▀
Lcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      ђ      *
dtype0*
_output_shapes
:
┴
Bcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Н
<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0*(
_output_shapes
:ђђ
В
*cnn_model/convolution/conv2d_4/kernel/Adam
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:ђђ*
dtype0*(
_output_shapes
:ђђ
╗
1cnn_model/convolution/conv2d_4/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_4/kernel/Adam<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ђђ
н
/cnn_model/convolution/conv2d_4/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_4/kernel/Adam*(
_output_shapes
:ђђ*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
р
Ncnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      ђ      *
dtype0*
_output_shapes
:
├
Dcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    
█
>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0*(
_output_shapes
:ђђ
Ь
,cnn_model/convolution/conv2d_4/kernel/Adam_1
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:ђђ*
dtype0*(
_output_shapes
:ђђ
┴
3cnn_model/convolution/conv2d_4/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_4/kernel/Adam_1>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros*
validate_shape(*(
_output_shapes
:ђђ*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
п
1cnn_model/convolution/conv2d_4/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_4/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:ђђ
┴
:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:ђ*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBђ*    
╬
(cnn_model/convolution/conv2d_4/bias/Adam
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:ђ*
dtype0*
_output_shapes	
:ђ*
shared_name 
д
/cnn_model/convolution/conv2d_4/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_4/bias/Adam:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:ђ*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias
┴
-cnn_model/convolution/conv2d_4/bias/Adam/readIdentity(cnn_model/convolution/conv2d_4/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:ђ
├
<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:ђ*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBђ*    
л
*cnn_model/convolution/conv2d_4/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:ђ
г
1cnn_model/convolution/conv2d_4/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_4/bias/Adam_1<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:ђ*
use_locking(
┼
/cnn_model/convolution/conv2d_4/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_4/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:ђ
╣
=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
Б
3cnn_model/dense/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    
Љ
-cnn_model/dense/kernel/Adam/Initializer/zerosFill=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensor3cnn_model/dense/kernel/Adam/Initializer/zeros/Const* 
_output_shapes
:
ђђ*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0
Й
cnn_model/dense/kernel/Adam
VariableV2*
	container *
shape:
ђђ*
dtype0* 
_output_shapes
:
ђђ*
shared_name *)
_class
loc:@cnn_model/dense/kernel
э
"cnn_model/dense/kernel/Adam/AssignAssigncnn_model/dense/kernel/Adam-cnn_model/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:
ђђ
Ъ
 cnn_model/dense/kernel/Adam/readIdentitycnn_model/dense/kernel/Adam*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
ђђ
╗
?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
Ц
5cnn_model/dense/kernel/Adam_1/Initializer/zeros/ConstConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ќ
/cnn_model/dense/kernel/Adam_1/Initializer/zerosFill?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor5cnn_model/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0* 
_output_shapes
:
ђђ
└
cnn_model/dense/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
ђђ*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:
ђђ
§
$cnn_model/dense/kernel/Adam_1/AssignAssigncnn_model/dense/kernel/Adam_1/cnn_model/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:
ђђ
Б
"cnn_model/dense/kernel/Adam_1/readIdentitycnn_model/dense/kernel/Adam_1*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
ђђ
Б
+cnn_model/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:ђ*'
_class
loc:@cnn_model/dense/bias*
valueBђ*    
░
cnn_model/dense/bias/Adam
VariableV2*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:ђ*
dtype0*
_output_shapes	
:ђ
Ж
 cnn_model/dense/bias/Adam/AssignAssigncnn_model/dense/bias/Adam+cnn_model/dense/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:ђ*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias
ћ
cnn_model/dense/bias/Adam/readIdentitycnn_model/dense/bias/Adam*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:ђ
Ц
-cnn_model/dense/bias/Adam_1/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
▓
cnn_model/dense/bias/Adam_1
VariableV2*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:ђ*
dtype0*
_output_shapes	
:ђ
­
"cnn_model/dense/bias/Adam_1/AssignAssigncnn_model/dense/bias/Adam_1-cnn_model/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:ђ
ў
 cnn_model/dense/bias/Adam_1/readIdentitycnn_model/dense/bias/Adam_1*
_output_shapes	
:ђ*
T0*'
_class
loc:@cnn_model/dense/bias
П
Ornn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      
К
Ernn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
┘
?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:
ђђ
Р
-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam
VariableV2*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:
ђђ*
dtype0* 
_output_shapes
:
ђђ*
shared_name 
┐
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
ђђ
Н
2rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/readIdentity-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam* 
_output_shapes
:
ђђ*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
▀
Qrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
╔
Grnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    
▀
Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zerosFillQrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorGrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:
ђђ
С
/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
ђђ*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:
ђђ
┼
6rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/AssignAssign/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
ђђ
┘
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/readIdentity/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
ђђ
М
Mrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:ђ
├
Crnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    
╠
=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zerosFillMrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorCrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/Const*
_output_shapes	
:ђ*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0
н
+rnn_model/recurrent/rnn/lstm_cell/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:ђ
▓
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam/AssignAssign+rnn_model/recurrent/rnn/lstm_cell/bias/Adam=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:ђ
╩
0rnn_model/recurrent/rnn/lstm_cell/bias/Adam/readIdentity+rnn_model/recurrent/rnn/lstm_cell/bias/Adam*
_output_shapes	
:ђ*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias
Н
Ornn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:ђ*
dtype0*
_output_shapes
:
┼
Ernn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
м
?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:ђ
о
-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1
VariableV2*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:ђ*
dtype0*
_output_shapes	
:ђ
И
4rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:ђ*
use_locking(
╬
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/readIdentity-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:ђ
│
:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ю
0logits/dense/kernel/Adam/Initializer/zeros/ConstConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ё
*logits/dense/kernel/Adam/Initializer/zerosFill:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensor0logits/dense/kernel/Adam/Initializer/zeros/Const*
_output_shapes
:	ђ*
T0*&
_class
loc:@logits/dense/kernel*

index_type0
Х
logits/dense/kernel/Adam
VariableV2*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	ђ*
dtype0*
_output_shapes
:	ђ
Ж
logits/dense/kernel/Adam/AssignAssignlogits/dense/kernel/Adam*logits/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel*
validate_shape(*
_output_shapes
:	ђ
Ћ
logits/dense/kernel/Adam/readIdentitylogits/dense/kernel/Adam*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	ђ
х
<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*&
_class
loc:@logits/dense/kernel*
valueB"      
Ъ
2logits/dense/kernel/Adam_1/Initializer/zeros/ConstConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
і
,logits/dense/kernel/Adam_1/Initializer/zerosFill<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor2logits/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*&
_class
loc:@logits/dense/kernel*

index_type0*
_output_shapes
:	ђ
И
logits/dense/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes
:	ђ*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	ђ
­
!logits/dense/kernel/Adam_1/AssignAssignlogits/dense/kernel/Adam_1,logits/dense/kernel/Adam_1/Initializer/zeros*
T0*&
_class
loc:@logits/dense/kernel*
validate_shape(*
_output_shapes
:	ђ*
use_locking(
Ў
logits/dense/kernel/Adam_1/readIdentitylogits/dense/kernel/Adam_1*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	ђ
Џ
(logits/dense/bias/Adam/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
е
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
П
logits/dense/bias/Adam/AssignAssignlogits/dense/bias/Adam(logits/dense/bias/Adam/Initializer/zeros*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
і
logits/dense/bias/Adam/readIdentitylogits/dense/bias/Adam*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:
Ю
*logits/dense/bias/Adam_1/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
ф
logits/dense/bias/Adam_1
VariableV2*
shared_name *$
_class
loc:@logits/dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:
с
logits/dense/bias/Adam_1/AssignAssignlogits/dense/bias/Adam_1*logits/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:
ј
logits/dense/bias/Adam_1/readIdentitylogits/dense/bias/Adam_1*
_output_shapes
:*
T0*$
_class
loc:@logits/dense/bias
X
Training/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
X
Training/Adam/beta2Const*
valueB
 *wЙ?*
dtype0*
_output_shapes
: 
Z
Training/Adam/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
═
BTraining/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d/kernel(cnn_model/convolution/conv2d/kernel/Adam*cnn_model/convolution/conv2d/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
use_nesterov( *&
_output_shapes
:
И
@Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdam	ApplyAdam!cnn_model/convolution/conv2d/bias&cnn_model/convolution/conv2d/bias/Adam(cnn_model/convolution/conv2d/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
┘
DTraining/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_1/kernel*cnn_model/convolution/conv2d_1/kernel/Adam,cnn_model/convolution/conv2d_1/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *&
_output_shapes
: *
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
─
BTraining/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_1/bias(cnn_model/convolution/conv2d_1/bias/Adam*cnn_model/convolution/conv2d_1/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
┘
DTraining/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_2/kernel*cnn_model/convolution/conv2d_2/kernel/Adam,cnn_model/convolution/conv2d_2/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *&
_output_shapes
: @*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
─
BTraining/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_2/bias(cnn_model/convolution/conv2d_2/bias/Adam*cnn_model/convolution/conv2d_2/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
use_nesterov( *
_output_shapes
:@
┌
DTraining/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_3/kernel*cnn_model/convolution/conv2d_3/kernel/Adam,cnn_model/convolution/conv2d_3/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *'
_output_shapes
:@ђ*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
┼
BTraining/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_3/bias(cnn_model/convolution/conv2d_3/bias/Adam*cnn_model/convolution/conv2d_3/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:ђ*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias
█
DTraining/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_4/kernel*cnn_model/convolution/conv2d_4/kernel/Adam,cnn_model/convolution/conv2d_4/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
use_nesterov( *(
_output_shapes
:ђђ
┼
BTraining/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_4/bias(cnn_model/convolution/conv2d_4/bias/Adam*cnn_model/convolution/conv2d_4/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
use_nesterov( *
_output_shapes	
:ђ
щ
5Training/Adam/update_cnn_model/dense/kernel/ApplyAdam	ApplyAdamcnn_model/dense/kernelcnn_model/dense/kernel/Adamcnn_model/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonRTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1*
use_nesterov( * 
_output_shapes
:
ђђ*
use_locking( *
T0*)
_class
loc:@cnn_model/dense/kernel
в
3Training/Adam/update_cnn_model/dense/bias/ApplyAdam	ApplyAdamcnn_model/dense/biascnn_model/dense/bias/Adamcnn_model/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonSTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*'
_class
loc:@cnn_model/dense/bias*
use_nesterov( *
_output_shapes	
:ђ*
use_locking( 
я
GTraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam	ApplyAdam(rnn_model/recurrent/rnn/lstm_cell/kernel-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
ђђ*
use_locking( 
л
ETraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdam	ApplyAdam&rnn_model/recurrent/rnn/lstm_cell/bias+rnn_model/recurrent/rnn/lstm_cell/bias/Adam-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
use_locking( *
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
use_nesterov( *
_output_shapes	
:ђ
Т
2Training/Adam/update_logits/dense/kernel/ApplyAdam	ApplyAdamlogits/dense/kernellogits/dense/kernel/Adamlogits/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonOTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:	ђ*
use_locking( *
T0*&
_class
loc:@logits/dense/kernel
п
0Training/Adam/update_logits/dense/bias/ApplyAdam	ApplyAdamlogits/dense/biaslogits/dense/bias/Adamlogits/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonPTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*$
_class
loc:@logits/dense/bias
┐	
Training/Adam/mulMulTraining/beta1_power/readTraining/Adam/beta1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
_output_shapes
: *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
К
Training/Adam/AssignAssignTraining/beta1_powerTraining/Adam/mul*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
┴	
Training/Adam/mul_1MulTraining/beta2_power/readTraining/Adam/beta2A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
_output_shapes
: *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
╦
Training/Adam/Assign_1AssignTraining/beta2_powerTraining/Adam/mul_1*
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 
В
Training/Adam/updateNoOp^Training/Adam/Assign^Training/Adam/Assign_1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam
Ћ
Training/Adam/valueConst^Training/Adam/update*'
_class
loc:@Training/global_step*
value	B :*
dtype0*
_output_shapes
: 
б
Training/Adam	AssignAddTraining/global_stepTraining/Adam/value*
use_locking( *
T0*'
_class
loc:@Training/global_step*
_output_shapes
: 
g
Validation/SequenceMask/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
»
Validation/SequenceMask/MaxMax.validation_input_pipeline/batch_join_and_pad:4Validation/SequenceMask/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
Х
Validation/SequenceMask/RangeRangeValidation/SequenceMask/Const_1Validation/SequenceMask/MaxValidation/SequenceMask/Const_2*#
_output_shapes
:         *

Tidx0
q
&Validation/SequenceMask/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
й
"Validation/SequenceMask/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4&Validation/SequenceMask/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
ђ
Validation/SequenceMask/CastCast"Validation/SequenceMask/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0
Њ
Validation/SequenceMask/LessLessValidation/SequenceMask/RangeValidation/SequenceMask/Cast*
T0*'
_output_shapes
:         
Ё
Validation/SequenceMask/Cast_1CastValidation/SequenceMask/Less*

SrcT0
*'
_output_shapes
:         *

DstT0
d
Validation/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
а
Validation/ExpandDims
ExpandDimsValidation/SequenceMask/Cast_1Validation/ExpandDims/dim*

Tdim0*
T0*+
_output_shapes
:         
{
"Validation/cnn_model/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
├
Validation/cnn_model/ReshapeReshape.validation_input_pipeline/batch_join_and_pad:2"Validation/cnn_model/Reshape/shape*/
_output_shapes
:         PP*
T0*
Tshape0
є
5Validation/cnn_model/convolution/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
е
.Validation/cnn_model/convolution/conv2d/Conv2DConv2DValidation/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*/
_output_shapes
:         PP*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
с
/Validation/cnn_model/convolution/conv2d/BiasAddBiasAdd.Validation/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
data_formatNHWC*/
_output_shapes
:         PP*
T0
Ъ
,Validation/cnn_model/convolution/conv2d/ReluRelu/Validation/cnn_model/convolution/conv2d/BiasAdd*
T0*/
_output_shapes
:         PP
ч
6Validation/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool,Validation/cnn_model/convolution/conv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:         ((
ѕ
7Validation/cnn_model/convolution/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
к
0Validation/cnn_model/convolution/conv2d_1/Conv2DConv2D6Validation/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         (( *
	dilations

ж
1Validation/cnn_model/convolution/conv2d_1/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         (( 
Б
.Validation/cnn_model/convolution/conv2d_1/ReluRelu1Validation/cnn_model/convolution/conv2d_1/BiasAdd*
T0*/
_output_shapes
:         (( 
 
8Validation/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:          
ѕ
7Validation/cnn_model/convolution/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
╚
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
:         @
ж
1Validation/cnn_model/convolution/conv2d_2/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         @
Б
.Validation/cnn_model/convolution/conv2d_2/ReluRelu1Validation/cnn_model/convolution/conv2d_2/BiasAdd*
T0*/
_output_shapes
:         @
 
8Validation/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_2/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:         

@*
T0
ѕ
7Validation/cnn_model/convolution/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
╔
0Validation/cnn_model/convolution/conv2d_3/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         

ђ
Ж
1Validation/cnn_model/convolution/conv2d_3/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:         

ђ
ц
.Validation/cnn_model/convolution/conv2d_3/ReluRelu1Validation/cnn_model/convolution/conv2d_3/BiasAdd*
T0*0
_output_shapes
:         

ђ
ђ
8Validation/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_3/Relu*0
_output_shapes
:         ђ*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
ѕ
7Validation/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
╔
0Validation/cnn_model/convolution/conv2d_4/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         ђ*
	dilations

Ж
1Validation/cnn_model/convolution/conv2d_4/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:         ђ
ц
.Validation/cnn_model/convolution/conv2d_4/ReluRelu1Validation/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:         ђ
ђ
8Validation/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_4/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:         ђ
u
$Validation/cnn_model/Reshape_1/shapeConst*
valueB"     	  *
dtype0*
_output_shapes
:
╩
Validation/cnn_model/Reshape_1Reshape8Validation/cnn_model/convolution/max_pooling2d_4/MaxPool$Validation/cnn_model/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:         ђ
┴
!Validation/cnn_model/dense/MatMulMatMulValidation/cnn_model/Reshape_1cnn_model/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:         ђ*
transpose_a( 
х
"Validation/cnn_model/dense/BiasAddBiasAdd!Validation/cnn_model/dense/MatMulcnn_model/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         ђ
~
Validation/cnn_model/dense/ReluRelu"Validation/cnn_model/dense/BiasAdd*
T0*(
_output_shapes
:         ђ
y
$Validation/cnn_model/Reshape_2/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
х
Validation/cnn_model/Reshape_2ReshapeValidation/cnn_model/dense/Relu$Validation/cnn_model/Reshape_2/shape*
T0*
Tshape0*,
_output_shapes
:         ђ
i
Validation/SequenceMask_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
│
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
!Validation/SequenceMask_1/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
Й
Validation/SequenceMask_1/RangeRange!Validation/SequenceMask_1/Const_1Validation/SequenceMask_1/Max!Validation/SequenceMask_1/Const_2*#
_output_shapes
:         *

Tidx0
s
(Validation/SequenceMask_1/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
┴
$Validation/SequenceMask_1/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4(Validation/SequenceMask_1/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
ё
Validation/SequenceMask_1/CastCast$Validation/SequenceMask_1/ExpandDims*
_output_shapes

:*

DstT0*

SrcT0
Ў
Validation/SequenceMask_1/LessLessValidation/SequenceMask_1/RangeValidation/SequenceMask_1/Cast*
T0*'
_output_shapes
:         
Ѕ
 Validation/SequenceMask_1/Cast_1CastValidation/SequenceMask_1/Less*'
_output_shapes
:         *

DstT0*

SrcT0

f
Validation/ExpandDims_1/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
д
Validation/ExpandDims_1
ExpandDims Validation/SequenceMask_1/Cast_1Validation/ExpandDims_1/dim*

Tdim0*
T0*+
_output_shapes
:         
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
Р
(Validation/rnn_model/recurrent/rnn/rangeRange.Validation/rnn_model/recurrent/rnn/range/start'Validation/rnn_model/recurrent/rnn/Rank.Validation/rnn_model/recurrent/rnn/range/delta*

Tidx0*
_output_shapes
:
Ѓ
2Validation/rnn_model/recurrent/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
p
.Validation/rnn_model/recurrent/rnn/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
§
)Validation/rnn_model/recurrent/rnn/concatConcatV22Validation/rnn_model/recurrent/rnn/concat/values_0(Validation/rnn_model/recurrent/rnn/range.Validation/rnn_model/recurrent/rnn/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
╚
,Validation/rnn_model/recurrent/rnn/transpose	TransposeValidation/cnn_model/Reshape_2)Validation/rnn_model/recurrent/rnn/concat*
T0*,
_output_shapes
:         ђ*
Tperm0
Њ
2Validation/rnn_model/recurrent/rnn/sequence_lengthIdentity.validation_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:
ё
:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:
Є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
valueB:ђ*
dtype0*
_output_shapes
:
ѓ
@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
й
;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV2:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ё
@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
§
:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	ђ
є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
Є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
dtype0*
_output_shapes
:*
valueB:ђ
є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
valueB:*
dtype0*
_output_shapes
:
Є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:ђ*
dtype0*
_output_shapes
:
ё
BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
├
=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Є
BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ѓ
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
_output_shapes
:	ђ*
T0*

index_type0
є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
valueB:*
dtype0*
_output_shapes
:
Є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
valueB:ђ*
dtype0*
_output_shapes
:
r
(Validation/rnn_model/recurrent/rnn/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
r
(Validation/rnn_model/recurrent/rnn/stackConst*
valueB:*
dtype0*
_output_shapes
:
ф
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
Х
&Validation/rnn_model/recurrent/rnn/AllAll(Validation/rnn_model/recurrent/rnn/Equal(Validation/rnn_model/recurrent/rnn/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
┬
/Validation/rnn_model/recurrent/rnn/Assert/ConstConst*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
ѓ
1Validation/rnn_model/recurrent/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
╩
7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
ѕ
7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
╚
0Validation/rnn_model/recurrent/rnn/Assert/AssertAssert&Validation/rnn_model/recurrent/rnn/All7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0(Validation/rnn_model/recurrent/rnn/stack7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2(Validation/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
к
.Validation/rnn_model/recurrent/rnn/CheckSeqLenIdentity2Validation/rnn_model/recurrent/rnn/sequence_length1^Validation/rnn_model/recurrent/rnn/Assert/Assert*
T0*
_output_shapes
:
ќ
*Validation/rnn_model/recurrent/rnn/Shape_1Shape,Validation/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
ђ
6Validation/rnn_model/recurrent/rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
ѓ
8Validation/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
8Validation/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ф
0Validation/rnn_model/recurrent/rnn/strided_sliceStridedSlice*Validation/rnn_model/recurrent/rnn/Shape_16Validation/rnn_model/recurrent/rnn/strided_slice/stack8Validation/rnn_model/recurrent/rnn/strided_slice/stack_18Validation/rnn_model/recurrent/rnn/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
t
*Validation/rnn_model/recurrent/rnn/Const_1Const*
dtype0*
_output_shapes
:*
valueB:
u
*Validation/rnn_model/recurrent/rnn/Const_2Const*
dtype0*
_output_shapes
:*
valueB:ђ
r
0Validation/rnn_model/recurrent/rnn/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ч
+Validation/rnn_model/recurrent/rnn/concat_1ConcatV2*Validation/rnn_model/recurrent/rnn/Const_1*Validation/rnn_model/recurrent/rnn/Const_20Validation/rnn_model/recurrent/rnn/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
s
.Validation/rnn_model/recurrent/rnn/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
╔
(Validation/rnn_model/recurrent/rnn/zerosFill+Validation/rnn_model/recurrent/rnn/concat_1.Validation/rnn_model/recurrent/rnn/zeros/Const*
T0*

index_type0*
_output_shapes
:	ђ
t
*Validation/rnn_model/recurrent/rnn/Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
К
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
К
&Validation/rnn_model/recurrent/rnn/MaxMax.Validation/rnn_model/recurrent/rnn/CheckSeqLen*Validation/rnn_model/recurrent/rnn/Const_4*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
i
'Validation/rnn_model/recurrent/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
о
.Validation/rnn_model/recurrent/rnn/TensorArrayTensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*N
tensor_array_name97Validation/rnn_model/recurrent/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:	ђ*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
О
0Validation/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*
element_shape:	ђ*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*M
tensor_array_name86Validation/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 
Д
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape,Validation/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
Њ
IValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ћ
KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ћ
KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Є
CValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeIValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackKValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ѓ
AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Ѓ
AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
└
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRangeAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startCValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:         *

Tidx0
е
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
г
*Validation/rnn_model/recurrent/rnn/MaximumMaximum,Validation/rnn_model/recurrent/rnn/Maximum/x&Validation/rnn_model/recurrent/rnn/Max*
T0*
_output_shapes
: 
┤
*Validation/rnn_model/recurrent/rnn/MinimumMinimum0Validation/rnn_model/recurrent/rnn/strided_slice*Validation/rnn_model/recurrent/rnn/Maximum*
_output_shapes
: *
T0
|
:Validation/rnn_model/recurrent/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
і
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
ѓ
0Validation/rnn_model/recurrent/rnn/while/Enter_2Enter0Validation/rnn_model/recurrent/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ћ
0Validation/rnn_model/recurrent/rnn/while/Enter_3Enter:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	ђ*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ќ
0Validation/rnn_model/recurrent/rnn/while/Enter_4Enter<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
parallel_iterations *
_output_shapes
:	ђ*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
╦
.Validation/rnn_model/recurrent/rnn/while/MergeMerge.Validation/rnn_model/recurrent/rnn/while/Enter6Validation/rnn_model/recurrent/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
Л
0Validation/rnn_model/recurrent/rnn/while/Merge_1Merge0Validation/rnn_model/recurrent/rnn/while/Enter_18Validation/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Л
0Validation/rnn_model/recurrent/rnn/while/Merge_2Merge0Validation/rnn_model/recurrent/rnn/while/Enter_28Validation/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
┌
0Validation/rnn_model/recurrent/rnn/while/Merge_3Merge0Validation/rnn_model/recurrent/rnn/while/Enter_38Validation/rnn_model/recurrent/rnn/while/NextIteration_3*
T0*
N*!
_output_shapes
:	ђ: 
┌
0Validation/rnn_model/recurrent/rnn/while/Merge_4Merge0Validation/rnn_model/recurrent/rnn/while/Enter_48Validation/rnn_model/recurrent/rnn/while/NextIteration_4*
T0*
N*!
_output_shapes
:	ђ: 
╗
-Validation/rnn_model/recurrent/rnn/while/LessLess.Validation/rnn_model/recurrent/rnn/while/Merge3Validation/rnn_model/recurrent/rnn/while/Less/Enter*
T0*
_output_shapes
: 
Ё
3Validation/rnn_model/recurrent/rnn/while/Less/EnterEnter0Validation/rnn_model/recurrent/rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
┴
/Validation/rnn_model/recurrent/rnn/while/Less_1Less0Validation/rnn_model/recurrent/rnn/while/Merge_15Validation/rnn_model/recurrent/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
Ђ
5Validation/rnn_model/recurrent/rnn/while/Less_1/EnterEnter*Validation/rnn_model/recurrent/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
╣
3Validation/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd-Validation/rnn_model/recurrent/rnn/while/Less/Validation/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 
і
1Validation/rnn_model/recurrent/rnn/while/LoopCondLoopCond3Validation/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 
ѓ
/Validation/rnn_model/recurrent/rnn/while/SwitchSwitch.Validation/rnn_model/recurrent/rnn/while/Merge1Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/while/Merge*
_output_shapes
: : 
ѕ
1Validation/rnn_model/recurrent/rnn/while/Switch_1Switch0Validation/rnn_model/recurrent/rnn/while/Merge_11Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_1*
_output_shapes
: : 
ѕ
1Validation/rnn_model/recurrent/rnn/while/Switch_2Switch0Validation/rnn_model/recurrent/rnn/while/Merge_21Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_2*
_output_shapes
: : 
џ
1Validation/rnn_model/recurrent/rnn/while/Switch_3Switch0Validation/rnn_model/recurrent/rnn/while/Merge_31Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_3**
_output_shapes
:	ђ:	ђ
џ
1Validation/rnn_model/recurrent/rnn/while/Switch_4Switch0Validation/rnn_model/recurrent/rnn/while/Merge_41Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_4**
_output_shapes
:	ђ:	ђ
Љ
1Validation/rnn_model/recurrent/rnn/while/IdentityIdentity1Validation/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 
Ћ
3Validation/rnn_model/recurrent/rnn/while/Identity_1Identity3Validation/rnn_model/recurrent/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
Ћ
3Validation/rnn_model/recurrent/rnn/while/Identity_2Identity3Validation/rnn_model/recurrent/rnn/while/Switch_2:1*
_output_shapes
: *
T0
ъ
3Validation/rnn_model/recurrent/rnn/while/Identity_3Identity3Validation/rnn_model/recurrent/rnn/while/Switch_3:1*
T0*
_output_shapes
:	ђ
ъ
3Validation/rnn_model/recurrent/rnn/while/Identity_4Identity3Validation/rnn_model/recurrent/rnn/while/Switch_4:1*
T0*
_output_shapes
:	ђ
ц
.Validation/rnn_model/recurrent/rnn/while/add/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
и
,Validation/rnn_model/recurrent/rnn/while/addAdd1Validation/rnn_model/recurrent/rnn/while/Identity.Validation/rnn_model/recurrent/rnn/while/add/y*
_output_shapes
: *
T0
И
:Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3TensorArrayReadV3@Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter3Validation/rnn_model/recurrent/rnn/while/Identity_1BValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	ђ
ќ
@Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/EnterEnter0Validation/rnn_model/recurrent/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
┴
BValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1Enter]Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
▄
5Validation/rnn_model/recurrent/rnn/while/GreaterEqualGreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_1;Validation/rnn_model/recurrent/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:
Ј
;Validation/rnn_model/recurrent/rnn/while/GreaterEqual/EnterEnter.Validation/rnn_model/recurrent/rnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
┤
>Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat/axisConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
х
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/concatConcatV2:Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV33Validation/rnn_model/recurrent/rnn/while/Identity_4>Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis*
N*
_output_shapes
:	ђ*

Tidx0*
T0
Ј
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMulMatMul9Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat?Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter*
_output_shapes
:	ђ*
transpose_a( *
transpose_b( *
T0
ў
?Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
parallel_iterations * 
_output_shapes
:
ђђ*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Ѓ
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAddBiasAdd9Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul@Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	ђ
њ
@Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/EnterEnter+rnn_model/recurrent/rnn/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:ђ*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
«
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/ConstConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
И
BValidation/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dimConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ю
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/splitSplitBValidation/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim:Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd*
T0*@
_output_shapes.
,:	ђ:	ђ:	ђ:	ђ*
	num_split
▒
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
П
6Validation/rnn_model/recurrent/rnn/while/lstm_cell/addAdd:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:28Validation/rnn_model/recurrent/rnn/while/lstm_cell/add/y*
T0*
_output_shapes
:	ђ
Д
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/SigmoidSigmoid6Validation/rnn_model/recurrent/rnn/while/lstm_cell/add*
_output_shapes
:	ђ*
T0
п
6Validation/rnn_model/recurrent/rnn/while/lstm_cell/mulMul:Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid3Validation/rnn_model/recurrent/rnn/while/Identity_3*
_output_shapes
:	ђ*
T0
Ф
<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1Sigmoid8Validation/rnn_model/recurrent/rnn/while/lstm_cell/split*
T0*
_output_shapes
:	ђ
Ц
7Validation/rnn_model/recurrent/rnn/while/lstm_cell/TanhTanh:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:1*
T0*
_output_shapes
:	ђ
Я
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_1Mul<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_17Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
T0*
_output_shapes
:	ђ
█
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1Add6Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_1*
T0*
_output_shapes
:	ђ
Г
<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2Sigmoid:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:3*
T0*
_output_shapes
:	ђ
Ц
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1Tanh8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*
_output_shapes
:	ђ
Р
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2Mul<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_29Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
T0*
_output_shapes
:	ђ
п
/Validation/rnn_model/recurrent/rnn/while/SelectSelect5Validation/rnn_model/recurrent/rnn/while/GreaterEqual5Validation/rnn_model/recurrent/rnn/while/Select/Enter8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	ђ*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2
Н
5Validation/rnn_model/recurrent/rnn/while/Select/EnterEnter(Validation/rnn_model/recurrent/rnn/zeros*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:	ђ*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
п
1Validation/rnn_model/recurrent/rnn/while/Select_1Select5Validation/rnn_model/recurrent/rnn/while/GreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_38Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	ђ
п
1Validation/rnn_model/recurrent/rnn/while/Select_2Select5Validation/rnn_model/recurrent/rnn/while/GreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_48Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	ђ*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2
┐
LValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3RValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter3Validation/rnn_model/recurrent/rnn/while/Identity_1/Validation/rnn_model/recurrent/rnn/while/Select3Validation/rnn_model/recurrent/rnn/while/Identity_2*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
з
RValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter.Validation/rnn_model/recurrent/rnn/TensorArray*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
д
0Validation/rnn_model/recurrent/rnn/while/add_1/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
й
.Validation/rnn_model/recurrent/rnn/while/add_1Add3Validation/rnn_model/recurrent/rnn/while/Identity_10Validation/rnn_model/recurrent/rnn/while/add_1/y*
T0*
_output_shapes
: 
ќ
6Validation/rnn_model/recurrent/rnn/while/NextIterationNextIteration,Validation/rnn_model/recurrent/rnn/while/add*
T0*
_output_shapes
: 
џ
8Validation/rnn_model/recurrent/rnn/while/NextIteration_1NextIteration.Validation/rnn_model/recurrent/rnn/while/add_1*
_output_shapes
: *
T0
И
8Validation/rnn_model/recurrent/rnn/while/NextIteration_2NextIterationLValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
д
8Validation/rnn_model/recurrent/rnn/while/NextIteration_3NextIteration1Validation/rnn_model/recurrent/rnn/while/Select_1*
T0*
_output_shapes
:	ђ
д
8Validation/rnn_model/recurrent/rnn/while/NextIteration_4NextIteration1Validation/rnn_model/recurrent/rnn/while/Select_2*
T0*
_output_shapes
:	ђ
Є
-Validation/rnn_model/recurrent/rnn/while/ExitExit/Validation/rnn_model/recurrent/rnn/while/Switch*
T0*
_output_shapes
: 
І
/Validation/rnn_model/recurrent/rnn/while/Exit_1Exit1Validation/rnn_model/recurrent/rnn/while/Switch_1*
_output_shapes
: *
T0
І
/Validation/rnn_model/recurrent/rnn/while/Exit_2Exit1Validation/rnn_model/recurrent/rnn/while/Switch_2*
T0*
_output_shapes
: 
ћ
/Validation/rnn_model/recurrent/rnn/while/Exit_3Exit1Validation/rnn_model/recurrent/rnn/while/Switch_3*
T0*
_output_shapes
:	ђ
ћ
/Validation/rnn_model/recurrent/rnn/while/Exit_4Exit1Validation/rnn_model/recurrent/rnn/while/Switch_4*
T0*
_output_shapes
:	ђ
ќ
EValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3.Validation/rnn_model/recurrent/rnn/TensorArray/Validation/rnn_model/recurrent/rnn/while/Exit_2*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
_output_shapes
: 
─
?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/startConst*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
─
?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/deltaConst*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
 
9Validation/rnn_model/recurrent/rnn/TensorArrayStack/rangeRange?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/startEValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/delta*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*#
_output_shapes
:         *

Tidx0
ќ
GValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3.Validation/rnn_model/recurrent/rnn/TensorArray9Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/Validation/rnn_model/recurrent/rnn/while/Exit_2*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
dtype0*,
_output_shapes
:         ђ*
element_shape:	ђ
u
*Validation/rnn_model/recurrent/rnn/Const_5Const*
dtype0*
_output_shapes
:*
valueB:ђ
k
)Validation/rnn_model/recurrent/rnn/Rank_1Const*
dtype0*
_output_shapes
: *
value	B :
r
0Validation/rnn_model/recurrent/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
r
0Validation/rnn_model/recurrent/rnn/range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Ж
*Validation/rnn_model/recurrent/rnn/range_1Range0Validation/rnn_model/recurrent/rnn/range_1/start)Validation/rnn_model/recurrent/rnn/Rank_10Validation/rnn_model/recurrent/rnn/range_1/delta*
_output_shapes
:*

Tidx0
Ё
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
Ё
+Validation/rnn_model/recurrent/rnn/concat_2ConcatV24Validation/rnn_model/recurrent/rnn/concat_2/values_0*Validation/rnn_model/recurrent/rnn/range_10Validation/rnn_model/recurrent/rnn/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
ш
.Validation/rnn_model/recurrent/rnn/transpose_1	TransposeGValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3+Validation/rnn_model/recurrent/rnn/concat_2*
Tperm0*
T0*,
_output_shapes
:         ђ
s
"Validation/rnn_model/Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
╝
Validation/rnn_model/ReshapeReshape.Validation/rnn_model/recurrent/rnn/transpose_1"Validation/rnn_model/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:         ђ

"Validation/logits/dropout/IdentityIdentityValidation/rnn_model/Reshape*
T0*(
_output_shapes
:         ђ
Й
Validation/logits/dense/MatMulMatMul"Validation/logits/dropout/Identitylogits/dense/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
Ф
Validation/logits/dense/BiasAddBiasAddValidation/logits/dense/MatMullogits/dense/bias/read*
data_formatNHWC*'
_output_shapes
:         *
T0
t
Validation/logits/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"          
ф
Validation/logits/ReshapeReshapeValidation/logits/dense/BiasAddValidation/logits/Reshape/shape*+
_output_shapes
:         *
T0*
Tshape0
Љ
 Validation/logits_prediction/mulMulValidation/logits/ReshapeValidation/ExpandDims_1*
T0*+
_output_shapes
:         
u
3Validation/logits_prediction/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
к
!Validation/logits_prediction/MeanMean Validation/logits_prediction/mul3Validation/logits_prediction/Mean/reduction_indices*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0
Љ
GValidation/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
Ю
eValidation/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits!Validation/logits_prediction/Mean.validation_input_pipeline/batch_join_and_pad:1*
T0*$
_output_shapes
::*
Tlabels0	
m
#Validation/cross_entropy_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
З
"Validation/cross_entropy_loss/MeanMeaneValidation/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#Validation/cross_entropy_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
l
*Validation/accuracy_stats/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
й
 Validation/accuracy_stats/ArgMaxArgMax!Validation/logits_prediction/Mean*Validation/accuracy_stats/ArgMax/dimension*
output_type0	*
_output_shapes
:*

Tidx0*
T0
Ъ
Validation/accuracy_stats/EqualEqual Validation/accuracy_stats/ArgMax.validation_input_pipeline/batch_join_and_pad:1*
T0	*
_output_shapes
:
{
Validation/accuracy_stats/CastCastValidation/accuracy_stats/Equal*
_output_shapes
:*

DstT0*

SrcT0

i
Validation/accuracy_stats/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Б
Validation/accuracy_stats/SumSumValidation/accuracy_stats/CastValidation/accuracy_stats/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
}
 Validation/accuracy_stats/Cast_1CastValidation/accuracy_stats/Equal*

SrcT0
*
_output_shapes
:*

DstT0
k
!Validation/accuracy_stats/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Е
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
╗
Validation/accuracy/predictionsArgMax!Validation/logits_prediction/Mean)Validation/accuracy/predictions/dimension*
T0*
output_type0	*
_output_shapes
:*

Tidx0
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
	loss/tagsConst*
dtype0*
_output_shapes
: *
valueB
 Bloss
c
lossScalarSummary	loss/tags Training/cross_entropy_loss/Mean*
T0*
_output_shapes
: 
h
accuracy_training/tagsConst*
dtype0*
_output_shapes
: *"
valueB Baccuracy_training
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
loss_avg/tagsConst*
valueB Bloss_avg*
dtype0*
_output_shapes
: 
V
loss_avgScalarSummaryloss_avg/tagsloss_avg_pl*
T0*
_output_shapes
: 
`
learning_rate/tagsConst*
dtype0*
_output_shapes
: *
valueB Blearning_rate
n
learning_rateScalarSummarylearning_rate/tagsTraining/ExponentialDecay*
T0*
_output_shapes
: 
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
є
initNoOp^Training/beta1_power/Assign^Training/beta2_power/Assign^Training/global_step/Assign.^cnn_model/convolution/conv2d/bias/Adam/Assign0^cnn_model/convolution/conv2d/bias/Adam_1/Assign)^cnn_model/convolution/conv2d/bias/Assign0^cnn_model/convolution/conv2d/kernel/Adam/Assign2^cnn_model/convolution/conv2d/kernel/Adam_1/Assign+^cnn_model/convolution/conv2d/kernel/Assign0^cnn_model/convolution/conv2d_1/bias/Adam/Assign2^cnn_model/convolution/conv2d_1/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_1/bias/Assign2^cnn_model/convolution/conv2d_1/kernel/Adam/Assign4^cnn_model/convolution/conv2d_1/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_1/kernel/Assign0^cnn_model/convolution/conv2d_2/bias/Adam/Assign2^cnn_model/convolution/conv2d_2/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_2/bias/Assign2^cnn_model/convolution/conv2d_2/kernel/Adam/Assign4^cnn_model/convolution/conv2d_2/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_2/kernel/Assign0^cnn_model/convolution/conv2d_3/bias/Adam/Assign2^cnn_model/convolution/conv2d_3/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_3/bias/Assign2^cnn_model/convolution/conv2d_3/kernel/Adam/Assign4^cnn_model/convolution/conv2d_3/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_3/kernel/Assign0^cnn_model/convolution/conv2d_4/bias/Adam/Assign2^cnn_model/convolution/conv2d_4/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_4/bias/Assign2^cnn_model/convolution/conv2d_4/kernel/Adam/Assign4^cnn_model/convolution/conv2d_4/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_4/kernel/Assign!^cnn_model/dense/bias/Adam/Assign#^cnn_model/dense/bias/Adam_1/Assign^cnn_model/dense/bias/Assign#^cnn_model/dense/kernel/Adam/Assign%^cnn_model/dense/kernel/Adam_1/Assign^cnn_model/dense/kernel/Assign^logits/dense/bias/Adam/Assign ^logits/dense/bias/Adam_1/Assign^logits/dense/bias/Assign ^logits/dense/kernel/Adam/Assign"^logits/dense/kernel/Adam_1/Assign^logits/dense/kernel/Assign3^rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Assign5^rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Assign.^rnn_model/recurrent/rnn/lstm_cell/bias/Assign5^rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Assign7^rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Assign0^rnn_model/recurrent/rnn/lstm_cell/kernel/Assign
ў
init_1NoOpB^training_input_pipeline/input_producer/limit_epochs/epochs/AssignD^validation_input_pipeline/input_producer/limit_epochs/epochs/Assign
"

group_depsNoOp^init^init_1""Ху┴о     У▓лv	тХР:ЙоAJ┤Г
ъY■X
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
2	ђљ
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
Ь
	ApplyAdam
var"Tђ	
m"Tђ	
v"Tђ
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"Tђ" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Џ
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
	summarizeintѕ
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
s
	AssignAdd
ref"Tђ

value"T

output_ref"Tђ" 
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
В
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
њ
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
Љ
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
ref"Tђ
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
љ
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
«
FIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint         "
	containerstring "
shared_namestring ѕ
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
љ
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
ї
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
н
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
Ь
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

2	љ
Ї
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
ї
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

2	љ
=
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
х
PaddingFIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint         "
	containerstring "
shared_namestring ѕ
Ѓ	
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
Ї
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
cancel_pending_enqueuesbool( ѕ
ї
QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint         ѕ
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint         ѕ
y
QueueEnqueueV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint         ѕ
&
QueueSizeV2

handle
sizeѕ
Y
RandomShuffle

value"T
output"T"
seedint "
seed2int "	
Ttypeѕ
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
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
valueѕ
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
Њ
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
	elem_typetypeѕ
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( ѕ
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring ѕ
Ш
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
ї
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
compression_typestring ѕ
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
element_shapeshape:ѕ
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestringѕ
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeѕ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttypeѕ
9
TensorArraySizeV3

handle
flow_in
sizeѕ
я
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring ѕ
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttypeѕ
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
ђ
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
s

VariableV2
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ
&
	ZerosLike
x"T
y"T"	
Ttype*1.8.02v1.8.0-0-g93bc2e2072┘╦
Ћ
,training_input_pipeline/input_producer/ConstConst*┤

valueф
BД
(B../train/dataTrain_1.tfrecordsB../train/dataTrain_2.tfrecordsB../train/dataTrain_3.tfrecordsB../train/dataTrain_4.tfrecordsB../train/dataTrain_5.tfrecordsB../train/dataTrain_6.tfrecordsB../train/dataTrain_7.tfrecordsB../train/dataTrain_8.tfrecordsB../train/dataTrain_9.tfrecordsB../train/dataTrain_10.tfrecordsB../train/dataTrain_11.tfrecordsB../train/dataTrain_12.tfrecordsB../train/dataTrain_13.tfrecordsB../train/dataTrain_14.tfrecordsB../train/dataTrain_15.tfrecordsB../train/dataTrain_16.tfrecordsB../train/dataTrain_17.tfrecordsB../train/dataTrain_18.tfrecordsB../train/dataTrain_19.tfrecordsB../train/dataTrain_20.tfrecordsB../train/dataTrain_21.tfrecordsB../train/dataTrain_22.tfrecordsB../train/dataTrain_23.tfrecordsB../train/dataTrain_24.tfrecordsB../train/dataTrain_25.tfrecordsB../train/dataTrain_26.tfrecordsB../train/dataTrain_27.tfrecordsB../train/dataTrain_28.tfrecordsB../train/dataTrain_29.tfrecordsB../train/dataTrain_30.tfrecordsB../train/dataTrain_31.tfrecordsB../train/dataTrain_32.tfrecordsB../train/dataTrain_33.tfrecordsB../train/dataTrain_34.tfrecordsB../train/dataTrain_35.tfrecordsB../train/dataTrain_36.tfrecordsB../train/dataTrain_37.tfrecordsB../train/dataTrain_38.tfrecordsB../train/dataTrain_39.tfrecordsB../train/dataTrain_40.tfrecords*
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
╣
.training_input_pipeline/input_producer/GreaterGreater+training_input_pipeline/input_producer/Size0training_input_pipeline/input_producer/Greater/y*
T0*
_output_shapes
: 
ф
3training_input_pipeline/input_producer/Assert/ConstConst*
dtype0*
_output_shapes
: *G
value>B< B6string_input_producer requires a non-null input tensor
▓
;training_input_pipeline/input_producer/Assert/Assert/data_0Const*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
╚
4training_input_pipeline/input_producer/Assert/AssertAssert.training_input_pipeline/input_producer/Greater;training_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
┼
/training_input_pipeline/input_producer/IdentityIdentity,training_input_pipeline/input_producer/Const5^training_input_pipeline/input_producer/Assert/Assert*
T0*
_output_shapes
:(
┤
4training_input_pipeline/input_producer/RandomShuffleRandomShuffle/training_input_pipeline/input_producer/Identity*
_output_shapes
:(*
seed2 *

seed *
T0
{
9training_input_pipeline/input_producer/limit_epochs/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ъ
:training_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
shared_name *
dtype0	*
_output_shapes
: *
	container *
shape: 
█
Atraining_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign:training_input_pipeline/input_producer/limit_epochs/epochs9training_input_pipeline/input_producer/limit_epochs/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs
э
?training_input_pipeline/input_producer/limit_epochs/epochs/readIdentity:training_input_pipeline/input_producer/limit_epochs/epochs*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 
Ѓ
=training_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo:training_input_pipeline/input_producer/limit_epochs/epochs*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit
┌
3training_input_pipeline/input_producer/limit_epochsIdentity4training_input_pipeline/input_producer/RandomShuffle>^training_input_pipeline/input_producer/limit_epochs/CountUpTo*
T0*
_output_shapes
:(
Ф
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
т
Atraining_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2&training_input_pipeline/input_producer3training_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms         
њ
;training_input_pipeline/input_producer/input_producer_CloseQueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues( 
ћ
=training_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues(
Ѕ
:training_input_pipeline/input_producer/input_producer_SizeQueueSizeV2&training_input_pipeline/input_producer*
_output_shapes
: 
б
.training_input_pipeline/input_producer/ToFloatCast:training_input_pipeline/input_producer/input_producer_Size*

SrcT0*
_output_shapes
: *

DstT0
q
,training_input_pipeline/input_producer/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *   =
░
*training_input_pipeline/input_producer/mulMul.training_input_pipeline/input_producer/ToFloat,training_input_pipeline/input_producer/mul/y*
T0*
_output_shapes
: 
║
?training_input_pipeline/input_producer/fraction_of_32_full/tagsConst*K
valueBB@ B:training_input_pipeline/input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 
┘
:training_input_pipeline/input_producer/fraction_of_32_fullScalarSummary?training_input_pipeline/input_producer/fraction_of_32_full/tags*training_input_pipeline/input_producer/mul*
T0*
_output_shapes
: 
ћ
(training_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
а
$training_input_pipeline/ReaderReadV2ReaderReadV2(training_input_pipeline/TFRecordReaderV2&training_input_pipeline/input_producer*
_output_shapes
: : 
ї
Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
ј
Ktraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
╦
Єtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
dtype0*
_output_shapes
: *
valueB 
╣
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
║
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Й
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
╝
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
┼
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
┴
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
ф
itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Ѓ
^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample&training_input_pipeline/ReaderReadV2:1Єtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptystraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstKtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :         :         :         :         *
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
Э
2training_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
Щ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
Щ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
Щ
4training_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
p
.training_input_pipeline/TFRecordDecoding/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
С
,training_input_pipeline/TFRecordDecoding/subSub^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample.training_input_pipeline/TFRecordDecoding/sub/y*
_output_shapes
: *
T0	
╩
0training_input_pipeline/TFRecordDecoding/ToInt32Cast`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Ј
6training_input_pipeline/TFRecordDecoding/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
№
0training_input_pipeline/TFRecordDecoding/ReshapeReshape2training_input_pipeline/TFRecordDecoding/DecodeRaw6training_input_pipeline/TFRecordDecoding/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
│
0training_input_pipeline/TFRecordDecoding/ToFloatCast0training_input_pipeline/TFRecordDecoding/Reshape*

SrcT0*/
_output_shapes
:         PP*

DstT0
Љ
8training_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
ш
2training_input_pipeline/TFRecordDecoding/Reshape_1Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_18training_input_pipeline/TFRecordDecoding/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
и
2training_input_pipeline/TFRecordDecoding/ToFloat_1Cast2training_input_pipeline/TFRecordDecoding/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Љ
8training_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
ш
2training_input_pipeline/TFRecordDecoding/Reshape_2Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_28training_input_pipeline/TFRecordDecoding/Reshape_2/shape*/
_output_shapes
:         PP*
T0*
Tshape0
и
2training_input_pipeline/TFRecordDecoding/ToFloat_2Cast2training_input_pipeline/TFRecordDecoding/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0
}
:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
У
8training_input_pipeline/TFRecordDecoding/Reshape_3/shapePack0training_input_pipeline/TFRecordDecoding/ToInt32:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
Ь
2training_input_pipeline/TFRecordDecoding/Reshape_3Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_38training_input_pipeline/TFRecordDecoding/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
ў
?training_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ш
-training_input_pipeline/TFRecordDecoding/MeanMean0training_input_pipeline/TFRecordDecoding/ToFloat?training_input_pipeline/TFRecordDecoding/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
л
.training_input_pipeline/TFRecordDecoding/sub_1Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*/
_output_shapes
:         PP*
T0
Б
/training_input_pipeline/TFRecordDecoding/SquareSquare.training_input_pipeline/TFRecordDecoding/sub_1*/
_output_shapes
:         PP*
T0
џ
Atraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
щ
/training_input_pipeline/TFRecordDecoding/Mean_1Mean/training_input_pipeline/TFRecordDecoding/SquareAtraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ќ
-training_input_pipeline/TFRecordDecoding/SqrtSqrt/training_input_pipeline/TFRecordDecoding/Mean_1*&
_output_shapes
:*
T0
w
2training_input_pipeline/TFRecordDecoding/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
¤
0training_input_pipeline/TFRecordDecoding/MaximumMaximum-training_input_pipeline/TFRecordDecoding/Sqrt2training_input_pipeline/TFRecordDecoding/Maximum/y*&
_output_shapes
:*
T0
л
.training_input_pipeline/TFRecordDecoding/sub_2Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:         PP
О
0training_input_pipeline/TFRecordDecoding/truedivRealDiv.training_input_pipeline/TFRecordDecoding/sub_20training_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:         PP
ќ
*training_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
ц
&training_input_pipeline/ReaderReadV2_1ReaderReadV2*training_input_pipeline/TFRecordReaderV2_1&training_input_pipeline/input_producer*
_output_shapes
: : 
ј
Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
љ
Mtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
═
Ѕtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
dtype0*
_output_shapes
: *
valueB 
╗
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Blabel
╝
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
└
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Й
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
К
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
├
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
г
ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
dtype0*
_output_shapes
: *
valueB B 
Џ
`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_1:1Ѕtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :         :         :         :         *
Tcontext_dense
2		*
Ncontext_dense*$
feature_list_dense_types
2*
Nfeature_list_sparse 
Ч
4training_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*0
_output_shapes
:                  *
little_endian(*
out_type0
■
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
r
0training_input_pipeline/TFRecordDecoding_1/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ж
.training_input_pipeline/TFRecordDecoding_1/subSub`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_1/sub/y*
T0	*
_output_shapes
: 
╬
2training_input_pipeline/TFRecordDecoding_1/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Љ
8training_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ш
2training_input_pipeline/TFRecordDecoding_1/ReshapeReshape4training_input_pipeline/TFRecordDecoding_1/DecodeRaw8training_input_pipeline/TFRecordDecoding_1/Reshape/shape*/
_output_shapes
:         PP*
T0*
Tshape0
и
2training_input_pipeline/TFRecordDecoding_1/ToFloatCast2training_input_pipeline/TFRecordDecoding_1/Reshape*/
_output_shapes
:         PP*

DstT0*

SrcT0
Њ
:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4training_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4training_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Њ
:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4training_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4training_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0

<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
Ь
:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_1/ToInt32<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
З
4training_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
џ
Atraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ч
/training_input_pipeline/TFRecordDecoding_1/MeanMean2training_input_pipeline/TFRecordDecoding_1/ToFloatAtraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
о
0training_input_pipeline/TFRecordDecoding_1/sub_1Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*/
_output_shapes
:         PP*
T0
Д
1training_input_pipeline/TFRecordDecoding_1/SquareSquare0training_input_pipeline/TFRecordDecoding_1/sub_1*
T0*/
_output_shapes
:         PP
ю
Ctraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
 
1training_input_pipeline/TFRecordDecoding_1/Mean_1Mean1training_input_pipeline/TFRecordDecoding_1/SquareCtraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Џ
/training_input_pipeline/TFRecordDecoding_1/SqrtSqrt1training_input_pipeline/TFRecordDecoding_1/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
Н
2training_input_pipeline/TFRecordDecoding_1/MaximumMaximum/training_input_pipeline/TFRecordDecoding_1/Sqrt4training_input_pipeline/TFRecordDecoding_1/Maximum/y*&
_output_shapes
:*
T0
о
0training_input_pipeline/TFRecordDecoding_1/sub_2Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:         PP
П
2training_input_pipeline/TFRecordDecoding_1/truedivRealDiv0training_input_pipeline/TFRecordDecoding_1/sub_22training_input_pipeline/TFRecordDecoding_1/Maximum*/
_output_shapes
:         PP*
T0
ќ
*training_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
ц
&training_input_pipeline/ReaderReadV2_2ReaderReadV2*training_input_pipeline/TFRecordReaderV2_2&training_input_pipeline/input_producer*
_output_shapes
: : 
ј
Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
љ
Mtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
═
Ѕtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
╗
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
╝
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
└
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Й
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
К
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
├
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
г
ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Џ
`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_2:1Ѕtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*T
_output_shapesB
@: : :         :         :         :         *
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
Nfeature_list_dense*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : 
Ч
4training_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*0
_output_shapes
:                  *
little_endian(*
out_type0
r
0training_input_pipeline/TFRecordDecoding_2/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ж
.training_input_pipeline/TFRecordDecoding_2/subSub`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_2/sub/y*
_output_shapes
: *
T0	
╬
2training_input_pipeline/TFRecordDecoding_2/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	
Љ
8training_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ш
2training_input_pipeline/TFRecordDecoding_2/ReshapeReshape4training_input_pipeline/TFRecordDecoding_2/DecodeRaw8training_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
и
2training_input_pipeline/TFRecordDecoding_2/ToFloatCast2training_input_pipeline/TFRecordDecoding_2/Reshape*/
_output_shapes
:         PP*

DstT0*

SrcT0
Њ
:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
ч
4training_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*/
_output_shapes
:         PP*
T0*
Tshape0
╗
4training_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_1*/
_output_shapes
:         PP*

DstT0*

SrcT0
Њ
:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4training_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4training_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_2*/
_output_shapes
:         PP*

DstT0*

SrcT0

<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :┤
Ь
:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_2/ToInt32<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
З
4training_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
џ
Atraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ч
/training_input_pipeline/TFRecordDecoding_2/MeanMean2training_input_pipeline/TFRecordDecoding_2/ToFloatAtraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
о
0training_input_pipeline/TFRecordDecoding_2/sub_1Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:         PP
Д
1training_input_pipeline/TFRecordDecoding_2/SquareSquare0training_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:         PP
ю
Ctraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
 
1training_input_pipeline/TFRecordDecoding_2/Mean_1Mean1training_input_pipeline/TFRecordDecoding_2/SquareCtraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Џ
/training_input_pipeline/TFRecordDecoding_2/SqrtSqrt1training_input_pipeline/TFRecordDecoding_2/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *й7є5
Н
2training_input_pipeline/TFRecordDecoding_2/MaximumMaximum/training_input_pipeline/TFRecordDecoding_2/Sqrt4training_input_pipeline/TFRecordDecoding_2/Maximum/y*
T0*&
_output_shapes
:
о
0training_input_pipeline/TFRecordDecoding_2/sub_2Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:         PP
П
2training_input_pipeline/TFRecordDecoding_2/truedivRealDiv0training_input_pipeline/TFRecordDecoding_2/sub_22training_input_pipeline/TFRecordDecoding_2/Maximum*/
_output_shapes
:         PP*
T0
ќ
*training_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
ц
&training_input_pipeline/ReaderReadV2_3ReaderReadV2*training_input_pipeline/TFRecordReaderV2_3&training_input_pipeline/input_producer*
_output_shapes
: : 
ј
Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 
љ
Mtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
═
Ѕtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
╗
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
╝
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
└
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Й
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
К
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
├
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
г
ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Џ
`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_3:1Ѕtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :         :         :         :         *
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense
Ч
4training_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*0
_output_shapes
:                  *
little_endian(*
out_type0
■
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
r
0training_input_pipeline/TFRecordDecoding_3/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ж
.training_input_pipeline/TFRecordDecoding_3/subSub`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_3/sub/y*
T0	*
_output_shapes
: 
╬
2training_input_pipeline/TFRecordDecoding_3/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Љ
8training_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
ш
2training_input_pipeline/TFRecordDecoding_3/ReshapeReshape4training_input_pipeline/TFRecordDecoding_3/DecodeRaw8training_input_pipeline/TFRecordDecoding_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
и
2training_input_pipeline/TFRecordDecoding_3/ToFloatCast2training_input_pipeline/TFRecordDecoding_3/Reshape*

SrcT0*/
_output_shapes
:         PP*

DstT0
Њ
:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4training_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4training_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_1*/
_output_shapes
:         PP*

DstT0*

SrcT0
Њ
:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4training_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4training_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0

<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
Ь
:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_3/ToInt32<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
З
4training_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
џ
Atraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ч
/training_input_pipeline/TFRecordDecoding_3/MeanMean2training_input_pipeline/TFRecordDecoding_3/ToFloatAtraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
о
0training_input_pipeline/TFRecordDecoding_3/sub_1Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:         PP
Д
1training_input_pipeline/TFRecordDecoding_3/SquareSquare0training_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:         PP
ю
Ctraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
 
1training_input_pipeline/TFRecordDecoding_3/Mean_1Mean1training_input_pipeline/TFRecordDecoding_3/SquareCtraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Џ
/training_input_pipeline/TFRecordDecoding_3/SqrtSqrt1training_input_pipeline/TFRecordDecoding_3/Mean_1*&
_output_shapes
:*
T0
y
4training_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
Н
2training_input_pipeline/TFRecordDecoding_3/MaximumMaximum/training_input_pipeline/TFRecordDecoding_3/Sqrt4training_input_pipeline/TFRecordDecoding_3/Maximum/y*
T0*&
_output_shapes
:
о
0training_input_pipeline/TFRecordDecoding_3/sub_2Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:         PP
П
2training_input_pipeline/TFRecordDecoding_3/truedivRealDiv0training_input_pipeline/TFRecordDecoding_3/sub_22training_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:         PP
r
0training_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Х
=training_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
_output_shapes
: *
component_types

2	*u
shapesk
i:         PP: :         PP:         PP: :         ┤*
shared_name *
capacity└*
	container 
Щ
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue2training_input_pipeline/TFRecordDecoding/ToFloat_1,training_input_pipeline/TFRecordDecoding/sub0training_input_pipeline/TFRecordDecoding/truediv2training_input_pipeline/TFRecordDecoding/ToFloat_20training_input_pipeline/TFRecordDecoding/ToInt322training_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms         
ѕ
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_1/ToFloat_1.training_input_pipeline/TFRecordDecoding_1/sub2training_input_pipeline/TFRecordDecoding_1/truediv4training_input_pipeline/TFRecordDecoding_1/ToFloat_22training_input_pipeline/TFRecordDecoding_1/ToInt324training_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms         
ѕ
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_2/ToFloat_1.training_input_pipeline/TFRecordDecoding_2/sub2training_input_pipeline/TFRecordDecoding_2/truediv4training_input_pipeline/TFRecordDecoding_2/ToFloat_22training_input_pipeline/TFRecordDecoding_2/ToInt324training_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms         
ѕ
Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_3/ToFloat_1.training_input_pipeline/TFRecordDecoding_3/sub2training_input_pipeline/TFRecordDecoding_3/truediv4training_input_pipeline/TFRecordDecoding_3/ToFloat_22training_input_pipeline/TFRecordDecoding_3/ToInt324training_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms         
▒
Ctraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
│
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
е
Btraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
«
2training_input_pipeline/batch_join_and_pad/ToFloatCastBtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Size*

SrcT0*
_output_shapes
: *

DstT0
u
0training_input_pipeline/batch_join_and_pad/mul/yConst*
valueB
 *═╠L;*
dtype0*
_output_shapes
: 
╝
.training_input_pipeline/batch_join_and_pad/mulMul2training_input_pipeline/batch_join_and_pad/ToFloat0training_input_pipeline/batch_join_and_pad/mul/y*
T0*
_output_shapes
: 
─
Dtraining_input_pipeline/batch_join_and_pad/fraction_of_320_full/tagsConst*
dtype0*
_output_shapes
: *P
valueGBE B?training_input_pipeline/batch_join_and_pad/fraction_of_320_full
у
?training_input_pipeline/batch_join_and_pad/fraction_of_320_fullScalarSummaryDtraining_input_pipeline/batch_join_and_pad/fraction_of_320_full/tags.training_input_pipeline/batch_join_and_pad/mul*
_output_shapes
: *
T0
n
,training_input_pipeline/batch_join_and_pad/nConst*
value	B :*
dtype0*
_output_shapes
: 
Ђ
*training_input_pipeline/batch_join_and_padQueueDequeueManyV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue,training_input_pipeline/batch_join_and_pad/n*

timeout_ms         *Ќ
_output_shapesё
Ђ:         PP::         PP:         PP::         ┤*
component_types

2	
З
.validation_input_pipeline/input_producer/ConstConst*Љ
valueЄBёB(../validation/dataValidation_1.tfrecordsB(../validation/dataValidation_2.tfrecordsB(../validation/dataValidation_3.tfrecordsB(../validation/dataValidation_4.tfrecordsB(../validation/dataValidation_5.tfrecordsB(../validation/dataValidation_6.tfrecordsB(../validation/dataValidation_7.tfrecordsB(../validation/dataValidation_8.tfrecordsB(../validation/dataValidation_9.tfrecordsB)../validation/dataValidation_10.tfrecordsB)../validation/dataValidation_11.tfrecordsB)../validation/dataValidation_12.tfrecordsB)../validation/dataValidation_13.tfrecordsB)../validation/dataValidation_14.tfrecordsB)../validation/dataValidation_15.tfrecords*
dtype0*
_output_shapes
:
o
-validation_input_pipeline/input_producer/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
t
2validation_input_pipeline/input_producer/Greater/yConst*
dtype0*
_output_shapes
: *
value	B : 
┐
0validation_input_pipeline/input_producer/GreaterGreater-validation_input_pipeline/input_producer/Size2validation_input_pipeline/input_producer/Greater/y*
T0*
_output_shapes
: 
г
5validation_input_pipeline/input_producer/Assert/ConstConst*
dtype0*
_output_shapes
: *G
value>B< B6string_input_producer requires a non-null input tensor
┤
=validation_input_pipeline/input_producer/Assert/Assert/data_0Const*
dtype0*
_output_shapes
: *G
value>B< B6string_input_producer requires a non-null input tensor
╬
6validation_input_pipeline/input_producer/Assert/AssertAssert0validation_input_pipeline/input_producer/Greater=validation_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
╦
1validation_input_pipeline/input_producer/IdentityIdentity.validation_input_pipeline/input_producer/Const7^validation_input_pipeline/input_producer/Assert/Assert*
_output_shapes
:*
T0
}
;validation_input_pipeline/input_producer/limit_epochs/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
а
<validation_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
shared_name *
dtype0	*
_output_shapes
: *
	container *
shape: 
с
Cvalidation_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign<validation_input_pipeline/input_producer/limit_epochs/epochs;validation_input_pipeline/input_producer/limit_epochs/Const*
use_locking(*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
validate_shape(*
_output_shapes
: 
§
Avalidation_input_pipeline/input_producer/limit_epochs/epochs/readIdentity<validation_input_pipeline/input_producer/limit_epochs/epochs*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 
Ѕ
?validation_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo<validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs
█
5validation_input_pipeline/input_producer/limit_epochsIdentity1validation_input_pipeline/input_producer/Identity@^validation_input_pipeline/input_producer/limit_epochs/CountUpTo*
_output_shapes
:*
T0
Г
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
в
Cvalidation_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2(validation_input_pipeline/input_producer5validation_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms         
ќ
=validation_input_pipeline/input_producer/input_producer_CloseQueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues( 
ў
?validation_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues(
Ї
<validation_input_pipeline/input_producer/input_producer_SizeQueueSizeV2(validation_input_pipeline/input_producer*
_output_shapes
: 
д
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
Х
,validation_input_pipeline/input_producer/mulMul0validation_input_pipeline/input_producer/ToFloat.validation_input_pipeline/input_producer/mul/y*
_output_shapes
: *
T0
Й
Avalidation_input_pipeline/input_producer/fraction_of_32_full/tagsConst*M
valueDBB B<validation_input_pipeline/input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 
▀
<validation_input_pipeline/input_producer/fraction_of_32_fullScalarSummaryAvalidation_input_pipeline/input_producer/fraction_of_32_full/tags,validation_input_pipeline/input_producer/mul*
T0*
_output_shapes
: 
ќ
*validation_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
д
&validation_input_pipeline/ReaderReadV2ReaderReadV2*validation_input_pipeline/TFRecordReaderV2(validation_input_pipeline/input_producer*
_output_shapes
: : 
ј
Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 
љ
Mvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
═
Ѕvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
╗
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
╝
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
└
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Й
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
К
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
├
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
г
kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
Џ
`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(validation_input_pipeline/ReaderReadV2:1Ѕvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyuvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstMvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :         :         :         :         *
Tcontext_dense
2		*
Ncontext_dense*$
feature_list_dense_types
2
Ч
4validation_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
■
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*0
_output_shapes
:                  *
little_endian(*
out_type0
■
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*0
_output_shapes
:                  *
little_endian(*
out_type0
r
0validation_input_pipeline/TFRecordDecoding/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ж
.validation_input_pipeline/TFRecordDecoding/subSub`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample0validation_input_pipeline/TFRecordDecoding/sub/y*
T0	*
_output_shapes
: 
╬
2validation_input_pipeline/TFRecordDecoding/ToInt32Castbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	
Љ
8validation_input_pipeline/TFRecordDecoding/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ш
2validation_input_pipeline/TFRecordDecoding/ReshapeReshape4validation_input_pipeline/TFRecordDecoding/DecodeRaw8validation_input_pipeline/TFRecordDecoding/Reshape/shape*/
_output_shapes
:         PP*
T0*
Tshape0
и
2validation_input_pipeline/TFRecordDecoding/ToFloatCast2validation_input_pipeline/TFRecordDecoding/Reshape*

SrcT0*/
_output_shapes
:         PP*

DstT0
Њ
:validation_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
ч
4validation_input_pipeline/TFRecordDecoding/Reshape_1Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1:validation_input_pipeline/TFRecordDecoding/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4validation_input_pipeline/TFRecordDecoding/ToFloat_1Cast4validation_input_pipeline/TFRecordDecoding/Reshape_1*/
_output_shapes
:         PP*

DstT0*

SrcT0
Њ
:validation_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4validation_input_pipeline/TFRecordDecoding/Reshape_2Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2:validation_input_pipeline/TFRecordDecoding/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4validation_input_pipeline/TFRecordDecoding/ToFloat_2Cast4validation_input_pipeline/TFRecordDecoding/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0

<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
Ь
:validation_input_pipeline/TFRecordDecoding/Reshape_3/shapePack2validation_input_pipeline/TFRecordDecoding/ToInt32<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
З
4validation_input_pipeline/TFRecordDecoding/Reshape_3Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3:validation_input_pipeline/TFRecordDecoding/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
џ
Avalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ч
/validation_input_pipeline/TFRecordDecoding/MeanMean2validation_input_pipeline/TFRecordDecoding/ToFloatAvalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
о
0validation_input_pipeline/TFRecordDecoding/sub_1Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:         PP
Д
1validation_input_pipeline/TFRecordDecoding/SquareSquare0validation_input_pipeline/TFRecordDecoding/sub_1*
T0*/
_output_shapes
:         PP
ю
Cvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
 
1validation_input_pipeline/TFRecordDecoding/Mean_1Mean1validation_input_pipeline/TFRecordDecoding/SquareCvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Џ
/validation_input_pipeline/TFRecordDecoding/SqrtSqrt1validation_input_pipeline/TFRecordDecoding/Mean_1*&
_output_shapes
:*
T0
y
4validation_input_pipeline/TFRecordDecoding/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *й7є5
Н
2validation_input_pipeline/TFRecordDecoding/MaximumMaximum/validation_input_pipeline/TFRecordDecoding/Sqrt4validation_input_pipeline/TFRecordDecoding/Maximum/y*
T0*&
_output_shapes
:
о
0validation_input_pipeline/TFRecordDecoding/sub_2Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:         PP
П
2validation_input_pipeline/TFRecordDecoding/truedivRealDiv0validation_input_pipeline/TFRecordDecoding/sub_22validation_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:         PP
ў
,validation_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
ф
(validation_input_pipeline/ReaderReadV2_1ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_1(validation_input_pipeline/input_producer*
_output_shapes
: : 
љ
Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
њ
Ovalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
¤
Іvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
й
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Blabel
Й
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
┬
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
└
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
╔
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
┼
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
«
mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
│
bvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_1:1Іvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :         :         :         :         *
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
ђ
6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*0
_output_shapes
:                  *
little_endian(*
out_type0
t
2validation_input_pipeline/TFRecordDecoding_1/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
­
0validation_input_pipeline/TFRecordDecoding_1/subSubbvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_1/sub/y*
T0	*
_output_shapes
: 
м
4validation_input_pipeline/TFRecordDecoding_1/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Њ
:validation_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4validation_input_pipeline/TFRecordDecoding_1/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw:validation_input_pipeline/TFRecordDecoding_1/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4validation_input_pipeline/TFRecordDecoding_1/ToFloatCast4validation_input_pipeline/TFRecordDecoding_1/Reshape*/
_output_shapes
:         PP*

DstT0*

SrcT0
Ћ
<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
Ђ
6validation_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
┐
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_1*/
_output_shapes
:         PP*

DstT0*

SrcT0
Ћ
<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:         PP
┐
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_2*

SrcT0*/
_output_shapes
:         PP*

DstT0
Ђ
>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
З
<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_1/ToInt32>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
Щ
6validation_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*(
_output_shapes
:         ┤*
T0*
Tshape0
ю
Cvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ѓ
1validation_input_pipeline/TFRecordDecoding_1/MeanMean4validation_input_pipeline/TFRecordDecoding_1/ToFloatCvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
▄
2validation_input_pipeline/TFRecordDecoding_1/sub_1Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:         PP
Ф
3validation_input_pipeline/TFRecordDecoding_1/SquareSquare2validation_input_pipeline/TFRecordDecoding_1/sub_1*
T0*/
_output_shapes
:         PP
ъ
Evalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ё
3validation_input_pipeline/TFRecordDecoding_1/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_1/SquareEvalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Ъ
1validation_input_pipeline/TFRecordDecoding_1/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_1/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
█
4validation_input_pipeline/TFRecordDecoding_1/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_1/Sqrt6validation_input_pipeline/TFRecordDecoding_1/Maximum/y*&
_output_shapes
:*
T0
▄
2validation_input_pipeline/TFRecordDecoding_1/sub_2Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*/
_output_shapes
:         PP*
T0
с
4validation_input_pipeline/TFRecordDecoding_1/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_1/sub_24validation_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:         PP
ў
,validation_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
ф
(validation_input_pipeline/ReaderReadV2_2ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_2(validation_input_pipeline/input_producer*
_output_shapes
: : 
љ
Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
њ
Ovalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
¤
Іvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
й
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
Й
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
┬
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
└
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
╔
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
┼
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
«
mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
│
bvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_2:1Іvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*T
_output_shapesB
@: : :         :         :         :         *
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
ђ
6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*0
_output_shapes
:                  *
little_endian(*
out_type0
ѓ
8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
t
2validation_input_pipeline/TFRecordDecoding_2/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
­
0validation_input_pipeline/TFRecordDecoding_2/subSubbvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_2/sub/y*
T0	*
_output_shapes
: 
м
4validation_input_pipeline/TFRecordDecoding_2/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Њ
:validation_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4validation_input_pipeline/TFRecordDecoding_2/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw:validation_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
╗
4validation_input_pipeline/TFRecordDecoding_2/ToFloatCast4validation_input_pipeline/TFRecordDecoding_2/Reshape*/
_output_shapes
:         PP*

DstT0*

SrcT0
Ћ
<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:         PP
┐
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Ћ
<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:         PP
┐
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_2*/
_output_shapes
:         PP*

DstT0*

SrcT0
Ђ
>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :┤*
dtype0*
_output_shapes
: 
З
<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_2/ToInt32>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
Щ
6validation_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:         ┤
ю
Cvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ѓ
1validation_input_pipeline/TFRecordDecoding_2/MeanMean4validation_input_pipeline/TFRecordDecoding_2/ToFloatCvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
▄
2validation_input_pipeline/TFRecordDecoding_2/sub_1Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:         PP
Ф
3validation_input_pipeline/TFRecordDecoding_2/SquareSquare2validation_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:         PP
ъ
Evalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ё
3validation_input_pipeline/TFRecordDecoding_2/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_2/SquareEvalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ъ
1validation_input_pipeline/TFRecordDecoding_2/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_2/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
█
4validation_input_pipeline/TFRecordDecoding_2/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_2/Sqrt6validation_input_pipeline/TFRecordDecoding_2/Maximum/y*
T0*&
_output_shapes
:
▄
2validation_input_pipeline/TFRecordDecoding_2/sub_2Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*/
_output_shapes
:         PP*
T0
с
4validation_input_pipeline/TFRecordDecoding_2/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_2/sub_24validation_input_pipeline/TFRecordDecoding_2/Maximum*/
_output_shapes
:         PP*
T0
ў
,validation_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
ф
(validation_input_pipeline/ReaderReadV2_3ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_3(validation_input_pipeline/input_producer*
_output_shapes
: : 
љ
Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
њ
Ovalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
¤
Іvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
й
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Blabel
Й
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
┬
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
└
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
╔
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
┼
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
«
mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
│
bvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_3:1Іvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :         :         :         :         *
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
ђ
6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:                  *
little_endian(*
out_type0
ѓ
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:                  
ѓ
8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:                  
t
2validation_input_pipeline/TFRecordDecoding_3/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
­
0validation_input_pipeline/TFRecordDecoding_3/subSubbvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_3/sub/y*
_output_shapes
: *
T0	
м
4validation_input_pipeline/TFRecordDecoding_3/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0
Њ
:validation_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
ч
4validation_input_pipeline/TFRecordDecoding_3/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw:validation_input_pipeline/TFRecordDecoding_3/Reshape/shape*/
_output_shapes
:         PP*
T0*
Tshape0
╗
4validation_input_pipeline/TFRecordDecoding_3/ToFloatCast4validation_input_pipeline/TFRecordDecoding_3/Reshape*/
_output_shapes
:         PP*

DstT0*

SrcT0
Ћ
<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*/
_output_shapes
:         PP*
T0*
Tshape0
┐
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_1*

SrcT0*/
_output_shapes
:         PP*

DstT0
Ћ
<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
Ђ
6validation_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*/
_output_shapes
:         PP*
T0*
Tshape0
┐
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_2*/
_output_shapes
:         PP*

DstT0*

SrcT0
Ђ
>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :┤
З
<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_3/ToInt32>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
Щ
6validation_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*(
_output_shapes
:         ┤*
T0*
Tshape0
ю
Cvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ѓ
1validation_input_pipeline/TFRecordDecoding_3/MeanMean4validation_input_pipeline/TFRecordDecoding_3/ToFloatCvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
▄
2validation_input_pipeline/TFRecordDecoding_3/sub_1Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:         PP
Ф
3validation_input_pipeline/TFRecordDecoding_3/SquareSquare2validation_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:         PP
ъ
Evalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
Ё
3validation_input_pipeline/TFRecordDecoding_3/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_3/SquareEvalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ъ
1validation_input_pipeline/TFRecordDecoding_3/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_3/Mean_1*&
_output_shapes
:*
T0
{
6validation_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *й7є5*
dtype0*
_output_shapes
: 
█
4validation_input_pipeline/TFRecordDecoding_3/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_3/Sqrt6validation_input_pipeline/TFRecordDecoding_3/Maximum/y*
T0*&
_output_shapes
:
▄
2validation_input_pipeline/TFRecordDecoding_3/sub_2Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:         PP
с
4validation_input_pipeline/TFRecordDecoding_3/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_3/sub_24validation_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:         PP
t
2validation_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
И
?validation_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
_output_shapes
: *
component_types

2	*u
shapesk
i:         PP: :         PP:         PP: :         ┤*
shared_name *
capacity└*
	container 
і
Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue4validation_input_pipeline/TFRecordDecoding/ToFloat_1.validation_input_pipeline/TFRecordDecoding/sub2validation_input_pipeline/TFRecordDecoding/truediv4validation_input_pipeline/TFRecordDecoding/ToFloat_22validation_input_pipeline/TFRecordDecoding/ToInt324validation_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms         
ў
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_1/ToFloat_10validation_input_pipeline/TFRecordDecoding_1/sub4validation_input_pipeline/TFRecordDecoding_1/truediv6validation_input_pipeline/TFRecordDecoding_1/ToFloat_24validation_input_pipeline/TFRecordDecoding_1/ToInt326validation_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms         
ў
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_2/ToFloat_10validation_input_pipeline/TFRecordDecoding_2/sub4validation_input_pipeline/TFRecordDecoding_2/truediv6validation_input_pipeline/TFRecordDecoding_2/ToFloat_24validation_input_pipeline/TFRecordDecoding_2/ToInt326validation_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms         
ў
Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_3/ToFloat_10validation_input_pipeline/TFRecordDecoding_3/sub4validation_input_pipeline/TFRecordDecoding_3/truediv6validation_input_pipeline/TFRecordDecoding_3/ToFloat_24validation_input_pipeline/TFRecordDecoding_3/ToInt326validation_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms         
х
Evalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
и
Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
г
Dvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
▓
4validation_input_pipeline/batch_join_and_pad/ToFloatCastDvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Size*

SrcT0*
_output_shapes
: *

DstT0
w
2validation_input_pipeline/batch_join_and_pad/mul/yConst*
valueB
 *═╠L;*
dtype0*
_output_shapes
: 
┬
0validation_input_pipeline/batch_join_and_pad/mulMul4validation_input_pipeline/batch_join_and_pad/ToFloat2validation_input_pipeline/batch_join_and_pad/mul/y*
T0*
_output_shapes
: 
╚
Fvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full/tagsConst*R
valueIBG BAvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full*
dtype0*
_output_shapes
: 
ь
Avalidation_input_pipeline/batch_join_and_pad/fraction_of_320_fullScalarSummaryFvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full/tags0validation_input_pipeline/batch_join_and_pad/mul*
_output_shapes
: *
T0
p
.validation_input_pipeline/batch_join_and_pad/nConst*
dtype0*
_output_shapes
: *
value	B :
Є
,validation_input_pipeline/batch_join_and_padQueueDequeueManyV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue.validation_input_pipeline/batch_join_and_pad/n*

timeout_ms         *Ќ
_output_shapesё
Ђ:         PP::         PP:         PP::         ┤*
component_types

2	
e
Training/SequenceMask/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Е
Training/SequenceMask/MaxMax,training_input_pipeline/batch_join_and_pad:4Training/SequenceMask/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
_
Training/SequenceMask/Const_1Const*
dtype0*
_output_shapes
: *
value	B : 
_
Training/SequenceMask/Const_2Const*
dtype0*
_output_shapes
: *
value	B :
«
Training/SequenceMask/RangeRangeTraining/SequenceMask/Const_1Training/SequenceMask/MaxTraining/SequenceMask/Const_2*#
_output_shapes
:         *

Tidx0
o
$Training/SequenceMask/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
и
 Training/SequenceMask/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4$Training/SequenceMask/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
|
Training/SequenceMask/CastCast Training/SequenceMask/ExpandDims*
_output_shapes

:*

DstT0*

SrcT0
Ї
Training/SequenceMask/LessLessTraining/SequenceMask/RangeTraining/SequenceMask/Cast*'
_output_shapes
:         *
T0
Ђ
Training/SequenceMask/Cast_1CastTraining/SequenceMask/Less*

SrcT0
*'
_output_shapes
:         *

DstT0
b
Training/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
џ
Training/ExpandDims
ExpandDimsTraining/SequenceMask/Cast_1Training/ExpandDims/dim*

Tdim0*
T0*+
_output_shapes
:         
y
 Training/cnn_model/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"    P   P      
й
Training/cnn_model/ReshapeReshape,training_input_pipeline/batch_join_and_pad:2 Training/cnn_model/Reshape/shape*/
_output_shapes
:         PP*
T0*
Tshape0
О
Fcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB"            *
dtype0*
_output_shapes
:
┬
Ecnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *    
─
Gcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddevConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *|П=*
dtype0*
_output_shapes
: 
║
Pcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shape*

seed *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
:
¤
Dcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulMulPcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalGcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
й
@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normalAddDcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulEcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
▀
#cnn_model/convolution/conv2d/kernel
VariableV2*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
Г
*cnn_model/convolution/conv2d/kernel/AssignAssign#cnn_model/convolution/conv2d/kernel@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
┬
(cnn_model/convolution/conv2d/kernel/readIdentity#cnn_model/convolution/conv2d/kernel*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
Х
3cnn_model/convolution/conv2d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    
├
!cnn_model/convolution/conv2d/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape:
ј
(cnn_model/convolution/conv2d/bias/AssignAssign!cnn_model/convolution/conv2d/bias3cnn_model/convolution/conv2d/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
░
&cnn_model/convolution/conv2d/bias/readIdentity!cnn_model/convolution/conv2d/bias*
_output_shapes
:*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
ё
3Training/cnn_model/convolution/conv2d/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
ц
,Training/cnn_model/convolution/conv2d/Conv2DConv2DTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*
paddingSAME*/
_output_shapes
:         PP*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
▀
-Training/cnn_model/convolution/conv2d/BiasAddBiasAdd,Training/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         PP
Џ
*Training/cnn_model/convolution/conv2d/ReluRelu-Training/cnn_model/convolution/conv2d/BiasAdd*/
_output_shapes
:         PP*
T0
э
4Training/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool*Training/cnn_model/convolution/conv2d/Relu*
ksize
*
paddingSAME*/
_output_shapes
:         ((*
T0*
data_formatNHWC*
strides

█
Hcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
к
Gcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
Icnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *HYІ=*
dtype0*
_output_shapes
: 
└
Rcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shape*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
seed2 *
dtype0*&
_output_shapes
: *

seed 
О
Fcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
┼
Bcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
с
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
х
,cnn_model/convolution/conv2d_1/kernel/AssignAssign%cnn_model/convolution/conv2d_1/kernelBcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
╚
*cnn_model/convolution/conv2d_1/kernel/readIdentity%cnn_model/convolution/conv2d_1/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
║
5cnn_model/convolution/conv2d_1/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
К
#cnn_model/convolution/conv2d_1/bias
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
ќ
*cnn_model/convolution/conv2d_1/bias/AssignAssign#cnn_model/convolution/conv2d_1/bias5cnn_model/convolution/conv2d_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
Х
(cnn_model/convolution/conv2d_1/bias/readIdentity#cnn_model/convolution/conv2d_1/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
є
5Training/cnn_model/convolution/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
┬
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
:         (( 
т
/Training/cnn_model/convolution/conv2d_1/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         (( 
Ъ
,Training/cnn_model/convolution/conv2d_1/ReluRelu/Training/cnn_model/convolution/conv2d_1/BiasAdd*
T0*/
_output_shapes
:         (( 
ч
6Training/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:          
█
Hcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
к
Gcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    
╚
Icnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *БE=*
dtype0*
_output_shapes
: 
└
Rcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
seed2 
О
Fcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
┼
Bcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
с
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
х
,cnn_model/convolution/conv2d_2/kernel/AssignAssign%cnn_model/convolution/conv2d_2/kernelBcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
╚
*cnn_model/convolution/conv2d_2/kernel/readIdentity%cnn_model/convolution/conv2d_2/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
║
5cnn_model/convolution/conv2d_2/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
К
#cnn_model/convolution/conv2d_2/bias
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
ќ
*cnn_model/convolution/conv2d_2/bias/AssignAssign#cnn_model/convolution/conv2d_2/bias5cnn_model/convolution/conv2d_2/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
Х
(cnn_model/convolution/conv2d_2/bias/readIdentity#cnn_model/convolution/conv2d_2/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
є
5Training/cnn_model/convolution/conv2d_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
─
.Training/cnn_model/convolution/conv2d_2/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         @*
	dilations
*
T0
т
/Training/cnn_model/convolution/conv2d_2/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         @
Ъ
,Training/cnn_model/convolution/conv2d_2/ReluRelu/Training/cnn_model/convolution/conv2d_2/BiasAdd*
T0*/
_output_shapes
:         @
ч
6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_2/Relu*
ksize
*
paddingSAME*/
_output_shapes
:         

@*
T0*
data_formatNHWC*
strides

█
Hcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   ђ   *
dtype0*
_output_shapes
:
к
Gcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
Icnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *HY=*
dtype0*
_output_shapes
: 
┴
Rcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shape*
dtype0*'
_output_shapes
:@ђ*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
seed2 
п
Fcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@ђ
к
Bcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@ђ
т
%cnn_model/convolution/conv2d_3/kernel
VariableV2*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@ђ*
dtype0*'
_output_shapes
:@ђ*
shared_name 
Х
,cnn_model/convolution/conv2d_3/kernel/AssignAssign%cnn_model/convolution/conv2d_3/kernelBcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@ђ
╔
*cnn_model/convolution/conv2d_3/kernel/readIdentity%cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@ђ*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
╝
5cnn_model/convolution/conv2d_3/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
╔
#cnn_model/convolution/conv2d_3/bias
VariableV2*
	container *
shape:ђ*
dtype0*
_output_shapes	
:ђ*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias
Ќ
*cnn_model/convolution/conv2d_3/bias/AssignAssign#cnn_model/convolution/conv2d_3/bias5cnn_model/convolution/conv2d_3/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:ђ*
use_locking(
и
(cnn_model/convolution/conv2d_3/bias/readIdentity#cnn_model/convolution/conv2d_3/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:ђ
є
5Training/cnn_model/convolution/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
┼
.Training/cnn_model/convolution/conv2d_3/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*0
_output_shapes
:         

ђ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Т
/Training/cnn_model/convolution/conv2d_3/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
data_formatNHWC*0
_output_shapes
:         

ђ*
T0
а
,Training/cnn_model/convolution/conv2d_3/ReluRelu/Training/cnn_model/convolution/conv2d_3/BiasAdd*
T0*0
_output_shapes
:         

ђ
Ч
6Training/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_3/Relu*
ksize
*
paddingSAME*0
_output_shapes
:         ђ*
T0*
data_formatNHWC*
strides

█
Hcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      ђ      *
dtype0*
_output_shapes
:
к
Gcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
Icnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *Б┼<*
dtype0*
_output_shapes
: 
┬
Rcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:ђђ*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
seed2 
┘
Fcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:ђђ
К
Bcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:ђђ
у
%cnn_model/convolution/conv2d_4/kernel
VariableV2*
dtype0*(
_output_shapes
:ђђ*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:ђђ
и
,cnn_model/convolution/conv2d_4/kernel/AssignAssign%cnn_model/convolution/conv2d_4/kernelBcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ђђ
╩
*cnn_model/convolution/conv2d_4/kernel/readIdentity%cnn_model/convolution/conv2d_4/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:ђђ
╝
5cnn_model/convolution/conv2d_4/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
╔
#cnn_model/convolution/conv2d_4/bias
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:ђ*
dtype0*
_output_shapes	
:ђ
Ќ
*cnn_model/convolution/conv2d_4/bias/AssignAssign#cnn_model/convolution/conv2d_4/bias5cnn_model/convolution/conv2d_4/bias/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:ђ
и
(cnn_model/convolution/conv2d_4/bias/readIdentity#cnn_model/convolution/conv2d_4/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:ђ
є
5Training/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
┼
.Training/cnn_model/convolution/conv2d_4/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         ђ
Т
/Training/cnn_model/convolution/conv2d_4/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
data_formatNHWC*0
_output_shapes
:         ђ*
T0
а
,Training/cnn_model/convolution/conv2d_4/ReluRelu/Training/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:         ђ
Ч
6Training/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_4/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:         ђ
s
"Training/cnn_model/Reshape_1/shapeConst*
valueB"     	  *
dtype0*
_output_shapes
:
─
Training/cnn_model/Reshape_1Reshape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool"Training/cnn_model/Reshape_1/shape*(
_output_shapes
:         ђ*
T0*
Tshape0
х
9cnn_model/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     
е
8cnn_model/dense/kernel/Initializer/truncated_normal/meanConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ф
:cnn_model/dense/kernel/Initializer/truncated_normal/stddevConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *JQ┌<*
dtype0*
_output_shapes
: 
Ї
Ccnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9cnn_model/dense/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0* 
_output_shapes
:
ђђ*

seed *
T0*)
_class
loc:@cnn_model/dense/kernel
Ћ
7cnn_model/dense/kernel/Initializer/truncated_normal/mulMulCcnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormal:cnn_model/dense/kernel/Initializer/truncated_normal/stddev*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
ђђ
Ѓ
3cnn_model/dense/kernel/Initializer/truncated_normalAdd7cnn_model/dense/kernel/Initializer/truncated_normal/mul8cnn_model/dense/kernel/Initializer/truncated_normal/mean*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
ђђ
╣
cnn_model/dense/kernel
VariableV2*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:
ђђ*
dtype0* 
_output_shapes
:
ђђ
з
cnn_model/dense/kernel/AssignAssigncnn_model/dense/kernel3cnn_model/dense/kernel/Initializer/truncated_normal*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:
ђђ*
use_locking(
Ћ
cnn_model/dense/kernel/readIdentitycnn_model/dense/kernel*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
ђђ
ъ
&cnn_model/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:ђ*'
_class
loc:@cnn_model/dense/bias*
valueBђ*    
Ф
cnn_model/dense/bias
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:ђ
█
cnn_model/dense/bias/AssignAssigncnn_model/dense/bias&cnn_model/dense/bias/Initializer/zeros*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:ђ*
use_locking(
і
cnn_model/dense/bias/readIdentitycnn_model/dense/bias*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:ђ
й
Training/cnn_model/dense/MatMulMatMulTraining/cnn_model/Reshape_1cnn_model/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:         ђ*
transpose_a( 
▒
 Training/cnn_model/dense/BiasAddBiasAddTraining/cnn_model/dense/MatMulcnn_model/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         ђ
z
Training/cnn_model/dense/ReluRelu Training/cnn_model/dense/BiasAdd*
T0*(
_output_shapes
:         ђ
w
"Training/cnn_model/Reshape_2/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
»
Training/cnn_model/Reshape_2ReshapeTraining/cnn_model/dense/Relu"Training/cnn_model/Reshape_2/shape*,
_output_shapes
:         ђ*
T0*
Tshape0
g
Training/SequenceMask_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Г
Training/SequenceMask_1/MaxMax,training_input_pipeline/batch_join_and_pad:4Training/SequenceMask_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
a
Training/SequenceMask_1/Const_1Const*
value	B : *
dtype0*
_output_shapes
: 
a
Training/SequenceMask_1/Const_2Const*
dtype0*
_output_shapes
: *
value	B :
Х
Training/SequenceMask_1/RangeRangeTraining/SequenceMask_1/Const_1Training/SequenceMask_1/MaxTraining/SequenceMask_1/Const_2*#
_output_shapes
:         *

Tidx0
q
&Training/SequenceMask_1/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
╗
"Training/SequenceMask_1/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4&Training/SequenceMask_1/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
ђ
Training/SequenceMask_1/CastCast"Training/SequenceMask_1/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0
Њ
Training/SequenceMask_1/LessLessTraining/SequenceMask_1/RangeTraining/SequenceMask_1/Cast*
T0*'
_output_shapes
:         
Ё
Training/SequenceMask_1/Cast_1CastTraining/SequenceMask_1/Less*

SrcT0
*'
_output_shapes
:         *

DstT0
d
Training/ExpandDims_1/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
а
Training/ExpandDims_1
ExpandDimsTraining/SequenceMask_1/Cast_1Training/ExpandDims_1/dim*
T0*+
_output_shapes
:         *

Tdim0
g
%Training/rnn_model/recurrent/rnn/RankConst*
dtype0*
_output_shapes
: *
value	B :
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
┌
&Training/rnn_model/recurrent/rnn/rangeRange,Training/rnn_model/recurrent/rnn/range/start%Training/rnn_model/recurrent/rnn/Rank,Training/rnn_model/recurrent/rnn/range/delta*
_output_shapes
:*

Tidx0
Ђ
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
ш
'Training/rnn_model/recurrent/rnn/concatConcatV20Training/rnn_model/recurrent/rnn/concat/values_0&Training/rnn_model/recurrent/rnn/range,Training/rnn_model/recurrent/rnn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
┬
*Training/rnn_model/recurrent/rnn/transpose	TransposeTraining/cnn_model/Reshape_2'Training/rnn_model/recurrent/rnn/concat*
Tperm0*
T0*,
_output_shapes
:         ђ
Ј
0Training/rnn_model/recurrent/rnn/sequence_lengthIdentity,training_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:
ѓ
8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:
Ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
valueB:ђ*
dtype0*
_output_shapes
:
ђ
>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
х
9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV28Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ѓ
>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
э
8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
_output_shapes
:	ђ*
T0*

index_type0
ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
Ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
valueB:ђ*
dtype0*
_output_shapes
:
ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
dtype0*
_output_shapes
:*
valueB:
Ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:ђ*
dtype0*
_output_shapes
:
ѓ
@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╗
;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ё
@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
§
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	ђ
ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
dtype0*
_output_shapes
:*
valueB:
Ё
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
valueB:ђ*
dtype0*
_output_shapes
:
p
&Training/rnn_model/recurrent/rnn/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
p
&Training/rnn_model/recurrent/rnn/stackConst*
valueB:*
dtype0*
_output_shapes
:
ц
&Training/rnn_model/recurrent/rnn/EqualEqual&Training/rnn_model/recurrent/rnn/Shape&Training/rnn_model/recurrent/rnn/stack*
_output_shapes
:*
T0
p
&Training/rnn_model/recurrent/rnn/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
░
$Training/rnn_model/recurrent/rnn/AllAll&Training/rnn_model/recurrent/rnn/Equal&Training/rnn_model/recurrent/rnn/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
Й
-Training/rnn_model/recurrent/rnn/Assert/ConstConst*a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
ђ
/Training/rnn_model/recurrent/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
к
5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
є
5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
╝
.Training/rnn_model/recurrent/rnn/Assert/AssertAssert$Training/rnn_model/recurrent/rnn/All5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0&Training/rnn_model/recurrent/rnn/stack5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2&Training/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
└
,Training/rnn_model/recurrent/rnn/CheckSeqLenIdentity0Training/rnn_model/recurrent/rnn/sequence_length/^Training/rnn_model/recurrent/rnn/Assert/Assert*
T0*
_output_shapes
:
њ
(Training/rnn_model/recurrent/rnn/Shape_1Shape*Training/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
~
4Training/rnn_model/recurrent/rnn/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
ђ
6Training/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
ђ
6Training/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
а
.Training/rnn_model/recurrent/rnn/strided_sliceStridedSlice(Training/rnn_model/recurrent/rnn/Shape_14Training/rnn_model/recurrent/rnn/strided_slice/stack6Training/rnn_model/recurrent/rnn/strided_slice/stack_16Training/rnn_model/recurrent/rnn/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
r
(Training/rnn_model/recurrent/rnn/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
s
(Training/rnn_model/recurrent/rnn/Const_2Const*
valueB:ђ*
dtype0*
_output_shapes
:
p
.Training/rnn_model/recurrent/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
з
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
├
&Training/rnn_model/recurrent/rnn/zerosFill)Training/rnn_model/recurrent/rnn/concat_1,Training/rnn_model/recurrent/rnn/zeros/Const*
T0*

index_type0*
_output_shapes
:	ђ
r
(Training/rnn_model/recurrent/rnn/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
┴
$Training/rnn_model/recurrent/rnn/MinMin,Training/rnn_model/recurrent/rnn/CheckSeqLen(Training/rnn_model/recurrent/rnn/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
r
(Training/rnn_model/recurrent/rnn/Const_4Const*
valueB: *
dtype0*
_output_shapes
:
┴
$Training/rnn_model/recurrent/rnn/MaxMax,Training/rnn_model/recurrent/rnn/CheckSeqLen(Training/rnn_model/recurrent/rnn/Const_4*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
g
%Training/rnn_model/recurrent/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
л
,Training/rnn_model/recurrent/rnn/TensorArrayTensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*L
tensor_array_name75Training/rnn_model/recurrent/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:	ђ*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
Л
.Training/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*
identical_element_shapes(*K
tensor_array_name64Training/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	ђ*
clear_after_read(*
dynamic_size( 
Б
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape*Training/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
Љ
GTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Њ
ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Њ
ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
§
ATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeGTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ђ
?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Ђ
?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
И
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRange?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:         *

Tidx0
ю
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
д
(Training/rnn_model/recurrent/rnn/MaximumMaximum*Training/rnn_model/recurrent/rnn/Maximum/x$Training/rnn_model/recurrent/rnn/Max*
_output_shapes
: *
T0
«
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
ё
,Training/rnn_model/recurrent/rnn/while/EnterEnter8Training/rnn_model/recurrent/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
з
.Training/rnn_model/recurrent/rnn/while/Enter_1Enter%Training/rnn_model/recurrent/rnn/time*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
Ч
.Training/rnn_model/recurrent/rnn/while/Enter_2Enter.Training/rnn_model/recurrent/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ј
.Training/rnn_model/recurrent/rnn/while/Enter_3Enter8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
parallel_iterations *
_output_shapes
:	ђ*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
Љ
.Training/rnn_model/recurrent/rnn/while/Enter_4Enter:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	ђ*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
┼
,Training/rnn_model/recurrent/rnn/while/MergeMerge,Training/rnn_model/recurrent/rnn/while/Enter4Training/rnn_model/recurrent/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
╦
.Training/rnn_model/recurrent/rnn/while/Merge_1Merge.Training/rnn_model/recurrent/rnn/while/Enter_16Training/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
╦
.Training/rnn_model/recurrent/rnn/while/Merge_2Merge.Training/rnn_model/recurrent/rnn/while/Enter_26Training/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
н
.Training/rnn_model/recurrent/rnn/while/Merge_3Merge.Training/rnn_model/recurrent/rnn/while/Enter_36Training/rnn_model/recurrent/rnn/while/NextIteration_3*
T0*
N*!
_output_shapes
:	ђ: 
н
.Training/rnn_model/recurrent/rnn/while/Merge_4Merge.Training/rnn_model/recurrent/rnn/while/Enter_46Training/rnn_model/recurrent/rnn/while/NextIteration_4*
T0*
N*!
_output_shapes
:	ђ: 
х
+Training/rnn_model/recurrent/rnn/while/LessLess,Training/rnn_model/recurrent/rnn/while/Merge1Training/rnn_model/recurrent/rnn/while/Less/Enter*
_output_shapes
: *
T0
 
1Training/rnn_model/recurrent/rnn/while/Less/EnterEnter.Training/rnn_model/recurrent/rnn/strided_slice*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
╗
-Training/rnn_model/recurrent/rnn/while/Less_1Less.Training/rnn_model/recurrent/rnn/while/Merge_13Training/rnn_model/recurrent/rnn/while/Less_1/Enter*
_output_shapes
: *
T0
ч
3Training/rnn_model/recurrent/rnn/while/Less_1/EnterEnter(Training/rnn_model/recurrent/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
│
1Training/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd+Training/rnn_model/recurrent/rnn/while/Less-Training/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 
є
/Training/rnn_model/recurrent/rnn/while/LoopCondLoopCond1Training/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 
Щ
-Training/rnn_model/recurrent/rnn/while/SwitchSwitch,Training/rnn_model/recurrent/rnn/while/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/while/Merge*
_output_shapes
: : 
ђ
/Training/rnn_model/recurrent/rnn/while/Switch_1Switch.Training/rnn_model/recurrent/rnn/while/Merge_1/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_1*
_output_shapes
: : 
ђ
/Training/rnn_model/recurrent/rnn/while/Switch_2Switch.Training/rnn_model/recurrent/rnn/while/Merge_2/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_2*
_output_shapes
: : 
њ
/Training/rnn_model/recurrent/rnn/while/Switch_3Switch.Training/rnn_model/recurrent/rnn/while/Merge_3/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_3**
_output_shapes
:	ђ:	ђ
њ
/Training/rnn_model/recurrent/rnn/while/Switch_4Switch.Training/rnn_model/recurrent/rnn/while/Merge_4/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_4**
_output_shapes
:	ђ:	ђ
Ї
/Training/rnn_model/recurrent/rnn/while/IdentityIdentity/Training/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 
Љ
1Training/rnn_model/recurrent/rnn/while/Identity_1Identity1Training/rnn_model/recurrent/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
Љ
1Training/rnn_model/recurrent/rnn/while/Identity_2Identity1Training/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
џ
1Training/rnn_model/recurrent/rnn/while/Identity_3Identity1Training/rnn_model/recurrent/rnn/while/Switch_3:1*
_output_shapes
:	ђ*
T0
џ
1Training/rnn_model/recurrent/rnn/while/Identity_4Identity1Training/rnn_model/recurrent/rnn/while/Switch_4:1*
_output_shapes
:	ђ*
T0
а
,Training/rnn_model/recurrent/rnn/while/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
▒
*Training/rnn_model/recurrent/rnn/while/addAdd/Training/rnn_model/recurrent/rnn/while/Identity,Training/rnn_model/recurrent/rnn/while/add/y*
T0*
_output_shapes
: 
░
8Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3TensorArrayReadV3>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	ђ
љ
>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
╗
@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
о
3Training/rnn_model/recurrent/rnn/while/GreaterEqualGreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_19Training/rnn_model/recurrent/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:
Ѕ
9Training/rnn_model/recurrent/rnn/while/GreaterEqual/EnterEnter,Training/rnn_model/recurrent/rnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
┘
Krnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
╠
Jrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
╬
Lrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *ВЛ<
├
Urnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
ђђ*

seed *
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
seed2 
П
Irnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulMulUrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalLrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
ђђ
╦
Ernn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normalAddIrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulJrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
ђђ*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
П
(rnn_model/recurrent/rnn/lstm_cell/kernel
VariableV2*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:
ђђ*
dtype0* 
_output_shapes
:
ђђ
╗
/rnn_model/recurrent/rnn/lstm_cell/kernel/AssignAssign(rnn_model/recurrent/rnn/lstm_cell/kernelErnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
ђђ*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
ј
-rnn_model/recurrent/rnn/lstm_cell/kernel/readIdentity(rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
ђђ*
T0
╬
Hrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:ђ*
dtype0*
_output_shapes
:
Й
>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
й
8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zerosFillHrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensor>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:ђ
¤
&rnn_model/recurrent/rnn/lstm_cell/bias
VariableV2*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:ђ*
dtype0*
_output_shapes	
:ђ*
shared_name 
Б
-rnn_model/recurrent/rnn/lstm_cell/bias/AssignAssign&rnn_model/recurrent/rnn/lstm_cell/bias8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:ђ*
use_locking(
Ё
+rnn_model/recurrent/rnn/lstm_cell/bias/readIdentity&rnn_model/recurrent/rnn/lstm_cell/bias*
T0*
_output_shapes	
:ђ
░
<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axisConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Г
7Training/rnn_model/recurrent/rnn/while/lstm_cell/concatConcatV28Training/rnn_model/recurrent/rnn/while/TensorArrayReadV31Training/rnn_model/recurrent/rnn/while/Identity_4<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis*
N*
_output_shapes
:	ђ*

Tidx0*
T0
Ѕ
7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMulMatMul7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter*
_output_shapes
:	ђ*
transpose_a( *
transpose_b( *
T0
ћ
=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
ђђ*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
§
8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAddBiasAdd7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	ђ
ј
>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/EnterEnter+rnn_model/recurrent/rnn/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:ђ*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ф
6Training/rnn_model/recurrent/rnn/while/lstm_cell/ConstConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
┤
@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dimConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ќ
6Training/rnn_model/recurrent/rnn/while/lstm_cell/splitSplit@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd*
T0*@
_output_shapes.
,:	ђ:	ђ:	ђ:	ђ*
	num_split
Г
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
О
4Training/rnn_model/recurrent/rnn/while/lstm_cell/addAdd8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:26Training/rnn_model/recurrent/rnn/while/lstm_cell/add/y*
T0*
_output_shapes
:	ђ
Б
8Training/rnn_model/recurrent/rnn/while/lstm_cell/SigmoidSigmoid4Training/rnn_model/recurrent/rnn/while/lstm_cell/add*
T0*
_output_shapes
:	ђ
м
4Training/rnn_model/recurrent/rnn/while/lstm_cell/mulMul8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid1Training/rnn_model/recurrent/rnn/while/Identity_3*
T0*
_output_shapes
:	ђ
Д
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1Sigmoid6Training/rnn_model/recurrent/rnn/while/lstm_cell/split*
T0*
_output_shapes
:	ђ
А
5Training/rnn_model/recurrent/rnn/while/lstm_cell/TanhTanh8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:1*
T0*
_output_shapes
:	ђ
┌
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_15Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
T0*
_output_shapes
:	ђ
Н
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1Add4Training/rnn_model/recurrent/rnn/while/lstm_cell/mul6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1*
_output_shapes
:	ђ*
T0
Е
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2Sigmoid8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:3*
T0*
_output_shapes
:	ђ
А
7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1Tanh6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*
_output_shapes
:	ђ
▄
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_27Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
T0*
_output_shapes
:	ђ
╬
-Training/rnn_model/recurrent/rnn/while/SelectSelect3Training/rnn_model/recurrent/rnn/while/GreaterEqual3Training/rnn_model/recurrent/rnn/while/Select/Enter6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	ђ
═
3Training/rnn_model/recurrent/rnn/while/Select/EnterEnter&Training/rnn_model/recurrent/rnn/zeros*
is_constant(*
_output_shapes
:	ђ*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
╬
/Training/rnn_model/recurrent/rnn/while/Select_1Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_36Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	ђ
╬
/Training/rnn_model/recurrent/rnn/while/Select_2Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_46Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	ђ
│
JTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1-Training/rnn_model/recurrent/rnn/while/Select1Training/rnn_model/recurrent/rnn/while/Identity_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
в
PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
б
.Training/rnn_model/recurrent/rnn/while/add_1/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
и
,Training/rnn_model/recurrent/rnn/while/add_1Add1Training/rnn_model/recurrent/rnn/while/Identity_1.Training/rnn_model/recurrent/rnn/while/add_1/y*
T0*
_output_shapes
: 
њ
4Training/rnn_model/recurrent/rnn/while/NextIterationNextIteration*Training/rnn_model/recurrent/rnn/while/add*
T0*
_output_shapes
: 
ќ
6Training/rnn_model/recurrent/rnn/while/NextIteration_1NextIteration,Training/rnn_model/recurrent/rnn/while/add_1*
T0*
_output_shapes
: 
┤
6Training/rnn_model/recurrent/rnn/while/NextIteration_2NextIterationJTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
б
6Training/rnn_model/recurrent/rnn/while/NextIteration_3NextIteration/Training/rnn_model/recurrent/rnn/while/Select_1*
T0*
_output_shapes
:	ђ
б
6Training/rnn_model/recurrent/rnn/while/NextIteration_4NextIteration/Training/rnn_model/recurrent/rnn/while/Select_2*
T0*
_output_shapes
:	ђ
Ѓ
+Training/rnn_model/recurrent/rnn/while/ExitExit-Training/rnn_model/recurrent/rnn/while/Switch*
_output_shapes
: *
T0
Є
-Training/rnn_model/recurrent/rnn/while/Exit_1Exit/Training/rnn_model/recurrent/rnn/while/Switch_1*
_output_shapes
: *
T0
Є
-Training/rnn_model/recurrent/rnn/while/Exit_2Exit/Training/rnn_model/recurrent/rnn/while/Switch_2*
T0*
_output_shapes
: 
љ
-Training/rnn_model/recurrent/rnn/while/Exit_3Exit/Training/rnn_model/recurrent/rnn/while/Switch_3*
T0*
_output_shapes
:	ђ
љ
-Training/rnn_model/recurrent/rnn/while/Exit_4Exit/Training/rnn_model/recurrent/rnn/while/Switch_4*
_output_shapes
:	ђ*
T0
ј
CTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
_output_shapes
: 
└
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startConst*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
└
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/deltaConst*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
ш
7Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeRange=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startCTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/delta*

Tidx0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*#
_output_shapes
:         
ї
ETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3,Training/rnn_model/recurrent/rnn/TensorArray7Training/rnn_model/recurrent/rnn/TensorArrayStack/range-Training/rnn_model/recurrent/rnn/while/Exit_2*
element_shape:	ђ*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
dtype0*,
_output_shapes
:         ђ
s
(Training/rnn_model/recurrent/rnn/Const_5Const*
valueB:ђ*
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
Р
(Training/rnn_model/recurrent/rnn/range_1Range.Training/rnn_model/recurrent/rnn/range_1/start'Training/rnn_model/recurrent/rnn/Rank_1.Training/rnn_model/recurrent/rnn/range_1/delta*
_output_shapes
:*

Tidx0
Ѓ
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
§
)Training/rnn_model/recurrent/rnn/concat_2ConcatV22Training/rnn_model/recurrent/rnn/concat_2/values_0(Training/rnn_model/recurrent/rnn/range_1.Training/rnn_model/recurrent/rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
№
,Training/rnn_model/recurrent/rnn/transpose_1	TransposeETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3)Training/rnn_model/recurrent/rnn/concat_2*
T0*,
_output_shapes
:         ђ*
Tperm0
q
 Training/rnn_model/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"       
Х
Training/rnn_model/ReshapeReshape,Training/rnn_model/recurrent/rnn/transpose_1 Training/rnn_model/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:         ђ
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
2Training/logits/dropout/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
w
2Training/logits/dropout/dropout/random_uniform/maxConst*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
═
<Training/logits/dropout/dropout/random_uniform/RandomUniformRandomUniform%Training/logits/dropout/dropout/Shape*
dtype0*(
_output_shapes
:         ђ*
seed2 *

seed *
T0
┬
2Training/logits/dropout/dropout/random_uniform/subSub2Training/logits/dropout/dropout/random_uniform/max2Training/logits/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
я
2Training/logits/dropout/dropout/random_uniform/mulMul<Training/logits/dropout/dropout/random_uniform/RandomUniform2Training/logits/dropout/dropout/random_uniform/sub*
T0*(
_output_shapes
:         ђ
л
.Training/logits/dropout/dropout/random_uniformAdd2Training/logits/dropout/dropout/random_uniform/mul2Training/logits/dropout/dropout/random_uniform/min*(
_output_shapes
:         ђ*
T0
И
#Training/logits/dropout/dropout/addAdd)Training/logits/dropout/dropout/keep_prob.Training/logits/dropout/dropout/random_uniform*(
_output_shapes
:         ђ*
T0
є
%Training/logits/dropout/dropout/FloorFloor#Training/logits/dropout/dropout/add*
T0*(
_output_shapes
:         ђ
е
#Training/logits/dropout/dropout/divRealDivTraining/rnn_model/Reshape)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:         ђ
Е
#Training/logits/dropout/dropout/mulMul#Training/logits/dropout/dropout/div%Training/logits/dropout/dropout/Floor*
T0*(
_output_shapes
:         ђ
»
6logits/dense/kernel/Initializer/truncated_normal/shapeConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
б
5logits/dense/kernel/Initializer/truncated_normal/meanConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ц
7logits/dense/kernel/Initializer/truncated_normal/stddevConst*&
_class
loc:@logits/dense/kernel*
valueB
 *R${=*
dtype0*
_output_shapes
: 
Ѓ
@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6logits/dense/kernel/Initializer/truncated_normal/shape*
T0*&
_class
loc:@logits/dense/kernel*
seed2 *
dtype0*
_output_shapes
:	ђ*

seed 
ѕ
4logits/dense/kernel/Initializer/truncated_normal/mulMul@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormal7logits/dense/kernel/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	ђ
Ш
0logits/dense/kernel/Initializer/truncated_normalAdd4logits/dense/kernel/Initializer/truncated_normal/mul5logits/dense/kernel/Initializer/truncated_normal/mean*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	ђ
▒
logits/dense/kernel
VariableV2*&
_class
loc:@logits/dense/kernel*
	container *
shape:	ђ*
dtype0*
_output_shapes
:	ђ*
shared_name 
Т
logits/dense/kernel/AssignAssignlogits/dense/kernel0logits/dense/kernel/Initializer/truncated_normal*
validate_shape(*
_output_shapes
:	ђ*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel
І
logits/dense/kernel/readIdentitylogits/dense/kernel*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	ђ
ќ
#logits/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*$
_class
loc:@logits/dense/bias*
valueB*    
Б
logits/dense/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@logits/dense/bias*
	container 
╬
logits/dense/bias/AssignAssignlogits/dense/bias#logits/dense/bias/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:
ђ
logits/dense/bias/readIdentitylogits/dense/bias*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:
й
Training/logits/dense/MatMulMatMul#Training/logits/dropout/dropout/mullogits/dense/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
Д
Training/logits/dense/BiasAddBiasAddTraining/logits/dense/MatMullogits/dense/bias/read*
data_formatNHWC*'
_output_shapes
:         *
T0
r
Training/logits/Reshape/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
ц
Training/logits/ReshapeReshapeTraining/logits/dense/BiasAddTraining/logits/Reshape/shape*
T0*
Tshape0*+
_output_shapes
:         
І
Training/logits_prediction/mulMulTraining/logits/ReshapeTraining/ExpandDims_1*
T0*+
_output_shapes
:         
s
1Training/logits_prediction/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
└
Training/logits_prediction/MeanMeanTraining/logits_prediction/mul1Training/logits_prediction/Mean/reduction_indices*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0
Ј
ETraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
Ќ
cTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsTraining/logits_prediction/Mean,training_input_pipeline/batch_join_and_pad:1*
T0*$
_output_shapes
::*
Tlabels0	
k
!Training/cross_entropy_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ь
 Training/cross_entropy_loss/MeanMeancTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits!Training/cross_entropy_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
j
(Training/accuracy_stats/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
и
Training/accuracy_stats/ArgMaxArgMaxTraining/logits_prediction/Mean(Training/accuracy_stats/ArgMax/dimension*
output_type0	*
_output_shapes
:*

Tidx0*
T0
Ў
Training/accuracy_stats/EqualEqualTraining/accuracy_stats/ArgMax,training_input_pipeline/batch_join_and_pad:1*
T0	*
_output_shapes
:
w
Training/accuracy_stats/CastCastTraining/accuracy_stats/Equal*
_output_shapes
:*

DstT0*

SrcT0

g
Training/accuracy_stats/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ю
Training/accuracy_stats/SumSumTraining/accuracy_stats/CastTraining/accuracy_stats/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
y
Training/accuracy_stats/Cast_1CastTraining/accuracy_stats/Equal*

SrcT0
*
_output_shapes
:*

DstT0
i
Training/accuracy_stats/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Б
Training/accuracy_stats/MeanMeanTraining/accuracy_stats/Cast_1Training/accuracy_stats/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
i
'Training/accuracy/predictions/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
х
Training/accuracy/predictionsArgMaxTraining/logits_prediction/Mean'Training/accuracy/predictions/dimension*
output_type0	*
_output_shapes
:*

Tidx0*
T0
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
м
Training/global_step/AssignAssignTraining/global_step"Training/global_step/initial_value*
T0*'
_class
loc:@Training/global_step*
validate_shape(*
_output_shapes
: *
use_locking(
Ё
Training/global_step/readIdentityTraining/global_step*
T0*'
_class
loc:@Training/global_step*
_output_shapes
: 
l
'Training/ExponentialDecay/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o:
q
Training/ExponentialDecay/CastCastTraining/global_step/read*
_output_shapes
: *

DstT0*

SrcT0
e
"Training/ExponentialDecay/Cast_1/xConst*
value
B :З*
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
 *ВQx?*
dtype0*
_output_shapes
: 
Ј
!Training/ExponentialDecay/truedivRealDivTraining/ExponentialDecay/Cast Training/ExponentialDecay/Cast_1*
_output_shapes
: *
T0
ї
Training/ExponentialDecay/PowPow"Training/ExponentialDecay/Cast_2/x!Training/ExponentialDecay/truediv*
_output_shapes
: *
T0
Ѕ
Training/ExponentialDecayMul'Training/ExponentialDecay/learning_rateTraining/ExponentialDecay/Pow*
T0*
_output_shapes
: 
[
Training/gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
a
Training/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
і
Training/gradients/FillFillTraining/gradients/ShapeTraining/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
\
Training/gradients/f_countConst*
value	B : *
dtype0*
_output_shapes
: 
о
Training/gradients/f_count_1EnterTraining/gradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ї
Training/gradients/MergeMergeTraining/gradients/f_count_1 Training/gradients/NextIteration*
T0*
N*
_output_shapes
: : 
Љ
Training/gradients/SwitchSwitchTraining/gradients/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0
ї
Training/gradients/Add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
u
Training/gradients/AddAddTraining/gradients/Switch:1Training/gradients/Add/y*
T0*
_output_shapes
: 
Щ
 Training/gradients/NextIterationNextIterationTraining/gradients/Add[^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2Ђ^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2e^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2*
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
в
Training/gradients/b_count_1EnterTraining/gradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Љ
Training/gradients/Merge_1MergeTraining/gradients/b_count_1"Training/gradients/NextIteration_1*
N*
_output_shapes
: : *
T0
Њ
Training/gradients/GreaterEqualGreaterEqualTraining/gradients/Merge_1%Training/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
Ы
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
ѓ
Training/gradients/Switch_1SwitchTraining/gradients/Merge_1Training/gradients/b_count_2*
_output_shapes
: : *
T0
ё
Training/gradients/SubSubTraining/gradients/Switch_1:1%Training/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
Ж
"Training/gradients/NextIteration_1NextIterationTraining/gradients/Sub|^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
b
Training/gradients/b_count_3ExitTraining/gradients/Switch_1*
T0*
_output_shapes
: 
љ
FTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
▀
@Training/gradients/Training/cross_entropy_loss/Mean_grad/ReshapeReshapeTraining/gradients/FillFTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
ѕ
>Training/gradients/Training/cross_entropy_loss/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB:
■
=Training/gradients/Training/cross_entropy_loss/Mean_grad/TileTile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Reshape>Training/gradients/Training/cross_entropy_loss/Mean_grad/Const*
T0*
_output_shapes
:*

Tmultiples0
Ё
@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1Const*
valueB
 *  ђA*
dtype0*
_output_shapes
: 
ы
@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivRealDiv=Training/gradients/Training/cross_entropy_loss/Mean_grad/Tile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1*
T0*
_output_shapes
:
║
Training/gradients/zeros_like	ZerosLikeeTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
Т
ІTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradienteTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
о
іTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
Ў
єTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivіTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
к
Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulєTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsІTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
=Training/gradients/Training/logits_prediction/Mean_grad/ShapeShapeTraining/logits_prediction/mul*
_output_shapes
:*
T0*
out_type0
л
<Training/gradients/Training/logits_prediction/Mean_grad/SizeConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
д
;Training/gradients/Training/logits_prediction/Mean_grad/addAdd1Training/logits_prediction/Mean/reduction_indices<Training/gradients/Training/logits_prediction/Mean_grad/Size*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
: 
х
;Training/gradients/Training/logits_prediction/Mean_grad/modFloorMod;Training/gradients/Training/logits_prediction/Mean_grad/add<Training/gradients/Training/logits_prediction/Mean_grad/Size*
_output_shapes
: *
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape
н
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1Const*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
valueB *
dtype0*
_output_shapes
: 
О
CTraining/gradients/Training/logits_prediction/Mean_grad/range/startConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 
О
CTraining/gradients/Training/logits_prediction/Mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :
ѕ
=Training/gradients/Training/logits_prediction/Mean_grad/rangeRangeCTraining/gradients/Training/logits_prediction/Mean_grad/range/start<Training/gradients/Training/logits_prediction/Mean_grad/SizeCTraining/gradients/Training/logits_prediction/Mean_grad/range/delta*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
:*

Tidx0
о
BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/valueConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
╬
<Training/gradients/Training/logits_prediction/Mean_grad/FillFill?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/value*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*

index_type0*
_output_shapes
: 
п
ETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchDynamicStitch=Training/gradients/Training/logits_prediction/Mean_grad/range;Training/gradients/Training/logits_prediction/Mean_grad/mod=Training/gradients/Training/logits_prediction/Mean_grad/Shape<Training/gradients/Training/logits_prediction/Mean_grad/Fill*
N*#
_output_shapes
:         *
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape
Н
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :
н
?Training/gradients/Training/logits_prediction/Mean_grad/MaximumMaximumETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/y*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*#
_output_shapes
:         
├
@Training/gradients/Training/logits_prediction/Mean_grad/floordivFloorDiv=Training/gradients/Training/logits_prediction/Mean_grad/Shape?Training/gradients/Training/logits_prediction/Mean_grad/Maximum*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
:
├
?Training/gradients/Training/logits_prediction/Mean_grad/ReshapeReshapeTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
А
<Training/gradients/Training/logits_prediction/Mean_grad/TileTile?Training/gradients/Training/logits_prediction/Mean_grad/Reshape@Training/gradients/Training/logits_prediction/Mean_grad/floordiv*
T0*=
_output_shapes+
):'                           *

Tmultiples0
Ю
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2ShapeTraining/logits_prediction/mul*
_output_shapes
:*
T0*
out_type0
љ
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3Const*
valueB"      *
dtype0*
_output_shapes
:
Є
=Training/gradients/Training/logits_prediction/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ѓ
<Training/gradients/Training/logits_prediction/Mean_grad/ProdProd?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2=Training/gradients/Training/logits_prediction/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Ѕ
?Training/gradients/Training/logits_prediction/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
є
>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1Prod?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3?Training/gradients/Training/logits_prediction/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Ё
CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
Ы
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1Maximum>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
­
BTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1FloorDiv<Training/gradients/Training/logits_prediction/Mean_grad/ProdATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
И
<Training/gradients/Training/logits_prediction/Mean_grad/CastCastBTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
Ч
?Training/gradients/Training/logits_prediction/Mean_grad/truedivRealDiv<Training/gradients/Training/logits_prediction/Mean_grad/Tile<Training/gradients/Training/logits_prediction/Mean_grad/Cast*
T0*+
_output_shapes
:         
Њ
<Training/gradients/Training/logits_prediction/mul_grad/ShapeShapeTraining/logits/Reshape*
T0*
out_type0*
_output_shapes
:
Њ
>Training/gradients/Training/logits_prediction/mul_grad/Shape_1ShapeTraining/ExpandDims_1*
T0*
out_type0*
_output_shapes
:
а
LTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<Training/gradients/Training/logits_prediction/mul_grad/Shape>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
¤
:Training/gradients/Training/logits_prediction/mul_grad/MulMul?Training/gradients/Training/logits_prediction/Mean_grad/truedivTraining/ExpandDims_1*
T0*+
_output_shapes
:         
І
:Training/gradients/Training/logits_prediction/mul_grad/SumSum:Training/gradients/Training/logits_prediction/mul_grad/MulLTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Є
>Training/gradients/Training/logits_prediction/mul_grad/ReshapeReshape:Training/gradients/Training/logits_prediction/mul_grad/Sum<Training/gradients/Training/logits_prediction/mul_grad/Shape*+
_output_shapes
:         *
T0*
Tshape0
М
<Training/gradients/Training/logits_prediction/mul_grad/Mul_1MulTraining/logits/Reshape?Training/gradients/Training/logits_prediction/Mean_grad/truediv*
T0*+
_output_shapes
:         
Љ
<Training/gradients/Training/logits_prediction/mul_grad/Sum_1Sum<Training/gradients/Training/logits_prediction/mul_grad/Mul_1NTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ї
@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1Reshape<Training/gradients/Training/logits_prediction/mul_grad/Sum_1>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*
T0*
Tshape0*+
_output_shapes
:         
М
GTraining/gradients/Training/logits_prediction/mul_grad/tuple/group_depsNoOp?^Training/gradients/Training/logits_prediction/mul_grad/ReshapeA^Training/gradients/Training/logits_prediction/mul_grad/Reshape_1
Ь
OTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/logits_prediction/mul_grad/ReshapeH^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*+
_output_shapes
:         *
T0*Q
_classG
ECloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape
З
QTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1H^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1*+
_output_shapes
:         
њ
5Training/gradients/Training/logits/Reshape_grad/ShapeShapeTraining/logits/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:
і
7Training/gradients/Training/logits/Reshape_grad/ReshapeReshapeOTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency5Training/gradients/Training/logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
┼
ATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradBiasAddGrad7Training/gradients/Training/logits/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
╠
FTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_depsNoOp8^Training/gradients/Training/logits/Reshape_grad/ReshapeB^Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad
┌
NTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencyIdentity7Training/gradients/Training/logits/Reshape_grad/ReshapeG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@Training/gradients/Training/logits/Reshape_grad/Reshape*'
_output_shapes
:         
с
PTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1IdentityATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*T
_classJ
HFloc:@Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad
ѕ
;Training/gradients/Training/logits/dense/MatMul_grad/MatMulMatMulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencylogits/dense/kernel/read*(
_output_shapes
:         ђ*
transpose_a( *
transpose_b(*
T0
ї
=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1MatMul#Training/logits/dropout/dropout/mulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	ђ*
transpose_a(*
transpose_b( 
╦
ETraining/gradients/Training/logits/dense/MatMul_grad/tuple/group_depsNoOp<^Training/gradients/Training/logits/dense/MatMul_grad/MatMul>^Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1
р
MTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependencyIdentity;Training/gradients/Training/logits/dense/MatMul_grad/MatMulF^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul*(
_output_shapes
:         ђ
я
OTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1Identity=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1F^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	ђ*
T0*P
_classF
DBloc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1
ц
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeShape#Training/logits/dropout/dropout/div*
T0*
out_type0*
_output_shapes
:
е
CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1Shape%Training/logits/dropout/dropout/Floor*
T0*
out_type0*
_output_shapes
:
»
QTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
№
?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulMulMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency%Training/logits/dropout/dropout/Floor*
T0*(
_output_shapes
:         ђ
џ
?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumSum?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulQTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Њ
CTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:         ђ
№
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1Mul#Training/logits/dropout/dropout/divMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:         ђ
а
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1STraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ў
ETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:         ђ
Р
LTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1
 
TTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape*(
_output_shapes
:         ђ
Ё
VTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1*(
_output_shapes
:         ђ
Џ
ATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeShapeTraining/rnn_model/Reshape*
T0*
out_type0*
_output_shapes
:
є
CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
»
QTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ѓ
CTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivRealDivTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:         ђ
ъ
?Training/gradients/Training/logits/dropout/dropout/div_grad/SumSumCTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivQTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Њ
CTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/div_grad/SumATraining/gradients/Training/logits/dropout/dropout/div_grad/Shape*(
_output_shapes
:         ђ*
T0*
Tshape0
Ћ
?Training/gradients/Training/logits/dropout/dropout/div_grad/NegNegTraining/rnn_model/Reshape*
T0*(
_output_shapes
:         ђ
№
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1RealDiv?Training/gradients/Training/logits/dropout/dropout/div_grad/Neg)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:         ђ
ш
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2RealDivETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:         ђ
ќ
?Training/gradients/Training/logits/dropout/dropout/div_grad/mulMulTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2*(
_output_shapes
:         ђ*
T0
ъ
ATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1Sum?Training/gradients/Training/logits/dropout/dropout/div_grad/mulSTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Є
ETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Р
LTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/div_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1
 
TTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape*(
_output_shapes
:         ђ
з
VTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1*
_output_shapes
: 
ц
8Training/gradients/Training/rnn_model/Reshape_grad/ShapeShape,Training/rnn_model/recurrent/rnn/transpose_1*
_output_shapes
:*
T0*
out_type0
џ
:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeReshapeTTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency8Training/gradients/Training/rnn_model/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:         ђ
╗
VTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutationInvertPermutation)Training/rnn_model/recurrent/rnn/concat_2*
T0*
_output_shapes
:
│
NTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose	Transpose:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeVTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutation*,
_output_shapes
:         ђ*
Tperm0*
T0
­
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
sourceTraining/gradients*
_output_shapes

:: 
Џ
{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity-Training/rnn_model/recurrent/rnn/while/Exit_2ђ^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray
к
ЁTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV37Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeNTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
y
(Training/gradients/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
c
Training/gradients/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
д
Training/gradients/zerosFill(Training/gradients/zeros/shape_as_tensorTraining/gradients/zeros/Const*
T0*

index_type0*
_output_shapes
:	ђ
{
*Training/gradients/zeros_1/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"      
e
 Training/gradients/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
г
Training/gradients/zeros_1Fill*Training/gradients/zeros_1/shape_as_tensor Training/gradients/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	ђ
Ё
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitEnterЁTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
а
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitEnterTraining/gradients/zeros*
parallel_iterations *
_output_shapes
:	ђ*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
б
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitEnterTraining/gradients/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	ђ*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
г
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIteration*
N*
_output_shapes
: : *
T0
х
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIteration*
N*!
_output_shapes
:	ђ: *
T0
х
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	ђ: 
¤
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: : 
»
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch
џ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
ъ
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
р
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch**
_output_shapes
:	ђ:	ђ
»
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch
Б
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch*
_output_shapes
:	ђ
Д
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch*
_output_shapes
:	ђ
р
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch**
_output_shapes
:	ђ:	ђ
»
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch
Б
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	ђ
Д
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	ђ
Н
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_2_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
я
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_3_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency*
_output_shapes
:	ђ*
T0
я
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_4_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency*
_output_shapes
:	ђ*
T0
Њ
ёTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3іTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnteraTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
sourceTraining/gradients*
_output_shapes

:: 
╣
іTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
С
ђTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1Ё^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2
┬
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3ёTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2ђTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:	ђ
І
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*
dtype0*
_output_shapes
: *D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1*
valueB :
         
є
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*

stack_name *
_output_shapes
:*
	elem_type0*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1
ў
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ї
ђTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1^Training/gradients/Add*
T0*
_output_shapes
: *
swap_memory(
О
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2ЁTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
: 
и
ЁTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
ћ
{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerZ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2ђ^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2d^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2\^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
о
sTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpb^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1u^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
Д
{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentitytTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*Є
_class}
{yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
_output_shapes
:	ђ
У
}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
_output_shapes
: *
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch
╠
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"      
Х
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
н
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	ђ
ћ
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like*
T0*
_output_shapes
:	ђ
у
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/ConstConst*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*
valueB :
         *
dtype0*
_output_shapes
: 
╝
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_accStackV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Const*
	elem_type0
*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*

stack_name *
_output_shapes
:
╠
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
┼
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2StackPushV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Enter3Training/rnn_model/recurrent/rnn/while/GreaterEqual^Training/gradients/Add*
T0
*
_output_shapes
:*
swap_memory(
ј
YTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2
StackPopV2_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:*
	elem_type0

Ж
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
ќ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1*
_output_shapes
:	ђ*
T0
ё
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
ц
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
_output_shapes
:	ђ
ф
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	ђ
╠
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
Х
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
н
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	ђ
ћ
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like*
T0*
_output_shapes
:	ђ
ќ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	ђ
ё
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1
ц
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
_output_shapes
:	ђ
ф
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
_output_shapes
:	ђ
╩
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
┤
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
╬
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_likeFill`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorVTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	ђ
ф
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like*
T0*
_output_shapes
:	ђ
г
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*
_output_shapes
:	ђ
■
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_depsNoOpM^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1
ю
^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependencyIdentityLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectW^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
_output_shapes
:	ђ*
T0*_
_classU
SQloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select
б
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1IdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1W^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1*
_output_shapes
:	ђ
§
Training/gradients/AddNAddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
N*
_output_shapes
:	ђ
ч
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulMulTraining/gradients/AddN]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*
_output_shapes
:	ђ
№
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
valueB :
         *
dtype0*
_output_shapes
: 
╚
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Const*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*

stack_name *
_output_shapes
:*
	elem_type0
н
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
о
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1^Training/gradients/Add*
T0*
_output_shapes
:	ђ*
swap_memory(
Џ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
Ы
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
 
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1MulTraining/gradients/AddN_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	ђ
З
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/ConstConst*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*
valueB :
         *
dtype0*
_output_shapes
: 
¤
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Const*
	elem_type0*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*

stack_name *
_output_shapes
:
п
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
П
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2^Training/gradients/Add*
T0*
_output_shapes
:	ђ*
swap_memory(
Ъ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
:	ђ
Ш
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Њ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1
║
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul*
_output_shapes
:	ђ
└
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1*
_output_shapes
:	ђ
ѕ
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIterationNextIteration}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
р
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency*
_output_shapes
:	ђ*
T0
п
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	ђ
э
Training/gradients/AddN_1AddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGrad*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
N*
_output_shapes
:	ђ
Ѓ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_depsNoOp^Training/gradients/AddN_1
 
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependencyIdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
_output_shapes
:	ђ*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
Ђ
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1IdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	ђ
К
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulMulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2*
_output_shapes
:	ђ*
T0
у
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/ConstConst*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*
valueB :
         *
dtype0*
_output_shapes
: 
Й
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_accStackV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Const*
	elem_type0*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*

stack_name *
_output_shapes
:
л
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
╠
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2StackPushV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Enter1Training/rnn_model/recurrent/rnn/while/Identity_3^Training/gradients/Add*
T0*
_output_shapes
:	ђ*
swap_memory(
Ќ
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2
StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
Ь
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
╦
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1MulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2*
_output_shapes
:	ђ*
T0
­
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/ConstConst*K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*
valueB :
         *
dtype0*
_output_shapes
: 
╔
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Const*K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
н
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
О
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Enter8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid^Training/gradients/Add*
T0*
_output_shapes
:	ђ*
swap_memory(
Џ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
Ы
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ї
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_depsNoOpQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1
▓
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependencyIdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul*
_output_shapes
:	ђ
И
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1IdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
_output_shapes
:	ђ*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1
═
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2*
_output_shapes
:	ђ*
T0
ь
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/ConstConst*H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
valueB :
         *
dtype0*
_output_shapes
: 
к
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh
н
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
н
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Enter5Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh^Training/gradients/Add*
T0*
_output_shapes
:	ђ*
swap_memory(
Џ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
Ы
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Л
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1MuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	ђ
З
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*
valueB :
         
¤
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Const*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:*
	elem_type0
п
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
П
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1^Training/gradients/Add*
T0*
_output_shapes
:	ђ*
swap_memory(
Ъ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
Ш
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Њ
_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1
║
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul*
_output_shapes
:	ђ
└
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1*
_output_shapes
:	ђ
█
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:	ђ
ѓ
Training/gradients/AddN_2AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencygTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1*
N*
_output_shapes
:	ђ*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select
р
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency*
_output_shapes
:	ђ*
T0
о
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	ђ
╝
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeConst^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"      
░
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1Const^Training/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
Р
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┘
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumSum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradbTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
й
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeReshapePTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:	ђ
П
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1Sum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGraddTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
║
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1ReshapeRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ћ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_depsNoOpU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1
║
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependencyIdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape*
_output_shapes
:	ђ
и
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency_1IdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1*
_output_shapes
: 
Г
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIterationNextIterationTraining/gradients/AddN_2*
_output_shapes
:	ђ*
T0
Ч
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatConcatV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradeTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGrad[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/Const*
T0*
N*
_output_shapes
:	ђ*

Tidx0
Х
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
 
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:ђ
а
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_depsNoOp]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat
─
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
_output_shapes
:	ђ
л
kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identity\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*o
_classe
caloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:ђ
щ
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulMatMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/Enter*
T0*
_output_shapes
:	ђ*
transpose_a( *
transpose_b(
к
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
ђђ*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ѓ
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1MatMulcTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
ђђ*
transpose_a(
ш
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat*
valueB :
         *
dtype0*
_output_shapes
: 
н
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Const*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat*

stack_name *
_output_shapes
:*
	elem_type0
Я
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Р
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat^Training/gradients/Add*
_output_shapes
:	ђ*
swap_memory(*
T0
Д
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	ђ*
	elem_type0
■
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
ю
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_depsNoOpW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulY^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1
─
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependencyIdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMula^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
_output_shapes
:	ђ*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul
╦
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
ђђ
Ф
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
Ы
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1Enter\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes	
:ђ*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
я
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Merge^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:ђ: 
њ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/SwitchSwitch^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Training/gradients/b_count_2*"
_output_shapes
:ђ:ђ*
T0
Н
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/AddAdd_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch:1kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:ђ
э
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes	
:ђ
в
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3Exit]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch*
_output_shapes	
:ђ*
T0
░
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
»
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/RankConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Г
STraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modFloorModUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Rank*
_output_shapes
: *
T0
┐
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeConst^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"      
┴
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1Const^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"      
ю
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetConcatOffsetSTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
┤
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceSlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape*
_output_shapes
:	ђ*
Index0*
T0
║
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1SlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffset:1WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes
:	ђ
џ
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_depsNoOpV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceX^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1
┬
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slicea^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice*
_output_shapes
:	ђ
╚
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1IdentityWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
T0*j
_class`
^\loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1*
_output_shapes
:	ђ
┤
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
ђђ*    *
dtype0* 
_output_shapes
:
ђђ
ш
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1Enter[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
ђђ*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Я
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Merge]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIteration*
N*"
_output_shapes
:
ђђ: *
T0
џ
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/SwitchSwitch]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Training/gradients/b_count_2*
T0*,
_output_shapes
:
ђђ:
ђђ
О
YTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/AddAdd^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch:1jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
ђђ*
T0
Щ
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationYTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
ђђ
Ь
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3Exit\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
ђђ
Д
rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^Training/gradients/Sub*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
sourceTraining/gradients*
_output_shapes

:: 
░
xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
█
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
▀
nTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1s^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
Щ
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencynTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
_output_shapes
: *
T0
Ё
Training/gradients/AddN_3AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyjTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
N*
_output_shapes
:	ђ
Б
^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ы
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
▀
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
ї
_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Training/gradients/b_count_2*
T0*
_output_shapes
: : 
П
\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddaTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Ш
fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
Ж
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
Г
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIterationNextIterationTraining/gradients/AddN_3*
T0*
_output_shapes
:	ђ
Й
ЋTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3.Training/rnn_model/recurrent/rnn/TensorArray_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
sourceTraining/gradients*
_output_shapes

:: 
§
ЉTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ќ^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
_output_shapes
: 
п
ЄTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3ЋTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV39Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeЉTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:*
dtype0*,
_output_shapes
:         ђ
ч
ёTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpѕ^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3a^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
ѓ
їTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityЄTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3Ё^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*,
_output_shapes
:         ђ*
T0*Ю
_classњ
Јїloc:@Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
Џ
јTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Ё^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*s
_classi
geloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
и
TTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutationInvertPermutation'Training/rnn_model/recurrent/rnn/concat*
T0*
_output_shapes
:
ѓ
LTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose	TransposeїTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyTTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutation*
T0*,
_output_shapes
:         ђ*
Tperm0
Ќ
:Training/gradients/Training/cnn_model/Reshape_2_grad/ShapeShapeTraining/cnn_model/dense/Relu*
T0*
out_type0*
_output_shapes
:
њ
<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeReshapeLTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose:Training/gradients/Training/cnn_model/Reshape_2_grad/Shape*
T0*
Tshape0*(
_output_shapes
:         ђ
┌
>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradReluGrad<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeTraining/cnn_model/dense/Relu*
T0*(
_output_shapes
:         ђ
л
DTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradBiasAddGrad>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:ђ
┘
ITraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_depsNoOpE^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad?^Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad
№
QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*(
_output_shapes
:         ђ
­
STraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1IdentityDTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:ђ*
T0*W
_classM
KIloc:@Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad
Љ
>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulMatMulQTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencycnn_model/dense/kernel/read*
transpose_b(*
T0*(
_output_shapes
:         ђ*
transpose_a( 
ї
@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1MatMulTraining/cnn_model/Reshape_1QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
ђђ*
transpose_a(
н
HTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_depsNoOp?^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulA^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1
ь
PTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulI^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:         ђ*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul
в
RTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1I^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1* 
_output_shapes
:
ђђ
░
:Training/gradients/Training/cnn_model/Reshape_1_grad/ShapeShape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool*
T0*
out_type0*
_output_shapes
:
ъ
<Training/gradients/Training/cnn_model/Reshape_1_grad/ReshapeReshapePTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency:Training/gradients/Training/cnn_model/Reshape_1_grad/Shape*0
_output_shapes
:         ђ*
T0*
Tshape0
џ
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu6Training/cnn_model/convolution/max_pooling2d_4/MaxPool<Training/gradients/Training/cnn_model/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:         ђ
ъ
MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu*
T0*0
_output_shapes
:         ђ
Ь
STraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:ђ
є
XTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad
│
`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*0
_output_shapes
:         ђ
г
bTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:ђ*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGrad
 
MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
Ц
LTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ConstConst*
dtype0*
_output_shapes
:*%
valueB"      ђ      
Љ
ZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_4/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4                                    
Ч
[Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_3/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency*
paddingSAME*(
_output_shapes
:ђђ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
џ
WTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput
╦
_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:         ђ
К
aTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*(
_output_shapes
:ђђ
й
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu6Training/cnn_model/convolution/max_pooling2d_3/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:         

ђ
ъ
MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu*
T0*0
_output_shapes
:         

ђ
Ь
STraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:ђ*
T0
є
XTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad
│
`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*0
_output_shapes
:         

ђ
г
bTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:ђ*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGrad
 
MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Ц
LTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ConstConst*%
valueB"      @   ђ   *
dtype0*
_output_shapes
:
Љ
ZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_3/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4                                    
ч
[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@ђ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
џ
WTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput
╩
_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*/
_output_shapes
:         

@*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput
к
aTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@ђ
╝
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu6Training/cnn_model/convolution/max_pooling2d_2/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency*
ksize
*
paddingSAME*/
_output_shapes
:         @*
T0*
data_formatNHWC*
strides

Ю
MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu*/
_output_shapes
:         @*
T0
ь
STraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
є
XTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad
▓
`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad*/
_output_shapes
:         @
Ф
bTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
 
MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Ц
LTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ConstConst*%
valueB"          @   *
dtype0*
_output_shapes
:
Љ
ZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_2/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4                                    *
	dilations

Щ
[Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_1/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: @*
	dilations
*
T0
џ
WTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput
╩
_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:          
┼
aTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
╝
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu6Training/cnn_model/convolution/max_pooling2d_1/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:         (( 
Ю
MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu*
T0*/
_output_shapes
:         (( 
ь
STraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
є
XTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad
▓
`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*/
_output_shapes
:         (( 
Ф
bTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
: *
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGrad
§
MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeNShapeN4Training/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
Ц
LTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
Љ
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
6:4                                    
Э
[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter4Training/cnn_model/convolution/max_pooling2d/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: 
џ
WTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput
╩
_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:         ((
┼
aTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
Х
XTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu4Training/cnn_model/convolution/max_pooling2d/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency*
ksize
*
paddingSAME*/
_output_shapes
:         PP*
T0*
data_formatNHWC*
strides

Ќ
KTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradReluGradXTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu*
T0*/
_output_shapes
:         PP
ж
QTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradBiasAddGradKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
ђ
VTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_depsNoOpR^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradL^Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad
ф
^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependencyIdentityKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:         PP*
T0*^
_classT
RPloc:@Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad
Б
`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1IdentityQTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
▀
KTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeNShapeNTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Б
JTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:
Ѕ
XTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputKTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeN(cnn_model/convolution/conv2d/kernel/read^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*J
_output_shapes8
6:4                                    *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
п
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
ћ
UTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_depsNoOpZ^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterY^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput
┬
]Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependencyIdentityXTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:         PP
й
_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1IdentityYTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*
T0*l
_classb
`^loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Ю
"Training/beta1_power/initial_valueConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
«
Training/beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
▀
Training/beta1_power/AssignAssignTraining/beta1_power"Training/beta1_power/initial_value*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 
њ
Training/beta1_power/readIdentityTraining/beta1_power*
_output_shapes
: *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Ю
"Training/beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *wЙ?
«
Training/beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
▀
Training/beta2_power/AssignAssignTraining/beta2_power"Training/beta2_power/initial_value*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 
њ
Training/beta2_power/readIdentityTraining/beta2_power*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
О
:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
С
(cnn_model/convolution/conv2d/kernel/Adam
VariableV2*
shape:*
dtype0*&
_output_shapes
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
	container 
▒
/cnn_model/convolution/conv2d/kernel/Adam/AssignAssign(cnn_model/convolution/conv2d/kernel/Adam:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zeros*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
╠
-cnn_model/convolution/conv2d/kernel/Adam/readIdentity(cnn_model/convolution/conv2d/kernel/Adam*&
_output_shapes
:*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
┘
<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
Т
*cnn_model/convolution/conv2d/kernel/Adam_1
VariableV2*
shape:*
dtype0*&
_output_shapes
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
	container 
и
1cnn_model/convolution/conv2d/kernel/Adam_1/AssignAssign*cnn_model/convolution/conv2d/kernel/Adam_1<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zeros*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
л
/cnn_model/convolution/conv2d/kernel/Adam_1/readIdentity*cnn_model/convolution/conv2d/kernel/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
╗
8cnn_model/convolution/conv2d/bias/Adam/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
╚
&cnn_model/convolution/conv2d/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape:
Ю
-cnn_model/convolution/conv2d/bias/Adam/AssignAssign&cnn_model/convolution/conv2d/bias/Adam8cnn_model/convolution/conv2d/bias/Adam/Initializer/zeros*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
║
+cnn_model/convolution/conv2d/bias/Adam/readIdentity&cnn_model/convolution/conv2d/bias/Adam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:
й
:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
╩
(cnn_model/convolution/conv2d/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape:
Б
/cnn_model/convolution/conv2d/bias/Adam_1/AssignAssign(cnn_model/convolution/conv2d/bias/Adam_1:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zeros*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Й
-cnn_model/convolution/conv2d/bias/Adam_1/readIdentity(cnn_model/convolution/conv2d/bias/Adam_1*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:
▀
Lcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
┴
Bcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
М
<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0*&
_output_shapes
: 
У
*cnn_model/convolution/conv2d_1/kernel/Adam
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: 
╣
1cnn_model/convolution/conv2d_1/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_1/kernel/Adam<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
м
/cnn_model/convolution/conv2d_1/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_1/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
р
Ncnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
├
Dcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
┘
>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0*&
_output_shapes
: 
Ж
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
┐
3cnn_model/convolution/conv2d_1/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_1/kernel/Adam_1>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
о
1cnn_model/convolution/conv2d_1/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_1/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
┐
:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
╠
(cnn_model/convolution/conv2d_1/bias/Adam
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
Ц
/cnn_model/convolution/conv2d_1/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_1/bias/Adam:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
└
-cnn_model/convolution/conv2d_1/bias/Adam/readIdentity(cnn_model/convolution/conv2d_1/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
┴
<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
╬
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
Ф
1cnn_model/convolution/conv2d_1/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_1/bias/Adam_1<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
─
/cnn_model/convolution/conv2d_1/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_1/bias/Adam_1*
_output_shapes
: *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
▀
Lcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
┴
Bcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
М
<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0*&
_output_shapes
: @
У
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
╣
1cnn_model/convolution/conv2d_2/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_2/kernel/Adam<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
м
/cnn_model/convolution/conv2d_2/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_2/kernel/Adam*&
_output_shapes
: @*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
р
Ncnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   
├
Dcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
┘
>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/Const*&
_output_shapes
: @*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0
Ж
,cnn_model/convolution/conv2d_2/kernel/Adam_1
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
	container *
shape: @
┐
3cnn_model/convolution/conv2d_2/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_2/kernel/Adam_1>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
о
1cnn_model/convolution/conv2d_2/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_2/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
┐
:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
╠
(cnn_model/convolution/conv2d_2/bias/Adam
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
/cnn_model/convolution/conv2d_2/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_2/bias/Adam:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
└
-cnn_model/convolution/conv2d_2/bias/Adam/readIdentity(cnn_model/convolution/conv2d_2/bias/Adam*
_output_shapes
:@*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias
┴
<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
╬
*cnn_model/convolution/conv2d_2/bias/Adam_1
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
Ф
1cnn_model/convolution/conv2d_2/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_2/bias/Adam_1<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
─
/cnn_model/convolution/conv2d_2/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_2/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
▀
Lcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   ђ   
┴
Bcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
н
<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0*'
_output_shapes
:@ђ
Ж
*cnn_model/convolution/conv2d_3/kernel/Adam
VariableV2*
dtype0*'
_output_shapes
:@ђ*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@ђ
║
1cnn_model/convolution/conv2d_3/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_3/kernel/Adam<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros*
validate_shape(*'
_output_shapes
:@ђ*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
М
/cnn_model/convolution/conv2d_3/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_3/kernel/Adam*'
_output_shapes
:@ђ*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
р
Ncnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @   ђ   *
dtype0*
_output_shapes
:
├
Dcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    
┌
>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0*'
_output_shapes
:@ђ
В
,cnn_model/convolution/conv2d_3/kernel/Adam_1
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@ђ*
dtype0*'
_output_shapes
:@ђ
└
3cnn_model/convolution/conv2d_3/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_3/kernel/Adam_1>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@ђ
О
1cnn_model/convolution/conv2d_3/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_3/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@ђ
┴
:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
╬
(cnn_model/convolution/conv2d_3/bias/Adam
VariableV2*
shape:ђ*
dtype0*
_output_shapes	
:ђ*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container 
д
/cnn_model/convolution/conv2d_3/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_3/bias/Adam:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:ђ*
use_locking(
┴
-cnn_model/convolution/conv2d_3/bias/Adam/readIdentity(cnn_model/convolution/conv2d_3/bias/Adam*
_output_shapes	
:ђ*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias
├
<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:ђ*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueBђ*    
л
*cnn_model/convolution/conv2d_3/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:ђ
г
1cnn_model/convolution/conv2d_3/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_3/bias/Adam_1<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:ђ*
use_locking(
┼
/cnn_model/convolution/conv2d_3/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_3/bias/Adam_1*
_output_shapes	
:ђ*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias
▀
Lcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      ђ      *
dtype0*
_output_shapes
:
┴
Bcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    
Н
<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0*(
_output_shapes
:ђђ
В
*cnn_model/convolution/conv2d_4/kernel/Adam
VariableV2*
	container *
shape:ђђ*
dtype0*(
_output_shapes
:ђђ*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
╗
1cnn_model/convolution/conv2d_4/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_4/kernel/Adam<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros*
validate_shape(*(
_output_shapes
:ђђ*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
н
/cnn_model/convolution/conv2d_4/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_4/kernel/Adam*(
_output_shapes
:ђђ*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
р
Ncnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"      ђ      *
dtype0*
_output_shapes
:
├
Dcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    
█
>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0*(
_output_shapes
:ђђ
Ь
,cnn_model/convolution/conv2d_4/kernel/Adam_1
VariableV2*
	container *
shape:ђђ*
dtype0*(
_output_shapes
:ђђ*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
┴
3cnn_model/convolution/conv2d_4/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_4/kernel/Adam_1>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ђђ
п
1cnn_model/convolution/conv2d_4/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_4/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:ђђ
┴
:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
╬
(cnn_model/convolution/conv2d_4/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:ђ
д
/cnn_model/convolution/conv2d_4/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_4/bias/Adam:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:ђ*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias
┴
-cnn_model/convolution/conv2d_4/bias/Adam/readIdentity(cnn_model/convolution/conv2d_4/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:ђ
├
<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
л
*cnn_model/convolution/conv2d_4/bias/Adam_1
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:ђ*
dtype0*
_output_shapes	
:ђ*
shared_name 
г
1cnn_model/convolution/conv2d_4/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_4/bias/Adam_1<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:ђ
┼
/cnn_model/convolution/conv2d_4/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_4/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:ђ
╣
=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
Б
3cnn_model/dense/kernel/Adam/Initializer/zeros/ConstConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Љ
-cnn_model/dense/kernel/Adam/Initializer/zerosFill=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensor3cnn_model/dense/kernel/Adam/Initializer/zeros/Const*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0* 
_output_shapes
:
ђђ
Й
cnn_model/dense/kernel/Adam
VariableV2*)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:
ђђ*
dtype0* 
_output_shapes
:
ђђ*
shared_name 
э
"cnn_model/dense/kernel/Adam/AssignAssigncnn_model/dense/kernel/Adam-cnn_model/dense/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
ђђ*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel
Ъ
 cnn_model/dense/kernel/Adam/readIdentitycnn_model/dense/kernel/Adam* 
_output_shapes
:
ђђ*
T0*)
_class
loc:@cnn_model/dense/kernel
╗
?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
Ц
5cnn_model/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    
Ќ
/cnn_model/dense/kernel/Adam_1/Initializer/zerosFill?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor5cnn_model/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0* 
_output_shapes
:
ђђ
└
cnn_model/dense/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
ђђ*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:
ђђ
§
$cnn_model/dense/kernel/Adam_1/AssignAssigncnn_model/dense/kernel/Adam_1/cnn_model/dense/kernel/Adam_1/Initializer/zeros*
validate_shape(* 
_output_shapes
:
ђђ*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel
Б
"cnn_model/dense/kernel/Adam_1/readIdentitycnn_model/dense/kernel/Adam_1*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:
ђђ
Б
+cnn_model/dense/bias/Adam/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
░
cnn_model/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:ђ
Ж
 cnn_model/dense/bias/Adam/AssignAssigncnn_model/dense/bias/Adam+cnn_model/dense/bias/Adam/Initializer/zeros*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:ђ*
use_locking(
ћ
cnn_model/dense/bias/Adam/readIdentitycnn_model/dense/bias/Adam*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:ђ
Ц
-cnn_model/dense/bias/Adam_1/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueBђ*    *
dtype0*
_output_shapes	
:ђ
▓
cnn_model/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:ђ*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:ђ
­
"cnn_model/dense/bias/Adam_1/AssignAssigncnn_model/dense/bias/Adam_1-cnn_model/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:ђ
ў
 cnn_model/dense/bias/Adam_1/readIdentitycnn_model/dense/bias/Adam_1*
_output_shapes	
:ђ*
T0*'
_class
loc:@cnn_model/dense/bias
П
Ornn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
К
Ernn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
┘
?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:
ђђ
Р
-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
ђђ*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:
ђђ
┐
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
ђђ*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
Н
2rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/readIdentity-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:
ђђ
▀
Qrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      
╔
Grnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
▀
Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zerosFillQrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorGrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:
ђђ
С
/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
ђђ*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:
ђђ
┼
6rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/AssignAssign/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
ђђ
┘
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/readIdentity/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1* 
_output_shapes
:
ђђ*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
М
Mrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:ђ*
dtype0*
_output_shapes
:
├
Crnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    
╠
=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zerosFillMrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorCrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:ђ
н
+rnn_model/recurrent/rnn/lstm_cell/bias/Adam
VariableV2*
shape:ђ*
dtype0*
_output_shapes	
:ђ*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container 
▓
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam/AssignAssign+rnn_model/recurrent/rnn/lstm_cell/bias/Adam=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:ђ*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias
╩
0rnn_model/recurrent/rnn/lstm_cell/bias/Adam/readIdentity+rnn_model/recurrent/rnn/lstm_cell/bias/Adam*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:ђ
Н
Ornn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:ђ*
dtype0*
_output_shapes
:
┼
Ernn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
м
?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/Const*
_output_shapes	
:ђ*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0
о
-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1
VariableV2*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:ђ*
dtype0*
_output_shapes	
:ђ
И
4rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:ђ
╬
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/readIdentity-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:ђ
│
:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ю
0logits/dense/kernel/Adam/Initializer/zeros/ConstConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ё
*logits/dense/kernel/Adam/Initializer/zerosFill:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensor0logits/dense/kernel/Adam/Initializer/zeros/Const*
T0*&
_class
loc:@logits/dense/kernel*

index_type0*
_output_shapes
:	ђ
Х
logits/dense/kernel/Adam
VariableV2*
shape:	ђ*
dtype0*
_output_shapes
:	ђ*
shared_name *&
_class
loc:@logits/dense/kernel*
	container 
Ж
logits/dense/kernel/Adam/AssignAssignlogits/dense/kernel/Adam*logits/dense/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	ђ*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel
Ћ
logits/dense/kernel/Adam/readIdentitylogits/dense/kernel/Adam*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	ђ
х
<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*&
_class
loc:@logits/dense/kernel*
valueB"      
Ъ
2logits/dense/kernel/Adam_1/Initializer/zeros/ConstConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
і
,logits/dense/kernel/Adam_1/Initializer/zerosFill<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor2logits/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*&
_class
loc:@logits/dense/kernel*

index_type0*
_output_shapes
:	ђ
И
logits/dense/kernel/Adam_1
VariableV2*
shape:	ђ*
dtype0*
_output_shapes
:	ђ*
shared_name *&
_class
loc:@logits/dense/kernel*
	container 
­
!logits/dense/kernel/Adam_1/AssignAssignlogits/dense/kernel/Adam_1,logits/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel*
validate_shape(*
_output_shapes
:	ђ
Ў
logits/dense/kernel/Adam_1/readIdentitylogits/dense/kernel/Adam_1*
_output_shapes
:	ђ*
T0*&
_class
loc:@logits/dense/kernel
Џ
(logits/dense/bias/Adam/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
е
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
П
logits/dense/bias/Adam/AssignAssignlogits/dense/bias/Adam(logits/dense/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*$
_class
loc:@logits/dense/bias
і
logits/dense/bias/Adam/readIdentitylogits/dense/bias/Adam*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:
Ю
*logits/dense/bias/Adam_1/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
ф
logits/dense/bias/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@logits/dense/bias
с
logits/dense/bias/Adam_1/AssignAssignlogits/dense/bias/Adam_1*logits/dense/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*$
_class
loc:@logits/dense/bias
ј
logits/dense/bias/Adam_1/readIdentitylogits/dense/bias/Adam_1*
_output_shapes
:*
T0*$
_class
loc:@logits/dense/bias
X
Training/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
X
Training/Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *wЙ?
Z
Training/Adam/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
═
BTraining/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d/kernel(cnn_model/convolution/conv2d/kernel/Adam*cnn_model/convolution/conv2d/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
use_nesterov( *&
_output_shapes
:*
use_locking( 
И
@Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdam	ApplyAdam!cnn_model/convolution/conv2d/bias&cnn_model/convolution/conv2d/bias/Adam(cnn_model/convolution/conv2d/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
┘
DTraining/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_1/kernel*cnn_model/convolution/conv2d_1/kernel/Adam,cnn_model/convolution/conv2d_1/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
use_nesterov( *&
_output_shapes
: *
use_locking( 
─
BTraining/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_1/bias(cnn_model/convolution/conv2d_1/bias/Adam*cnn_model/convolution/conv2d_1/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
use_nesterov( *
_output_shapes
: *
use_locking( 
┘
DTraining/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_2/kernel*cnn_model/convolution/conv2d_2/kernel/Adam,cnn_model/convolution/conv2d_2/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
use_nesterov( *&
_output_shapes
: @
─
BTraining/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_2/bias(cnn_model/convolution/conv2d_2/bias/Adam*cnn_model/convolution/conv2d_2/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias
┌
DTraining/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_3/kernel*cnn_model/convolution/conv2d_3/kernel/Adam,cnn_model/convolution/conv2d_3/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
use_nesterov( *'
_output_shapes
:@ђ*
use_locking( 
┼
BTraining/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_3/bias(cnn_model/convolution/conv2d_3/bias/Adam*cnn_model/convolution/conv2d_3/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:ђ*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias
█
DTraining/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_4/kernel*cnn_model/convolution/conv2d_4/kernel/Adam,cnn_model/convolution/conv2d_4/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
use_nesterov( *(
_output_shapes
:ђђ*
use_locking( 
┼
BTraining/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_4/bias(cnn_model/convolution/conv2d_4/bias/Adam*cnn_model/convolution/conv2d_4/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
use_nesterov( *
_output_shapes	
:ђ
щ
5Training/Adam/update_cnn_model/dense/kernel/ApplyAdam	ApplyAdamcnn_model/dense/kernelcnn_model/dense/kernel/Adamcnn_model/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonRTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1*
use_nesterov( * 
_output_shapes
:
ђђ*
use_locking( *
T0*)
_class
loc:@cnn_model/dense/kernel
в
3Training/Adam/update_cnn_model/dense/bias/ApplyAdam	ApplyAdamcnn_model/dense/biascnn_model/dense/bias/Adamcnn_model/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonSTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*'
_class
loc:@cnn_model/dense/bias*
use_nesterov( *
_output_shapes	
:ђ
я
GTraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam	ApplyAdam(rnn_model/recurrent/rnn/lstm_cell/kernel-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
ђђ*
use_locking( 
л
ETraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdam	ApplyAdam&rnn_model/recurrent/rnn/lstm_cell/bias+rnn_model/recurrent/rnn/lstm_cell/bias/Adam-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
use_locking( *
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
use_nesterov( *
_output_shapes	
:ђ
Т
2Training/Adam/update_logits/dense/kernel/ApplyAdam	ApplyAdamlogits/dense/kernellogits/dense/kernel/Adamlogits/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonOTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1*
T0*&
_class
loc:@logits/dense/kernel*
use_nesterov( *
_output_shapes
:	ђ*
use_locking( 
п
0Training/Adam/update_logits/dense/bias/ApplyAdam	ApplyAdamlogits/dense/biaslogits/dense/bias/Adamlogits/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonPTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@logits/dense/bias*
use_nesterov( *
_output_shapes
:
┐	
Training/Adam/mulMulTraining/beta1_power/readTraining/Adam/beta1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
К
Training/Adam/AssignAssignTraining/beta1_powerTraining/Adam/mul*
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 
┴	
Training/Adam/mul_1MulTraining/beta2_power/readTraining/Adam/beta2A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
╦
Training/Adam/Assign_1AssignTraining/beta2_powerTraining/Adam/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
В
Training/Adam/updateNoOp^Training/Adam/Assign^Training/Adam/Assign_1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam
Ћ
Training/Adam/valueConst^Training/Adam/update*
dtype0*
_output_shapes
: *'
_class
loc:@Training/global_step*
value	B :
б
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
»
Validation/SequenceMask/MaxMax.validation_input_pipeline/batch_join_and_pad:4Validation/SequenceMask/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
a
Validation/SequenceMask/Const_1Const*
dtype0*
_output_shapes
: *
value	B : 
a
Validation/SequenceMask/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
Х
Validation/SequenceMask/RangeRangeValidation/SequenceMask/Const_1Validation/SequenceMask/MaxValidation/SequenceMask/Const_2*#
_output_shapes
:         *

Tidx0
q
&Validation/SequenceMask/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
й
"Validation/SequenceMask/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4&Validation/SequenceMask/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
ђ
Validation/SequenceMask/CastCast"Validation/SequenceMask/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0
Њ
Validation/SequenceMask/LessLessValidation/SequenceMask/RangeValidation/SequenceMask/Cast*
T0*'
_output_shapes
:         
Ё
Validation/SequenceMask/Cast_1CastValidation/SequenceMask/Less*'
_output_shapes
:         *

DstT0*

SrcT0

d
Validation/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
а
Validation/ExpandDims
ExpandDimsValidation/SequenceMask/Cast_1Validation/ExpandDims/dim*

Tdim0*
T0*+
_output_shapes
:         
{
"Validation/cnn_model/Reshape/shapeConst*%
valueB"    P   P      *
dtype0*
_output_shapes
:
├
Validation/cnn_model/ReshapeReshape.validation_input_pipeline/batch_join_and_pad:2"Validation/cnn_model/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:         PP
є
5Validation/cnn_model/convolution/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
е
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
:         PP
с
/Validation/cnn_model/convolution/conv2d/BiasAddBiasAdd.Validation/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         PP
Ъ
,Validation/cnn_model/convolution/conv2d/ReluRelu/Validation/cnn_model/convolution/conv2d/BiasAdd*/
_output_shapes
:         PP*
T0
ч
6Validation/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool,Validation/cnn_model/convolution/conv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:         ((
ѕ
7Validation/cnn_model/convolution/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
к
0Validation/cnn_model/convolution/conv2d_1/Conv2DConv2D6Validation/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         (( *
	dilations
*
T0
ж
1Validation/cnn_model/convolution/conv2d_1/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         (( 
Б
.Validation/cnn_model/convolution/conv2d_1/ReluRelu1Validation/cnn_model/convolution/conv2d_1/BiasAdd*
T0*/
_output_shapes
:         (( 
 
8Validation/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_1/Relu*/
_output_shapes
:          *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
ѕ
7Validation/cnn_model/convolution/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
╚
0Validation/cnn_model/convolution/conv2d_2/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
paddingSAME*/
_output_shapes
:         @*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ж
1Validation/cnn_model/convolution/conv2d_2/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:         @
Б
.Validation/cnn_model/convolution/conv2d_2/ReluRelu1Validation/cnn_model/convolution/conv2d_2/BiasAdd*/
_output_shapes
:         @*
T0
 
8Validation/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_2/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:         

@
ѕ
7Validation/cnn_model/convolution/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
╔
0Validation/cnn_model/convolution/conv2d_3/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:         

ђ*
	dilations

Ж
1Validation/cnn_model/convolution/conv2d_3/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:         

ђ
ц
.Validation/cnn_model/convolution/conv2d_3/ReluRelu1Validation/cnn_model/convolution/conv2d_3/BiasAdd*
T0*0
_output_shapes
:         

ђ
ђ
8Validation/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_3/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:         ђ
ѕ
7Validation/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
╔
0Validation/cnn_model/convolution/conv2d_4/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
paddingSAME*0
_output_shapes
:         ђ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ж
1Validation/cnn_model/convolution/conv2d_4/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
data_formatNHWC*0
_output_shapes
:         ђ*
T0
ц
.Validation/cnn_model/convolution/conv2d_4/ReluRelu1Validation/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:         ђ
ђ
8Validation/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_4/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:         ђ
u
$Validation/cnn_model/Reshape_1/shapeConst*
valueB"     	  *
dtype0*
_output_shapes
:
╩
Validation/cnn_model/Reshape_1Reshape8Validation/cnn_model/convolution/max_pooling2d_4/MaxPool$Validation/cnn_model/Reshape_1/shape*(
_output_shapes
:         ђ*
T0*
Tshape0
┴
!Validation/cnn_model/dense/MatMulMatMulValidation/cnn_model/Reshape_1cnn_model/dense/kernel/read*
transpose_b( *
T0*(
_output_shapes
:         ђ*
transpose_a( 
х
"Validation/cnn_model/dense/BiasAddBiasAdd!Validation/cnn_model/dense/MatMulcnn_model/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         ђ
~
Validation/cnn_model/dense/ReluRelu"Validation/cnn_model/dense/BiasAdd*(
_output_shapes
:         ђ*
T0
y
$Validation/cnn_model/Reshape_2/shapeConst*!
valueB"          *
dtype0*
_output_shapes
:
х
Validation/cnn_model/Reshape_2ReshapeValidation/cnn_model/dense/Relu$Validation/cnn_model/Reshape_2/shape*
T0*
Tshape0*,
_output_shapes
:         ђ
i
Validation/SequenceMask_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
│
Validation/SequenceMask_1/MaxMax.validation_input_pipeline/batch_join_and_pad:4Validation/SequenceMask_1/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
c
!Validation/SequenceMask_1/Const_1Const*
value	B : *
dtype0*
_output_shapes
: 
c
!Validation/SequenceMask_1/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
Й
Validation/SequenceMask_1/RangeRange!Validation/SequenceMask_1/Const_1Validation/SequenceMask_1/Max!Validation/SequenceMask_1/Const_2*#
_output_shapes
:         *

Tidx0
s
(Validation/SequenceMask_1/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
┴
$Validation/SequenceMask_1/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4(Validation/SequenceMask_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
ё
Validation/SequenceMask_1/CastCast$Validation/SequenceMask_1/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0
Ў
Validation/SequenceMask_1/LessLessValidation/SequenceMask_1/RangeValidation/SequenceMask_1/Cast*
T0*'
_output_shapes
:         
Ѕ
 Validation/SequenceMask_1/Cast_1CastValidation/SequenceMask_1/Less*

SrcT0
*'
_output_shapes
:         *

DstT0
f
Validation/ExpandDims_1/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
д
Validation/ExpandDims_1
ExpandDims Validation/SequenceMask_1/Cast_1Validation/ExpandDims_1/dim*+
_output_shapes
:         *

Tdim0*
T0
i
'Validation/rnn_model/recurrent/rnn/RankConst*
dtype0*
_output_shapes
: *
value	B :
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
Р
(Validation/rnn_model/recurrent/rnn/rangeRange.Validation/rnn_model/recurrent/rnn/range/start'Validation/rnn_model/recurrent/rnn/Rank.Validation/rnn_model/recurrent/rnn/range/delta*
_output_shapes
:*

Tidx0
Ѓ
2Validation/rnn_model/recurrent/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
p
.Validation/rnn_model/recurrent/rnn/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
§
)Validation/rnn_model/recurrent/rnn/concatConcatV22Validation/rnn_model/recurrent/rnn/concat/values_0(Validation/rnn_model/recurrent/rnn/range.Validation/rnn_model/recurrent/rnn/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
╚
,Validation/rnn_model/recurrent/rnn/transpose	TransposeValidation/cnn_model/Reshape_2)Validation/rnn_model/recurrent/rnn/concat*,
_output_shapes
:         ђ*
Tperm0*
T0
Њ
2Validation/rnn_model/recurrent/rnn/sequence_lengthIdentity.validation_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:
ё
:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
dtype0*
_output_shapes
:*
valueB:
Є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
valueB:ђ*
dtype0*
_output_shapes
:
ѓ
@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
й
;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV2:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ё
@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	ђ
є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
Є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
valueB:ђ*
dtype0*
_output_shapes
:
є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
valueB:*
dtype0*
_output_shapes
:
Є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:ђ*
dtype0*
_output_shapes
:
ё
BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
├
=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Є
BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ѓ
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	ђ
є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
valueB:*
dtype0*
_output_shapes
:
Є
<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
valueB:ђ*
dtype0*
_output_shapes
:
r
(Validation/rnn_model/recurrent/rnn/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
r
(Validation/rnn_model/recurrent/rnn/stackConst*
valueB:*
dtype0*
_output_shapes
:
ф
(Validation/rnn_model/recurrent/rnn/EqualEqual(Validation/rnn_model/recurrent/rnn/Shape(Validation/rnn_model/recurrent/rnn/stack*
T0*
_output_shapes
:
r
(Validation/rnn_model/recurrent/rnn/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Х
&Validation/rnn_model/recurrent/rnn/AllAll(Validation/rnn_model/recurrent/rnn/Equal(Validation/rnn_model/recurrent/rnn/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
┬
/Validation/rnn_model/recurrent/rnn/Assert/ConstConst*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
ѓ
1Validation/rnn_model/recurrent/rnn/Assert/Const_1Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
╩
7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
ѕ
7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
╚
0Validation/rnn_model/recurrent/rnn/Assert/AssertAssert&Validation/rnn_model/recurrent/rnn/All7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0(Validation/rnn_model/recurrent/rnn/stack7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2(Validation/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
к
.Validation/rnn_model/recurrent/rnn/CheckSeqLenIdentity2Validation/rnn_model/recurrent/rnn/sequence_length1^Validation/rnn_model/recurrent/rnn/Assert/Assert*
T0*
_output_shapes
:
ќ
*Validation/rnn_model/recurrent/rnn/Shape_1Shape,Validation/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
ђ
6Validation/rnn_model/recurrent/rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
ѓ
8Validation/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
ѓ
8Validation/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ф
0Validation/rnn_model/recurrent/rnn/strided_sliceStridedSlice*Validation/rnn_model/recurrent/rnn/Shape_16Validation/rnn_model/recurrent/rnn/strided_slice/stack8Validation/rnn_model/recurrent/rnn/strided_slice/stack_18Validation/rnn_model/recurrent/rnn/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
t
*Validation/rnn_model/recurrent/rnn/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
u
*Validation/rnn_model/recurrent/rnn/Const_2Const*
valueB:ђ*
dtype0*
_output_shapes
:
r
0Validation/rnn_model/recurrent/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ч
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
╔
(Validation/rnn_model/recurrent/rnn/zerosFill+Validation/rnn_model/recurrent/rnn/concat_1.Validation/rnn_model/recurrent/rnn/zeros/Const*
T0*

index_type0*
_output_shapes
:	ђ
t
*Validation/rnn_model/recurrent/rnn/Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
К
&Validation/rnn_model/recurrent/rnn/MinMin.Validation/rnn_model/recurrent/rnn/CheckSeqLen*Validation/rnn_model/recurrent/rnn/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
t
*Validation/rnn_model/recurrent/rnn/Const_4Const*
valueB: *
dtype0*
_output_shapes
:
К
&Validation/rnn_model/recurrent/rnn/MaxMax.Validation/rnn_model/recurrent/rnn/CheckSeqLen*Validation/rnn_model/recurrent/rnn/Const_4*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
i
'Validation/rnn_model/recurrent/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
о
.Validation/rnn_model/recurrent/rnn/TensorArrayTensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*
identical_element_shapes(*N
tensor_array_name97Validation/rnn_model/recurrent/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:	ђ*
dynamic_size( *
clear_after_read(
О
0Validation/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*
element_shape:	ђ*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*M
tensor_array_name86Validation/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 
Д
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape,Validation/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:
Њ
IValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ћ
KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ћ
KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Є
CValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeIValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackKValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ѓ
AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Ѓ
AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
└
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRangeAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startCValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:         *

Tidx0
е
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
г
*Validation/rnn_model/recurrent/rnn/MaximumMaximum,Validation/rnn_model/recurrent/rnn/Maximum/x&Validation/rnn_model/recurrent/rnn/Max*
T0*
_output_shapes
: 
┤
*Validation/rnn_model/recurrent/rnn/MinimumMinimum0Validation/rnn_model/recurrent/rnn/strided_slice*Validation/rnn_model/recurrent/rnn/Maximum*
_output_shapes
: *
T0
|
:Validation/rnn_model/recurrent/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
і
.Validation/rnn_model/recurrent/rnn/while/EnterEnter:Validation/rnn_model/recurrent/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
щ
0Validation/rnn_model/recurrent/rnn/while/Enter_1Enter'Validation/rnn_model/recurrent/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
ѓ
0Validation/rnn_model/recurrent/rnn/while/Enter_2Enter0Validation/rnn_model/recurrent/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ћ
0Validation/rnn_model/recurrent/rnn/while/Enter_3Enter:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	ђ*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ќ
0Validation/rnn_model/recurrent/rnn/while/Enter_4Enter<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
parallel_iterations *
_output_shapes
:	ђ*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
╦
.Validation/rnn_model/recurrent/rnn/while/MergeMerge.Validation/rnn_model/recurrent/rnn/while/Enter6Validation/rnn_model/recurrent/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
Л
0Validation/rnn_model/recurrent/rnn/while/Merge_1Merge0Validation/rnn_model/recurrent/rnn/while/Enter_18Validation/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Л
0Validation/rnn_model/recurrent/rnn/while/Merge_2Merge0Validation/rnn_model/recurrent/rnn/while/Enter_28Validation/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
┌
0Validation/rnn_model/recurrent/rnn/while/Merge_3Merge0Validation/rnn_model/recurrent/rnn/while/Enter_38Validation/rnn_model/recurrent/rnn/while/NextIteration_3*
T0*
N*!
_output_shapes
:	ђ: 
┌
0Validation/rnn_model/recurrent/rnn/while/Merge_4Merge0Validation/rnn_model/recurrent/rnn/while/Enter_48Validation/rnn_model/recurrent/rnn/while/NextIteration_4*
T0*
N*!
_output_shapes
:	ђ: 
╗
-Validation/rnn_model/recurrent/rnn/while/LessLess.Validation/rnn_model/recurrent/rnn/while/Merge3Validation/rnn_model/recurrent/rnn/while/Less/Enter*
T0*
_output_shapes
: 
Ё
3Validation/rnn_model/recurrent/rnn/while/Less/EnterEnter0Validation/rnn_model/recurrent/rnn/strided_slice*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
┴
/Validation/rnn_model/recurrent/rnn/while/Less_1Less0Validation/rnn_model/recurrent/rnn/while/Merge_15Validation/rnn_model/recurrent/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
Ђ
5Validation/rnn_model/recurrent/rnn/while/Less_1/EnterEnter*Validation/rnn_model/recurrent/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
╣
3Validation/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd-Validation/rnn_model/recurrent/rnn/while/Less/Validation/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 
і
1Validation/rnn_model/recurrent/rnn/while/LoopCondLoopCond3Validation/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 
ѓ
/Validation/rnn_model/recurrent/rnn/while/SwitchSwitch.Validation/rnn_model/recurrent/rnn/while/Merge1Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/while/Merge*
_output_shapes
: : 
ѕ
1Validation/rnn_model/recurrent/rnn/while/Switch_1Switch0Validation/rnn_model/recurrent/rnn/while/Merge_11Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_1*
_output_shapes
: : 
ѕ
1Validation/rnn_model/recurrent/rnn/while/Switch_2Switch0Validation/rnn_model/recurrent/rnn/while/Merge_21Validation/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_2
џ
1Validation/rnn_model/recurrent/rnn/while/Switch_3Switch0Validation/rnn_model/recurrent/rnn/while/Merge_31Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_3**
_output_shapes
:	ђ:	ђ
џ
1Validation/rnn_model/recurrent/rnn/while/Switch_4Switch0Validation/rnn_model/recurrent/rnn/while/Merge_41Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_4**
_output_shapes
:	ђ:	ђ
Љ
1Validation/rnn_model/recurrent/rnn/while/IdentityIdentity1Validation/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 
Ћ
3Validation/rnn_model/recurrent/rnn/while/Identity_1Identity3Validation/rnn_model/recurrent/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
Ћ
3Validation/rnn_model/recurrent/rnn/while/Identity_2Identity3Validation/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
ъ
3Validation/rnn_model/recurrent/rnn/while/Identity_3Identity3Validation/rnn_model/recurrent/rnn/while/Switch_3:1*
_output_shapes
:	ђ*
T0
ъ
3Validation/rnn_model/recurrent/rnn/while/Iden