       ŁK"	  ôeťÖAbrain.Event:2ÖźťŹŻ%     íö	&1ôeťÖA"˘Ë
í

,training_input_pipeline/input_producer/ConstConst*
dtype0*
_output_shapes
:(*

value
B˙	(B./train/dataTrain_1.tfrecordsB./train/dataTrain_2.tfrecordsB./train/dataTrain_3.tfrecordsB./train/dataTrain_4.tfrecordsB./train/dataTrain_5.tfrecordsB./train/dataTrain_6.tfrecordsB./train/dataTrain_7.tfrecordsB./train/dataTrain_8.tfrecordsB./train/dataTrain_9.tfrecordsB./train/dataTrain_10.tfrecordsB./train/dataTrain_11.tfrecordsB./train/dataTrain_12.tfrecordsB./train/dataTrain_13.tfrecordsB./train/dataTrain_14.tfrecordsB./train/dataTrain_15.tfrecordsB./train/dataTrain_16.tfrecordsB./train/dataTrain_17.tfrecordsB./train/dataTrain_18.tfrecordsB./train/dataTrain_19.tfrecordsB./train/dataTrain_20.tfrecordsB./train/dataTrain_21.tfrecordsB./train/dataTrain_22.tfrecordsB./train/dataTrain_23.tfrecordsB./train/dataTrain_24.tfrecordsB./train/dataTrain_25.tfrecordsB./train/dataTrain_26.tfrecordsB./train/dataTrain_27.tfrecordsB./train/dataTrain_28.tfrecordsB./train/dataTrain_29.tfrecordsB./train/dataTrain_30.tfrecordsB./train/dataTrain_31.tfrecordsB./train/dataTrain_32.tfrecordsB./train/dataTrain_33.tfrecordsB./train/dataTrain_34.tfrecordsB./train/dataTrain_35.tfrecordsB./train/dataTrain_36.tfrecordsB./train/dataTrain_37.tfrecordsB./train/dataTrain_38.tfrecordsB./train/dataTrain_39.tfrecordsB./train/dataTrain_40.tfrecords
m
+training_input_pipeline/input_producer/SizeConst*
dtype0*
_output_shapes
: *
value	B :(
r
0training_input_pipeline/input_producer/Greater/yConst*
value	B : *
dtype0*
_output_shapes
: 
š
.training_input_pipeline/input_producer/GreaterGreater+training_input_pipeline/input_producer/Size0training_input_pipeline/input_producer/Greater/y*
_output_shapes
: *
T0
Ş
3training_input_pipeline/input_producer/Assert/ConstConst*
dtype0*
_output_shapes
: *G
value>B< B6string_input_producer requires a non-null input tensor
˛
;training_input_pipeline/input_producer/Assert/Assert/data_0Const*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
Č
4training_input_pipeline/input_producer/Assert/AssertAssert.training_input_pipeline/input_producer/Greater;training_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
Ĺ
/training_input_pipeline/input_producer/IdentityIdentity,training_input_pipeline/input_producer/Const5^training_input_pipeline/input_producer/Assert/Assert*
T0*
_output_shapes
:(
´
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

:training_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
dtype0	*
_output_shapes
: *
	container *
shape: *
shared_name 
Ű
Atraining_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign:training_input_pipeline/input_producer/limit_epochs/epochs9training_input_pipeline/input_producer/limit_epochs/Const*
use_locking(*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
validate_shape(*
_output_shapes
: 
÷
?training_input_pipeline/input_producer/limit_epochs/epochs/readIdentity:training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs

=training_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo:training_input_pipeline/input_producer/limit_epochs/epochs*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit
Ú
3training_input_pipeline/input_producer/limit_epochsIdentity4training_input_pipeline/input_producer/RandomShuffle>^training_input_pipeline/input_producer/limit_epochs/CountUpTo*
T0*
_output_shapes
:(
Ť
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
ĺ
Atraining_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2&training_input_pipeline/input_producer3training_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms˙˙˙˙˙˙˙˙˙

;training_input_pipeline/input_producer/input_producer_CloseQueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues( 

=training_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues(

:training_input_pipeline/input_producer/input_producer_SizeQueueSizeV2&training_input_pipeline/input_producer*
_output_shapes
: 
˘
.training_input_pipeline/input_producer/ToFloatCast:training_input_pipeline/input_producer/input_producer_Size*
_output_shapes
: *

DstT0*

SrcT0
q
,training_input_pipeline/input_producer/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *   =
°
*training_input_pipeline/input_producer/mulMul.training_input_pipeline/input_producer/ToFloat,training_input_pipeline/input_producer/mul/y*
T0*
_output_shapes
: 
ş
?training_input_pipeline/input_producer/fraction_of_32_full/tagsConst*K
valueBB@ B:training_input_pipeline/input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 
Ů
:training_input_pipeline/input_producer/fraction_of_32_fullScalarSummary?training_input_pipeline/input_producer/fraction_of_32_full/tags*training_input_pipeline/input_producer/mul*
T0*
_output_shapes
: 

(training_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
 
$training_input_pipeline/ReaderReadV2ReaderReadV2(training_input_pipeline/TFRecordReaderV2&training_input_pipeline/input_producer*
_output_shapes
: : 

Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Ktraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ë
training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
š
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Blabel
ş
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
ž
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ź
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
Ĺ
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
Á
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ş
itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
dtype0*
_output_shapes
: *
valueB B 

^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample&training_input_pipeline/ReaderReadV2:1training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptystraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstKtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
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
ř
2training_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ú
4training_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0
ú
4training_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ú
4training_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
p
.training_input_pipeline/TFRecordDecoding/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
ä
,training_input_pipeline/TFRecordDecoding/subSub^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample.training_input_pipeline/TFRecordDecoding/sub/y*
T0	*
_output_shapes
: 
Ę
0training_input_pipeline/TFRecordDecoding/ToInt32Cast`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	

6training_input_pipeline/TFRecordDecoding/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ď
0training_input_pipeline/TFRecordDecoding/ReshapeReshape2training_input_pipeline/TFRecordDecoding/DecodeRaw6training_input_pipeline/TFRecordDecoding/Reshape/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ł
0training_input_pipeline/TFRecordDecoding/ToFloatCast0training_input_pipeline/TFRecordDecoding/Reshape*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

8training_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      
ő
2training_input_pipeline/TFRecordDecoding/Reshape_1Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_18training_input_pipeline/TFRecordDecoding/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ˇ
2training_input_pipeline/TFRecordDecoding/ToFloat_1Cast2training_input_pipeline/TFRecordDecoding/Reshape_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

8training_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ő
2training_input_pipeline/TFRecordDecoding/Reshape_2Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_28training_input_pipeline/TFRecordDecoding/Reshape_2/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ˇ
2training_input_pipeline/TFRecordDecoding/ToFloat_2Cast2training_input_pipeline/TFRecordDecoding/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0
}
:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :´
č
8training_input_pipeline/TFRecordDecoding/Reshape_3/shapePack0training_input_pipeline/TFRecordDecoding/ToInt32:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
î
2training_input_pipeline/TFRecordDecoding/Reshape_3Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_38training_input_pipeline/TFRecordDecoding/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

?training_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ö
-training_input_pipeline/TFRecordDecoding/MeanMean0training_input_pipeline/TFRecordDecoding/ToFloat?training_input_pipeline/TFRecordDecoding/Mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Đ
.training_input_pipeline/TFRecordDecoding/sub_1Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ł
/training_input_pipeline/TFRecordDecoding/SquareSquare.training_input_pipeline/TFRecordDecoding/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Atraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
ů
/training_input_pipeline/TFRecordDecoding/Mean_1Mean/training_input_pipeline/TFRecordDecoding/SquareAtraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0

-training_input_pipeline/TFRecordDecoding/SqrtSqrt/training_input_pipeline/TFRecordDecoding/Mean_1*&
_output_shapes
:*
T0
w
2training_input_pipeline/TFRecordDecoding/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ď
0training_input_pipeline/TFRecordDecoding/MaximumMaximum-training_input_pipeline/TFRecordDecoding/Sqrt2training_input_pipeline/TFRecordDecoding/Maximum/y*
T0*&
_output_shapes
:
Đ
.training_input_pipeline/TFRecordDecoding/sub_2Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
×
0training_input_pipeline/TFRecordDecoding/truedivRealDiv.training_input_pipeline/TFRecordDecoding/sub_20training_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

*training_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
¤
&training_input_pipeline/ReaderReadV2_1ReaderReadV2*training_input_pipeline/TFRecordReaderV2_1&training_input_pipeline/input_producer*
_output_shapes
: : 

Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Mtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Í
training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ť
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ź
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Ŕ
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ž
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
Ç
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ă
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
Ź
ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 

`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_1:1training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
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
ü
4training_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0
ţ
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
r
0training_input_pipeline/TFRecordDecoding_1/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ę
.training_input_pipeline/TFRecordDecoding_1/subSub`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_1/sub/y*
T0	*
_output_shapes
: 
Î
2training_input_pipeline/TFRecordDecoding_1/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0

8training_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ő
2training_input_pipeline/TFRecordDecoding_1/ReshapeReshape4training_input_pipeline/TFRecordDecoding_1/DecodeRaw8training_input_pipeline/TFRecordDecoding_1/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ˇ
2training_input_pipeline/TFRecordDecoding_1/ToFloatCast2training_input_pipeline/TFRecordDecoding_1/Reshape*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4training_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4training_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4training_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4training_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :´
î
:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_1/ToInt32<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ô
4training_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´*
T0*
Tshape0

Atraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ü
/training_input_pipeline/TFRecordDecoding_1/MeanMean2training_input_pipeline/TFRecordDecoding_1/ToFloatAtraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ö
0training_input_pipeline/TFRecordDecoding_1/sub_1Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
§
1training_input_pipeline/TFRecordDecoding_1/SquareSquare0training_input_pipeline/TFRecordDecoding_1/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Ctraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
˙
1training_input_pipeline/TFRecordDecoding_1/Mean_1Mean1training_input_pipeline/TFRecordDecoding_1/SquareCtraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:

/training_input_pipeline/TFRecordDecoding_1/SqrtSqrt1training_input_pipeline/TFRecordDecoding_1/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ő
2training_input_pipeline/TFRecordDecoding_1/MaximumMaximum/training_input_pipeline/TFRecordDecoding_1/Sqrt4training_input_pipeline/TFRecordDecoding_1/Maximum/y*
T0*&
_output_shapes
:
Ö
0training_input_pipeline/TFRecordDecoding_1/sub_2Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ý
2training_input_pipeline/TFRecordDecoding_1/truedivRealDiv0training_input_pipeline/TFRecordDecoding_1/sub_22training_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

*training_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
¤
&training_input_pipeline/ReaderReadV2_2ReaderReadV2*training_input_pipeline/TFRecordReaderV2_2&training_input_pipeline/input_producer*
_output_shapes
: : 

Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Mtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
Í
training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ť
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ź
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
Ŕ
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Bdepth
ž
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
Ç
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ă
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ź
ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 

`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_2:1training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tcontext_dense
2		
ü
4training_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0
ţ
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
r
0training_input_pipeline/TFRecordDecoding_2/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ę
.training_input_pipeline/TFRecordDecoding_2/subSub`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_2/sub/y*
_output_shapes
: *
T0	
Î
2training_input_pipeline/TFRecordDecoding_2/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0

8training_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ő
2training_input_pipeline/TFRecordDecoding_2/ReshapeReshape4training_input_pipeline/TFRecordDecoding_2/DecodeRaw8training_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ˇ
2training_input_pipeline/TFRecordDecoding_2/ToFloatCast2training_input_pipeline/TFRecordDecoding_2/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4training_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4training_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4training_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4training_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
î
:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_2/ToInt32<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
ô
4training_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Atraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ü
/training_input_pipeline/TFRecordDecoding_2/MeanMean2training_input_pipeline/TFRecordDecoding_2/ToFloatAtraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ö
0training_input_pipeline/TFRecordDecoding_2/sub_1Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
§
1training_input_pipeline/TFRecordDecoding_2/SquareSquare0training_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Ctraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
˙
1training_input_pipeline/TFRecordDecoding_2/Mean_1Mean1training_input_pipeline/TFRecordDecoding_2/SquareCtraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0

/training_input_pipeline/TFRecordDecoding_2/SqrtSqrt1training_input_pipeline/TFRecordDecoding_2/Mean_1*&
_output_shapes
:*
T0
y
4training_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ő
2training_input_pipeline/TFRecordDecoding_2/MaximumMaximum/training_input_pipeline/TFRecordDecoding_2/Sqrt4training_input_pipeline/TFRecordDecoding_2/Maximum/y*
T0*&
_output_shapes
:
Ö
0training_input_pipeline/TFRecordDecoding_2/sub_2Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ý
2training_input_pipeline/TFRecordDecoding_2/truedivRealDiv0training_input_pipeline/TFRecordDecoding_2/sub_22training_input_pipeline/TFRecordDecoding_2/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

*training_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
¤
&training_input_pipeline/ReaderReadV2_3ReaderReadV2*training_input_pipeline/TFRecordReaderV2_3&training_input_pipeline/input_producer*
_output_shapes
: : 

Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Mtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Í
training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ť
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ź
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Ŕ
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ž
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
Ç
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ă
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ź
ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 

`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_3:1training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tcontext_dense
2		*
Ncontext_dense*$
feature_list_dense_types
2*
Nfeature_list_sparse 
ü
4training_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
r
0training_input_pipeline/TFRecordDecoding_3/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
ę
.training_input_pipeline/TFRecordDecoding_3/subSub`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_3/sub/y*
T0	*
_output_shapes
: 
Î
2training_input_pipeline/TFRecordDecoding_3/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	

8training_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ő
2training_input_pipeline/TFRecordDecoding_3/ReshapeReshape4training_input_pipeline/TFRecordDecoding_3/DecodeRaw8training_input_pipeline/TFRecordDecoding_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ˇ
2training_input_pipeline/TFRecordDecoding_3/ToFloatCast2training_input_pipeline/TFRecordDecoding_3/Reshape*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      
ű
4training_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4training_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4training_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4training_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :´
î
:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_3/ToInt32<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ô
4training_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Atraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ü
/training_input_pipeline/TFRecordDecoding_3/MeanMean2training_input_pipeline/TFRecordDecoding_3/ToFloatAtraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
Ö
0training_input_pipeline/TFRecordDecoding_3/sub_1Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
§
1training_input_pipeline/TFRecordDecoding_3/SquareSquare0training_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Ctraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
˙
1training_input_pipeline/TFRecordDecoding_3/Mean_1Mean1training_input_pipeline/TFRecordDecoding_3/SquareCtraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0

/training_input_pipeline/TFRecordDecoding_3/SqrtSqrt1training_input_pipeline/TFRecordDecoding_3/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ő
2training_input_pipeline/TFRecordDecoding_3/MaximumMaximum/training_input_pipeline/TFRecordDecoding_3/Sqrt4training_input_pipeline/TFRecordDecoding_3/Maximum/y*&
_output_shapes
:*
T0
Ö
0training_input_pipeline/TFRecordDecoding_3/sub_2Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
Ý
2training_input_pipeline/TFRecordDecoding_3/truedivRealDiv0training_input_pipeline/TFRecordDecoding_3/sub_22training_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
r
0training_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
ś
=training_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
_output_shapes
: *
component_types

2	*u
shapesk
i:˙˙˙˙˙˙˙˙˙PP: :˙˙˙˙˙˙˙˙˙PP:˙˙˙˙˙˙˙˙˙PP: :˙˙˙˙˙˙˙˙˙´*
shared_name *
capacityŔ*
	container 
ú
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue2training_input_pipeline/TFRecordDecoding/ToFloat_1,training_input_pipeline/TFRecordDecoding/sub0training_input_pipeline/TFRecordDecoding/truediv2training_input_pipeline/TFRecordDecoding/ToFloat_20training_input_pipeline/TFRecordDecoding/ToInt322training_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_1/ToFloat_1.training_input_pipeline/TFRecordDecoding_1/sub2training_input_pipeline/TFRecordDecoding_1/truediv4training_input_pipeline/TFRecordDecoding_1/ToFloat_22training_input_pipeline/TFRecordDecoding_1/ToInt324training_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_2/ToFloat_1.training_input_pipeline/TFRecordDecoding_2/sub2training_input_pipeline/TFRecordDecoding_2/truediv4training_input_pipeline/TFRecordDecoding_2/ToFloat_22training_input_pipeline/TFRecordDecoding_2/ToInt324training_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_3/ToFloat_1.training_input_pipeline/TFRecordDecoding_3/sub2training_input_pipeline/TFRecordDecoding_3/truediv4training_input_pipeline/TFRecordDecoding_3/ToFloat_22training_input_pipeline/TFRecordDecoding_3/ToInt324training_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙
ą
Ctraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
ł
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
¨
Btraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
Ž
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
 *ÍĚL;
ź
.training_input_pipeline/batch_join_and_pad/mulMul2training_input_pipeline/batch_join_and_pad/ToFloat0training_input_pipeline/batch_join_and_pad/mul/y*
_output_shapes
: *
T0
Ä
Dtraining_input_pipeline/batch_join_and_pad/fraction_of_320_full/tagsConst*P
valueGBE B?training_input_pipeline/batch_join_and_pad/fraction_of_320_full*
dtype0*
_output_shapes
: 
ç
?training_input_pipeline/batch_join_and_pad/fraction_of_320_fullScalarSummaryDtraining_input_pipeline/batch_join_and_pad/fraction_of_320_full/tags.training_input_pipeline/batch_join_and_pad/mul*
T0*
_output_shapes
: 
n
,training_input_pipeline/batch_join_and_pad/nConst*
value	B :*
dtype0*
_output_shapes
: 

*training_input_pipeline/batch_join_and_padQueueDequeueManyV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue,training_input_pipeline/batch_join_and_pad/n*
_output_shapes
:˙˙˙˙˙˙˙˙˙PP::˙˙˙˙˙˙˙˙˙PP:˙˙˙˙˙˙˙˙˙PP::˙˙˙˙˙˙˙˙˙´*
component_types

2	*

timeout_ms˙˙˙˙˙˙˙˙˙
ĺ
.validation_input_pipeline/input_producer/ConstConst*
valueřBőB'./validation/dataValidation_1.tfrecordsB'./validation/dataValidation_2.tfrecordsB'./validation/dataValidation_3.tfrecordsB'./validation/dataValidation_4.tfrecordsB'./validation/dataValidation_5.tfrecordsB'./validation/dataValidation_6.tfrecordsB'./validation/dataValidation_7.tfrecordsB'./validation/dataValidation_8.tfrecordsB'./validation/dataValidation_9.tfrecordsB(./validation/dataValidation_10.tfrecordsB(./validation/dataValidation_11.tfrecordsB(./validation/dataValidation_12.tfrecordsB(./validation/dataValidation_13.tfrecordsB(./validation/dataValidation_14.tfrecordsB(./validation/dataValidation_15.tfrecords*
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
ż
0validation_input_pipeline/input_producer/GreaterGreater-validation_input_pipeline/input_producer/Size2validation_input_pipeline/input_producer/Greater/y*
_output_shapes
: *
T0
Ź
5validation_input_pipeline/input_producer/Assert/ConstConst*
dtype0*
_output_shapes
: *G
value>B< B6string_input_producer requires a non-null input tensor
´
=validation_input_pipeline/input_producer/Assert/Assert/data_0Const*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
Î
6validation_input_pipeline/input_producer/Assert/AssertAssert0validation_input_pipeline/input_producer/Greater=validation_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
Ë
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
 
<validation_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
ă
Cvalidation_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign<validation_input_pipeline/input_producer/limit_epochs/epochs;validation_input_pipeline/input_producer/limit_epochs/Const*
use_locking(*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
validate_shape(*
_output_shapes
: 
ý
Avalidation_input_pipeline/input_producer/limit_epochs/epochs/readIdentity<validation_input_pipeline/input_producer/limit_epochs/epochs*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 

?validation_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo<validation_input_pipeline/input_producer/limit_epochs/epochs*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit
Ű
5validation_input_pipeline/input_producer/limit_epochsIdentity1validation_input_pipeline/input_producer/Identity@^validation_input_pipeline/input_producer/limit_epochs/CountUpTo*
_output_shapes
:*
T0
­
(validation_input_pipeline/input_producerFIFOQueueV2*
shared_name *
capacity *
	container *
_output_shapes
: *
component_types
2*
shapes
: 
ë
Cvalidation_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2(validation_input_pipeline/input_producer5validation_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms˙˙˙˙˙˙˙˙˙

=validation_input_pipeline/input_producer/input_producer_CloseQueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues( 

?validation_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues(

<validation_input_pipeline/input_producer/input_producer_SizeQueueSizeV2(validation_input_pipeline/input_producer*
_output_shapes
: 
Ś
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
ś
,validation_input_pipeline/input_producer/mulMul0validation_input_pipeline/input_producer/ToFloat.validation_input_pipeline/input_producer/mul/y*
T0*
_output_shapes
: 
ž
Avalidation_input_pipeline/input_producer/fraction_of_32_full/tagsConst*
dtype0*
_output_shapes
: *M
valueDBB B<validation_input_pipeline/input_producer/fraction_of_32_full
ß
<validation_input_pipeline/input_producer/fraction_of_32_fullScalarSummaryAvalidation_input_pipeline/input_producer/fraction_of_32_full/tags,validation_input_pipeline/input_producer/mul*
_output_shapes
: *
T0

*validation_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
Ś
&validation_input_pipeline/ReaderReadV2ReaderReadV2*validation_input_pipeline/TFRecordReaderV2(validation_input_pipeline/input_producer*
_output_shapes
: : 

Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Mvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
Í
validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ť
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ź
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Ŕ
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ž
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
Ç
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
Ă
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
Ź
kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 

`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(validation_input_pipeline/ReaderReadV2:1validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyuvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstMvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
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
ü
4validation_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0
ţ
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0
ţ
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
r
0validation_input_pipeline/TFRecordDecoding/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ę
.validation_input_pipeline/TFRecordDecoding/subSub`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample0validation_input_pipeline/TFRecordDecoding/sub/y*
T0	*
_output_shapes
: 
Î
2validation_input_pipeline/TFRecordDecoding/ToInt32Castbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0

8validation_input_pipeline/TFRecordDecoding/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ő
2validation_input_pipeline/TFRecordDecoding/ReshapeReshape4validation_input_pipeline/TFRecordDecoding/DecodeRaw8validation_input_pipeline/TFRecordDecoding/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ˇ
2validation_input_pipeline/TFRecordDecoding/ToFloatCast2validation_input_pipeline/TFRecordDecoding/Reshape*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

:validation_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      
ű
4validation_input_pipeline/TFRecordDecoding/Reshape_1Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1:validation_input_pipeline/TFRecordDecoding/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4validation_input_pipeline/TFRecordDecoding/ToFloat_1Cast4validation_input_pipeline/TFRecordDecoding/Reshape_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

:validation_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      
ű
4validation_input_pipeline/TFRecordDecoding/Reshape_2Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2:validation_input_pipeline/TFRecordDecoding/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4validation_input_pipeline/TFRecordDecoding/ToFloat_2Cast4validation_input_pipeline/TFRecordDecoding/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
î
:validation_input_pipeline/TFRecordDecoding/Reshape_3/shapePack2validation_input_pipeline/TFRecordDecoding/ToInt32<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ô
4validation_input_pipeline/TFRecordDecoding/Reshape_3Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3:validation_input_pipeline/TFRecordDecoding/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Avalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
ü
/validation_input_pipeline/TFRecordDecoding/MeanMean2validation_input_pipeline/TFRecordDecoding/ToFloatAvalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Ö
0validation_input_pipeline/TFRecordDecoding/sub_1Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
§
1validation_input_pipeline/TFRecordDecoding/SquareSquare0validation_input_pipeline/TFRecordDecoding/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Cvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
˙
1validation_input_pipeline/TFRecordDecoding/Mean_1Mean1validation_input_pipeline/TFRecordDecoding/SquareCvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0

/validation_input_pipeline/TFRecordDecoding/SqrtSqrt1validation_input_pipeline/TFRecordDecoding/Mean_1*
T0*&
_output_shapes
:
y
4validation_input_pipeline/TFRecordDecoding/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ő
2validation_input_pipeline/TFRecordDecoding/MaximumMaximum/validation_input_pipeline/TFRecordDecoding/Sqrt4validation_input_pipeline/TFRecordDecoding/Maximum/y*
T0*&
_output_shapes
:
Ö
0validation_input_pipeline/TFRecordDecoding/sub_2Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ý
2validation_input_pipeline/TFRecordDecoding/truedivRealDiv0validation_input_pipeline/TFRecordDecoding/sub_22validation_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

,validation_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
Ş
(validation_input_pipeline/ReaderReadV2_1ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_1(validation_input_pipeline/input_producer*
_output_shapes
: : 

Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Ovalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
Ď
validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
˝
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ž
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Â
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Ŕ
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
É
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ĺ
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ž
mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
ł
bvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_1:1validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
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

6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0

8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
t
2validation_input_pipeline/TFRecordDecoding_1/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
đ
0validation_input_pipeline/TFRecordDecoding_1/subSubbvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_1/sub/y*
T0	*
_output_shapes
: 
Ň
4validation_input_pipeline/TFRecordDecoding_1/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0

:validation_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4validation_input_pipeline/TFRecordDecoding_1/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw:validation_input_pipeline/TFRecordDecoding_1/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4validation_input_pipeline/TFRecordDecoding_1/ToFloatCast4validation_input_pipeline/TFRecordDecoding_1/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:

6validation_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ż
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:

6validation_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ż
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
ô
<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_1/ToInt32>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ú
6validation_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Cvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:

1validation_input_pipeline/TFRecordDecoding_1/MeanMean4validation_input_pipeline/TFRecordDecoding_1/ToFloatCvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ü
2validation_input_pipeline/TFRecordDecoding_1/sub_1Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ť
3validation_input_pipeline/TFRecordDecoding_1/SquareSquare2validation_input_pipeline/TFRecordDecoding_1/sub_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0

Evalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:

3validation_input_pipeline/TFRecordDecoding_1/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_1/SquareEvalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:

1validation_input_pipeline/TFRecordDecoding_1/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_1/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ű
4validation_input_pipeline/TFRecordDecoding_1/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_1/Sqrt6validation_input_pipeline/TFRecordDecoding_1/Maximum/y*&
_output_shapes
:*
T0
Ü
2validation_input_pipeline/TFRecordDecoding_1/sub_2Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
ă
4validation_input_pipeline/TFRecordDecoding_1/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_1/sub_24validation_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

,validation_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
Ş
(validation_input_pipeline/ReaderReadV2_2ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_2(validation_input_pipeline/input_producer*
_output_shapes
: : 

Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Ovalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ď
validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
˝
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ž
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Â
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Ŕ
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
É
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
Ĺ
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Bskeleton
Ž
mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
ł
bvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_2:1validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense

6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0

8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
t
2validation_input_pipeline/TFRecordDecoding_2/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
đ
0validation_input_pipeline/TFRecordDecoding_2/subSubbvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_2/sub/y*
T0	*
_output_shapes
: 
Ň
4validation_input_pipeline/TFRecordDecoding_2/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0

:validation_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4validation_input_pipeline/TFRecordDecoding_2/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw:validation_input_pipeline/TFRecordDecoding_2/Reshape/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ť
4validation_input_pipeline/TFRecordDecoding_2/ToFloatCast4validation_input_pipeline/TFRecordDecoding_2/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:

6validation_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ż
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:

6validation_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ż
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
ô
<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_2/ToInt32>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
ú
6validation_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Cvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:

1validation_input_pipeline/TFRecordDecoding_2/MeanMean4validation_input_pipeline/TFRecordDecoding_2/ToFloatCvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Ü
2validation_input_pipeline/TFRecordDecoding_2/sub_1Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
Ť
3validation_input_pipeline/TFRecordDecoding_2/SquareSquare2validation_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Evalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             

3validation_input_pipeline/TFRecordDecoding_2/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_2/SquareEvalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:

1validation_input_pipeline/TFRecordDecoding_2/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_2/Mean_1*&
_output_shapes
:*
T0
{
6validation_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ű
4validation_input_pipeline/TFRecordDecoding_2/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_2/Sqrt6validation_input_pipeline/TFRecordDecoding_2/Maximum/y*&
_output_shapes
:*
T0
Ü
2validation_input_pipeline/TFRecordDecoding_2/sub_2Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
ă
4validation_input_pipeline/TFRecordDecoding_2/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_2/sub_24validation_input_pipeline/TFRecordDecoding_2/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

,validation_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
Ş
(validation_input_pipeline/ReaderReadV2_3ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_3(validation_input_pipeline/input_producer*
_output_shapes
: : 

Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Ovalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ď
validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
˝
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ž
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Â
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Ŕ
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
É
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ĺ
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ž
mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
ł
bvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_3:1validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse 

6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
t
2validation_input_pipeline/TFRecordDecoding_3/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
đ
0validation_input_pipeline/TFRecordDecoding_3/subSubbvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_3/sub/y*
T0	*
_output_shapes
: 
Ň
4validation_input_pipeline/TFRecordDecoding_3/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0

:validation_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4validation_input_pipeline/TFRecordDecoding_3/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw:validation_input_pipeline/TFRecordDecoding_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4validation_input_pipeline/TFRecordDecoding_3/ToFloatCast4validation_input_pipeline/TFRecordDecoding_3/Reshape*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:

6validation_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ż
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:

6validation_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ż
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
ô
<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_3/ToInt32>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ú
6validation_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Cvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             

1validation_input_pipeline/TFRecordDecoding_3/MeanMean4validation_input_pipeline/TFRecordDecoding_3/ToFloatCvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ü
2validation_input_pipeline/TFRecordDecoding_3/sub_1Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ť
3validation_input_pipeline/TFRecordDecoding_3/SquareSquare2validation_input_pipeline/TFRecordDecoding_3/sub_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0

Evalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             

3validation_input_pipeline/TFRecordDecoding_3/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_3/SquareEvalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0

1validation_input_pipeline/TFRecordDecoding_3/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_3/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ű
4validation_input_pipeline/TFRecordDecoding_3/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_3/Sqrt6validation_input_pipeline/TFRecordDecoding_3/Maximum/y*&
_output_shapes
:*
T0
Ü
2validation_input_pipeline/TFRecordDecoding_3/sub_2Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ă
4validation_input_pipeline/TFRecordDecoding_3/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_3/sub_24validation_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
t
2validation_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
¸
?validation_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
capacityŔ*
	container *
_output_shapes
: *
component_types

2	*u
shapesk
i:˙˙˙˙˙˙˙˙˙PP: :˙˙˙˙˙˙˙˙˙PP:˙˙˙˙˙˙˙˙˙PP: :˙˙˙˙˙˙˙˙˙´*
shared_name 

Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue4validation_input_pipeline/TFRecordDecoding/ToFloat_1.validation_input_pipeline/TFRecordDecoding/sub2validation_input_pipeline/TFRecordDecoding/truediv4validation_input_pipeline/TFRecordDecoding/ToFloat_22validation_input_pipeline/TFRecordDecoding/ToInt324validation_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_1/ToFloat_10validation_input_pipeline/TFRecordDecoding_1/sub4validation_input_pipeline/TFRecordDecoding_1/truediv6validation_input_pipeline/TFRecordDecoding_1/ToFloat_24validation_input_pipeline/TFRecordDecoding_1/ToInt326validation_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_2/ToFloat_10validation_input_pipeline/TFRecordDecoding_2/sub4validation_input_pipeline/TFRecordDecoding_2/truediv6validation_input_pipeline/TFRecordDecoding_2/ToFloat_24validation_input_pipeline/TFRecordDecoding_2/ToInt326validation_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_3/ToFloat_10validation_input_pipeline/TFRecordDecoding_3/sub4validation_input_pipeline/TFRecordDecoding_3/truediv6validation_input_pipeline/TFRecordDecoding_3/ToFloat_24validation_input_pipeline/TFRecordDecoding_3/ToInt326validation_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙
ľ
Evalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
ˇ
Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
Ź
Dvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
˛
4validation_input_pipeline/batch_join_and_pad/ToFloatCastDvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Size*

SrcT0*
_output_shapes
: *

DstT0
w
2validation_input_pipeline/batch_join_and_pad/mul/yConst*
valueB
 *ÍĚL;*
dtype0*
_output_shapes
: 
Â
0validation_input_pipeline/batch_join_and_pad/mulMul4validation_input_pipeline/batch_join_and_pad/ToFloat2validation_input_pipeline/batch_join_and_pad/mul/y*
T0*
_output_shapes
: 
Č
Fvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full/tagsConst*R
valueIBG BAvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full*
dtype0*
_output_shapes
: 
í
Avalidation_input_pipeline/batch_join_and_pad/fraction_of_320_fullScalarSummaryFvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full/tags0validation_input_pipeline/batch_join_and_pad/mul*
_output_shapes
: *
T0
p
.validation_input_pipeline/batch_join_and_pad/nConst*
value	B :*
dtype0*
_output_shapes
: 

,validation_input_pipeline/batch_join_and_padQueueDequeueManyV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue.validation_input_pipeline/batch_join_and_pad/n*
_output_shapes
:˙˙˙˙˙˙˙˙˙PP::˙˙˙˙˙˙˙˙˙PP:˙˙˙˙˙˙˙˙˙PP::˙˙˙˙˙˙˙˙˙´*
component_types

2	*

timeout_ms˙˙˙˙˙˙˙˙˙
e
Training/SequenceMask/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Š
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
Ž
Training/SequenceMask/RangeRangeTraining/SequenceMask/Const_1Training/SequenceMask/MaxTraining/SequenceMask/Const_2*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$Training/SequenceMask/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ˇ
 Training/SequenceMask/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4$Training/SequenceMask/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
|
Training/SequenceMask/CastCast Training/SequenceMask/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0

Training/SequenceMask/LessLessTraining/SequenceMask/RangeTraining/SequenceMask/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Training/SequenceMask/Cast_1CastTraining/SequenceMask/Less*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0

b
Training/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

Training/ExpandDims
ExpandDimsTraining/SequenceMask/Cast_1Training/ExpandDims/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0
y
 Training/cnn_model/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      
˝
Training/cnn_model/ReshapeReshape,training_input_pipeline/batch_join_and_pad:2 Training/cnn_model/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
×
Fcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB"            *
dtype0*
_output_shapes
:
Â
Ecnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *    
Ä
Gcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *|Ý=
ş
Pcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shape*

seed *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
:
Ď
Dcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulMulPcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalGcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
˝
@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normalAddDcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulEcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mean*&
_output_shapes
:*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
ß
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
­
*cnn_model/convolution/conv2d/kernel/AssignAssign#cnn_model/convolution/conv2d/kernel@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normal*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:
Â
(cnn_model/convolution/conv2d/kernel/readIdentity#cnn_model/convolution/conv2d/kernel*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
ś
3cnn_model/convolution/conv2d/bias/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
Ă
!cnn_model/convolution/conv2d/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container 

(cnn_model/convolution/conv2d/bias/AssignAssign!cnn_model/convolution/conv2d/bias3cnn_model/convolution/conv2d/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
°
&cnn_model/convolution/conv2d/bias/readIdentity!cnn_model/convolution/conv2d/bias*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:

3Training/cnn_model/convolution/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¤
,Training/cnn_model/convolution/conv2d/Conv2DConv2DTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ß
-Training/cnn_model/convolution/conv2d/BiasAddBiasAdd,Training/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

*Training/cnn_model/convolution/conv2d/ReluRelu-Training/cnn_model/convolution/conv2d/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
÷
4Training/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool*Training/cnn_model/convolution/conv2d/Relu*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙((*
T0*
data_formatNHWC*
strides

Ű
Hcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
Ć
Gcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
Icnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *HY=*
dtype0*
_output_shapes
: 
Ŕ
Rcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: *

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
seed2 
×
Fcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
Ĺ
Bcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mean*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
ă
%cnn_model/convolution/conv2d_1/kernel
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container *
shape: 
ľ
,cnn_model/convolution/conv2d_1/kernel/AssignAssign%cnn_model/convolution/conv2d_1/kernelBcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
Č
*cnn_model/convolution/conv2d_1/kernel/readIdentity%cnn_model/convolution/conv2d_1/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
ş
5cnn_model/convolution/conv2d_1/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ç
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

*cnn_model/convolution/conv2d_1/bias/AssignAssign#cnn_model/convolution/conv2d_1/bias5cnn_model/convolution/conv2d_1/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
ś
(cnn_model/convolution/conv2d_1/bias/readIdentity#cnn_model/convolution/conv2d_1/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 

5Training/cnn_model/convolution/conv2d_1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Â
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
:˙˙˙˙˙˙˙˙˙(( 
ĺ
/Training/cnn_model/convolution/conv2d_1/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( 

,Training/cnn_model/convolution/conv2d_1/ReluRelu/Training/cnn_model/convolution/conv2d_1/BiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( *
T0
ű
6Training/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_1/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
Ű
Hcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
Ć
Gcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
Icnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *ŁE=*
dtype0*
_output_shapes
: 
Ŕ
Rcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shape*
seed2 *
dtype0*&
_output_shapes
: @*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
×
Fcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
Ĺ
Bcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
ă
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
ľ
,cnn_model/convolution/conv2d_2/kernel/AssignAssign%cnn_model/convolution/conv2d_2/kernelBcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
Č
*cnn_model/convolution/conv2d_2/kernel/readIdentity%cnn_model/convolution/conv2d_2/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
ş
5cnn_model/convolution/conv2d_2/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ç
#cnn_model/convolution/conv2d_2/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container *
shape:@

*cnn_model/convolution/conv2d_2/bias/AssignAssign#cnn_model/convolution/conv2d_2/bias5cnn_model/convolution/conv2d_2/bias/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
ś
(cnn_model/convolution/conv2d_2/bias/readIdentity#cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias

5Training/cnn_model/convolution/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ä
.Training/cnn_model/convolution/conv2d_2/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ĺ
/Training/cnn_model/convolution/conv2d_2/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

,Training/cnn_model/convolution/conv2d_2/ReluRelu/Training/cnn_model/convolution/conv2d_2/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_2/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

@
Ű
Hcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @      
Ć
Gcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
Icnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *HY=*
dtype0*
_output_shapes
: 
Á
Rcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shape*
dtype0*'
_output_shapes
:@*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
seed2 
Ř
Fcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@
Ć
Bcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mean*'
_output_shapes
:@*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
ĺ
%cnn_model/convolution/conv2d_3/kernel
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@*
dtype0*'
_output_shapes
:@
ś
,cnn_model/convolution/conv2d_3/kernel/AssignAssign%cnn_model/convolution/conv2d_3/kernelBcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(
É
*cnn_model/convolution/conv2d_3/kernel/readIdentity%cnn_model/convolution/conv2d_3/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@
ź
5cnn_model/convolution/conv2d_3/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueB*    *
dtype0*
_output_shapes	
:
É
#cnn_model/convolution/conv2d_3/bias
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:*
dtype0*
_output_shapes	
:

*cnn_model/convolution/conv2d_3/bias/AssignAssign#cnn_model/convolution/conv2d_3/bias5cnn_model/convolution/conv2d_3/bias/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:
ˇ
(cnn_model/convolution/conv2d_3/bias/readIdentity#cnn_model/convolution/conv2d_3/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:

5Training/cnn_model/convolution/conv2d_3/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Ĺ
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
:˙˙˙˙˙˙˙˙˙


ć
/Training/cnn_model/convolution/conv2d_3/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙


 
,Training/cnn_model/convolution/conv2d_3/ReluRelu/Training/cnn_model/convolution/conv2d_3/BiasAdd*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

*
T0
ü
6Training/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_3/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
Ű
Hcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:
Ć
Gcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
Icnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *ŁĹ<*
dtype0*
_output_shapes
: 
Â
Rcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
seed2 
Ů
Fcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:
Ç
Bcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:
ç
%cnn_model/convolution/conv2d_4/kernel
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:
ˇ
,cnn_model/convolution/conv2d_4/kernel/AssignAssign%cnn_model/convolution/conv2d_4/kernelBcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:
Ę
*cnn_model/convolution/conv2d_4/kernel/readIdentity%cnn_model/convolution/conv2d_4/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:
ź
5cnn_model/convolution/conv2d_4/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueB*    
É
#cnn_model/convolution/conv2d_4/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:

*cnn_model/convolution/conv2d_4/bias/AssignAssign#cnn_model/convolution/conv2d_4/bias5cnn_model/convolution/conv2d_4/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
ˇ
(cnn_model/convolution/conv2d_4/bias/readIdentity#cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias

5Training/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ĺ
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
:˙˙˙˙˙˙˙˙˙
ć
/Training/cnn_model/convolution/conv2d_4/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
 
,Training/cnn_model/convolution/conv2d_4/ReluRelu/Training/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
6Training/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_4/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
"Training/cnn_model/Reshape_1/shapeConst*
valueB"˙˙˙˙ 	  *
dtype0*
_output_shapes
:
Ä
Training/cnn_model/Reshape_1Reshape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool"Training/cnn_model/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
9cnn_model/dense/kernel/Initializer/truncated_normal/shapeConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
¨
8cnn_model/dense/kernel/Initializer/truncated_normal/meanConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ş
:cnn_model/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *)
_class
loc:@cnn_model/dense/kernel*
valueB
 *JQÚ<

Ccnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9cnn_model/dense/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*)
_class
loc:@cnn_model/dense/kernel*
seed2 

7cnn_model/dense/kernel/Initializer/truncated_normal/mulMulCcnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormal:cnn_model/dense/kernel/Initializer/truncated_normal/stddev*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:


3cnn_model/dense/kernel/Initializer/truncated_normalAdd7cnn_model/dense/kernel/Initializer/truncated_normal/mul8cnn_model/dense/kernel/Initializer/truncated_normal/mean*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:

š
cnn_model/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:

ó
cnn_model/dense/kernel/AssignAssigncnn_model/dense/kernel3cnn_model/dense/kernel/Initializer/truncated_normal*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

cnn_model/dense/kernel/readIdentitycnn_model/dense/kernel*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:


&cnn_model/dense/bias/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ť
cnn_model/dense/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container 
Ű
cnn_model/dense/bias/AssignAssigncnn_model/dense/bias&cnn_model/dense/bias/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:

cnn_model/dense/bias/readIdentitycnn_model/dense/bias*
_output_shapes	
:*
T0*'
_class
loc:@cnn_model/dense/bias
˝
Training/cnn_model/dense/MatMulMatMulTraining/cnn_model/Reshape_1cnn_model/dense/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
ą
 Training/cnn_model/dense/BiasAddBiasAddTraining/cnn_model/dense/MatMulcnn_model/dense/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
z
Training/cnn_model/dense/ReluRelu Training/cnn_model/dense/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
"Training/cnn_model/Reshape_2/shapeConst*!
valueB"   ˙˙˙˙   *
dtype0*
_output_shapes
:
Ż
Training/cnn_model/Reshape_2ReshapeTraining/cnn_model/dense/Relu"Training/cnn_model/Reshape_2/shape*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
g
Training/SequenceMask_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
­
Training/SequenceMask_1/MaxMax,training_input_pipeline/batch_join_and_pad:4Training/SequenceMask_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
ś
Training/SequenceMask_1/RangeRangeTraining/SequenceMask_1/Const_1Training/SequenceMask_1/MaxTraining/SequenceMask_1/Const_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
q
&Training/SequenceMask_1/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
"Training/SequenceMask_1/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4&Training/SequenceMask_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

Training/SequenceMask_1/CastCast"Training/SequenceMask_1/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0

Training/SequenceMask_1/LessLessTraining/SequenceMask_1/RangeTraining/SequenceMask_1/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Training/SequenceMask_1/Cast_1CastTraining/SequenceMask_1/Less*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
d
Training/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
 
Training/ExpandDims_1
ExpandDimsTraining/SequenceMask_1/Cast_1Training/ExpandDims_1/dim*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0*
T0
g
%Training/rnn_model/recurrent/rnn/RankConst*
dtype0*
_output_shapes
: *
value	B :
n
,Training/rnn_model/recurrent/rnn/range/startConst*
dtype0*
_output_shapes
: *
value	B :
n
,Training/rnn_model/recurrent/rnn/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Ú
&Training/rnn_model/recurrent/rnn/rangeRange,Training/rnn_model/recurrent/rnn/range/start%Training/rnn_model/recurrent/rnn/Rank,Training/rnn_model/recurrent/rnn/range/delta*
_output_shapes
:*

Tidx0

0Training/rnn_model/recurrent/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
n
,Training/rnn_model/recurrent/rnn/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ő
'Training/rnn_model/recurrent/rnn/concatConcatV20Training/rnn_model/recurrent/rnn/concat/values_0&Training/rnn_model/recurrent/rnn/range,Training/rnn_model/recurrent/rnn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Â
*Training/rnn_model/recurrent/rnn/transpose	TransposeTraining/cnn_model/Reshape_2'Training/rnn_model/recurrent/rnn/concat*
Tperm0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

0Training/rnn_model/recurrent/rnn/sequence_lengthIdentity,training_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:

8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
valueB:*
dtype0*
_output_shapes
:

>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ľ
9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV28Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:

>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
÷
8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
dtype0*
_output_shapes
:*
valueB:

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
valueB:*
dtype0*
_output_shapes
:

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
valueB:*
dtype0*
_output_shapes
:

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:*
dtype0*
_output_shapes
:

@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ť
;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:

@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ý
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
valueB:*
dtype0*
_output_shapes
:

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
dtype0*
_output_shapes
:*
valueB:
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
¤
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
°
$Training/rnn_model/recurrent/rnn/AllAll&Training/rnn_model/recurrent/rnn/Equal&Training/rnn_model/recurrent/rnn/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
ž
-Training/rnn_model/recurrent/rnn/Assert/ConstConst*a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 

/Training/rnn_model/recurrent/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
Ć
5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*
dtype0*
_output_shapes
: *a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is 

5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
ź
.Training/rnn_model/recurrent/rnn/Assert/AssertAssert$Training/rnn_model/recurrent/rnn/All5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0&Training/rnn_model/recurrent/rnn/stack5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2&Training/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
Ŕ
,Training/rnn_model/recurrent/rnn/CheckSeqLenIdentity0Training/rnn_model/recurrent/rnn/sequence_length/^Training/rnn_model/recurrent/rnn/Assert/Assert*
T0*
_output_shapes
:

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

6Training/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6Training/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
 
.Training/rnn_model/recurrent/rnn/strided_sliceStridedSlice(Training/rnn_model/recurrent/rnn/Shape_14Training/rnn_model/recurrent/rnn/strided_slice/stack6Training/rnn_model/recurrent/rnn/strided_slice/stack_16Training/rnn_model/recurrent/rnn/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
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
(Training/rnn_model/recurrent/rnn/Const_2Const*
dtype0*
_output_shapes
:*
valueB:
p
.Training/rnn_model/recurrent/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ó
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
Ă
&Training/rnn_model/recurrent/rnn/zerosFill)Training/rnn_model/recurrent/rnn/concat_1,Training/rnn_model/recurrent/rnn/zeros/Const*
_output_shapes
:	*
T0*

index_type0
r
(Training/rnn_model/recurrent/rnn/Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
Á
$Training/rnn_model/recurrent/rnn/MinMin,Training/rnn_model/recurrent/rnn/CheckSeqLen(Training/rnn_model/recurrent/rnn/Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
r
(Training/rnn_model/recurrent/rnn/Const_4Const*
dtype0*
_output_shapes
:*
valueB: 
Á
$Training/rnn_model/recurrent/rnn/MaxMax,Training/rnn_model/recurrent/rnn/CheckSeqLen(Training/rnn_model/recurrent/rnn/Const_4*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
g
%Training/rnn_model/recurrent/rnn/timeConst*
dtype0*
_output_shapes
: *
value	B : 
Đ
,Training/rnn_model/recurrent/rnn/TensorArrayTensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*L
tensor_array_name75Training/rnn_model/recurrent/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:	*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
Ń
.Training/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*
element_shape:	*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*K
tensor_array_name64Training/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 
Ł
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape*Training/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:

GTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
ATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeGTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0

?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
¸
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRange?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

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
Ś
(Training/rnn_model/recurrent/rnn/MaximumMaximum*Training/rnn_model/recurrent/rnn/Maximum/x$Training/rnn_model/recurrent/rnn/Max*
_output_shapes
: *
T0
Ž
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

,Training/rnn_model/recurrent/rnn/while/EnterEnter8Training/rnn_model/recurrent/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ó
.Training/rnn_model/recurrent/rnn/while/Enter_1Enter%Training/rnn_model/recurrent/rnn/time*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
ü
.Training/rnn_model/recurrent/rnn/while/Enter_2Enter.Training/rnn_model/recurrent/rnn/TensorArray:1*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 

.Training/rnn_model/recurrent/rnn/while/Enter_3Enter8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
parallel_iterations *
_output_shapes
:	*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 

.Training/rnn_model/recurrent/rnn/while/Enter_4Enter:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ĺ
,Training/rnn_model/recurrent/rnn/while/MergeMerge,Training/rnn_model/recurrent/rnn/while/Enter4Training/rnn_model/recurrent/rnn/while/NextIteration*
N*
_output_shapes
: : *
T0
Ë
.Training/rnn_model/recurrent/rnn/while/Merge_1Merge.Training/rnn_model/recurrent/rnn/while/Enter_16Training/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Ë
.Training/rnn_model/recurrent/rnn/while/Merge_2Merge.Training/rnn_model/recurrent/rnn/while/Enter_26Training/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
Ô
.Training/rnn_model/recurrent/rnn/while/Merge_3Merge.Training/rnn_model/recurrent/rnn/while/Enter_36Training/rnn_model/recurrent/rnn/while/NextIteration_3*
T0*
N*!
_output_shapes
:	: 
Ô
.Training/rnn_model/recurrent/rnn/while/Merge_4Merge.Training/rnn_model/recurrent/rnn/while/Enter_46Training/rnn_model/recurrent/rnn/while/NextIteration_4*
N*!
_output_shapes
:	: *
T0
ľ
+Training/rnn_model/recurrent/rnn/while/LessLess,Training/rnn_model/recurrent/rnn/while/Merge1Training/rnn_model/recurrent/rnn/while/Less/Enter*
T0*
_output_shapes
: 
˙
1Training/rnn_model/recurrent/rnn/while/Less/EnterEnter.Training/rnn_model/recurrent/rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ť
-Training/rnn_model/recurrent/rnn/while/Less_1Less.Training/rnn_model/recurrent/rnn/while/Merge_13Training/rnn_model/recurrent/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
ű
3Training/rnn_model/recurrent/rnn/while/Less_1/EnterEnter(Training/rnn_model/recurrent/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ł
1Training/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd+Training/rnn_model/recurrent/rnn/while/Less-Training/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 

/Training/rnn_model/recurrent/rnn/while/LoopCondLoopCond1Training/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 
ú
-Training/rnn_model/recurrent/rnn/while/SwitchSwitch,Training/rnn_model/recurrent/rnn/while/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/while/Merge*
_output_shapes
: : 

/Training/rnn_model/recurrent/rnn/while/Switch_1Switch.Training/rnn_model/recurrent/rnn/while/Merge_1/Training/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_1

/Training/rnn_model/recurrent/rnn/while/Switch_2Switch.Training/rnn_model/recurrent/rnn/while/Merge_2/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_2*
_output_shapes
: : 

/Training/rnn_model/recurrent/rnn/while/Switch_3Switch.Training/rnn_model/recurrent/rnn/while/Merge_3/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_3**
_output_shapes
:	:	

/Training/rnn_model/recurrent/rnn/while/Switch_4Switch.Training/rnn_model/recurrent/rnn/while/Merge_4/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_4**
_output_shapes
:	:	

/Training/rnn_model/recurrent/rnn/while/IdentityIdentity/Training/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 

1Training/rnn_model/recurrent/rnn/while/Identity_1Identity1Training/rnn_model/recurrent/rnn/while/Switch_1:1*
_output_shapes
: *
T0

1Training/rnn_model/recurrent/rnn/while/Identity_2Identity1Training/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 

1Training/rnn_model/recurrent/rnn/while/Identity_3Identity1Training/rnn_model/recurrent/rnn/while/Switch_3:1*
T0*
_output_shapes
:	

1Training/rnn_model/recurrent/rnn/while/Identity_4Identity1Training/rnn_model/recurrent/rnn/while/Switch_4:1*
T0*
_output_shapes
:	
 
,Training/rnn_model/recurrent/rnn/while/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ą
*Training/rnn_model/recurrent/rnn/while/addAdd/Training/rnn_model/recurrent/rnn/while/Identity,Training/rnn_model/recurrent/rnn/while/add/y*
_output_shapes
: *
T0
°
8Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3TensorArrayReadV3>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	

>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
ť
@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Ö
3Training/rnn_model/recurrent/rnn/while/GreaterEqualGreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_19Training/rnn_model/recurrent/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:

9Training/rnn_model/recurrent/rnn/while/GreaterEqual/EnterEnter,Training/rnn_model/recurrent/rnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ů
Krnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
Ě
Jrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Î
Lrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *ěŃ<*
dtype0*
_output_shapes
: 
Ă
Urnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
seed2 
Ý
Irnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulMulUrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalLrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:

Ë
Ernn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normalAddIrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulJrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:

Ý
(rnn_model/recurrent/rnn/lstm_cell/kernel
VariableV2*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
ť
/rnn_model/recurrent/rnn/lstm_cell/kernel/AssignAssign(rnn_model/recurrent/rnn/lstm_cell/kernelErnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel

-rnn_model/recurrent/rnn/lstm_cell/kernel/readIdentity(rnn_model/recurrent/rnn/lstm_cell/kernel*
T0* 
_output_shapes
:

Î
Hrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:*
dtype0*
_output_shapes
:
ž
>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
˝
8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zerosFillHrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensor>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:
Ď
&rnn_model/recurrent/rnn/lstm_cell/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias
Ł
-rnn_model/recurrent/rnn/lstm_cell/bias/AssignAssign&rnn_model/recurrent/rnn/lstm_cell/bias8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

+rnn_model/recurrent/rnn/lstm_cell/bias/readIdentity&rnn_model/recurrent/rnn/lstm_cell/bias*
T0*
_output_shapes	
:
°
<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axisConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
­
7Training/rnn_model/recurrent/rnn/while/lstm_cell/concatConcatV28Training/rnn_model/recurrent/rnn/while/TensorArrayReadV31Training/rnn_model/recurrent/rnn/while/Identity_4<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis*
T0*
N*
_output_shapes
:	*

Tidx0

7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMulMatMul7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter*
T0*
_output_shapes
:	*
transpose_a( *
transpose_b( 

=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ý
8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAddBiasAdd7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter*
data_formatNHWC*
_output_shapes
:	*
T0

>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/EnterEnter+rnn_model/recurrent/rnn/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ş
6Training/rnn_model/recurrent/rnn/while/lstm_cell/ConstConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
´
@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dimConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

6Training/rnn_model/recurrent/rnn/while/lstm_cell/splitSplit@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd*
T0*@
_output_shapes.
,:	:	:	:	*
	num_split
­
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  ?
×
4Training/rnn_model/recurrent/rnn/while/lstm_cell/addAdd8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:26Training/rnn_model/recurrent/rnn/while/lstm_cell/add/y*
T0*
_output_shapes
:	
Ł
8Training/rnn_model/recurrent/rnn/while/lstm_cell/SigmoidSigmoid4Training/rnn_model/recurrent/rnn/while/lstm_cell/add*
T0*
_output_shapes
:	
Ň
4Training/rnn_model/recurrent/rnn/while/lstm_cell/mulMul8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid1Training/rnn_model/recurrent/rnn/while/Identity_3*
_output_shapes
:	*
T0
§
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1Sigmoid6Training/rnn_model/recurrent/rnn/while/lstm_cell/split*
_output_shapes
:	*
T0
Ą
5Training/rnn_model/recurrent/rnn/while/lstm_cell/TanhTanh8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:1*
T0*
_output_shapes
:	
Ú
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_15Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
T0*
_output_shapes
:	
Ő
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1Add4Training/rnn_model/recurrent/rnn/while/lstm_cell/mul6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1*
_output_shapes
:	*
T0
Š
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2Sigmoid8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:3*
T0*
_output_shapes
:	
Ą
7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1Tanh6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*
_output_shapes
:	
Ü
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_27Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
T0*
_output_shapes
:	
Î
-Training/rnn_model/recurrent/rnn/while/SelectSelect3Training/rnn_model/recurrent/rnn/while/GreaterEqual3Training/rnn_model/recurrent/rnn/while/Select/Enter6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
Í
3Training/rnn_model/recurrent/rnn/while/Select/EnterEnter&Training/rnn_model/recurrent/rnn/zeros*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:	*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Î
/Training/rnn_model/recurrent/rnn/while/Select_1Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_36Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	
Î
/Training/rnn_model/recurrent/rnn/while/Select_2Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_46Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
ł
JTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1-Training/rnn_model/recurrent/rnn/while/Select1Training/rnn_model/recurrent/rnn/while/Identity_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
ë
PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
˘
.Training/rnn_model/recurrent/rnn/while/add_1/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ˇ
,Training/rnn_model/recurrent/rnn/while/add_1Add1Training/rnn_model/recurrent/rnn/while/Identity_1.Training/rnn_model/recurrent/rnn/while/add_1/y*
_output_shapes
: *
T0

4Training/rnn_model/recurrent/rnn/while/NextIterationNextIteration*Training/rnn_model/recurrent/rnn/while/add*
T0*
_output_shapes
: 

6Training/rnn_model/recurrent/rnn/while/NextIteration_1NextIteration,Training/rnn_model/recurrent/rnn/while/add_1*
T0*
_output_shapes
: 
´
6Training/rnn_model/recurrent/rnn/while/NextIteration_2NextIterationJTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
˘
6Training/rnn_model/recurrent/rnn/while/NextIteration_3NextIteration/Training/rnn_model/recurrent/rnn/while/Select_1*
T0*
_output_shapes
:	
˘
6Training/rnn_model/recurrent/rnn/while/NextIteration_4NextIteration/Training/rnn_model/recurrent/rnn/while/Select_2*
_output_shapes
:	*
T0

+Training/rnn_model/recurrent/rnn/while/ExitExit-Training/rnn_model/recurrent/rnn/while/Switch*
T0*
_output_shapes
: 

-Training/rnn_model/recurrent/rnn/while/Exit_1Exit/Training/rnn_model/recurrent/rnn/while/Switch_1*
T0*
_output_shapes
: 

-Training/rnn_model/recurrent/rnn/while/Exit_2Exit/Training/rnn_model/recurrent/rnn/while/Switch_2*
T0*
_output_shapes
: 

-Training/rnn_model/recurrent/rnn/while/Exit_3Exit/Training/rnn_model/recurrent/rnn/while/Switch_3*
T0*
_output_shapes
:	

-Training/rnn_model/recurrent/rnn/while/Exit_4Exit/Training/rnn_model/recurrent/rnn/while/Switch_4*
T0*
_output_shapes
:	

CTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
_output_shapes
: 
Ŕ
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B : 
Ŕ
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/deltaConst*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
ő
7Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeRange=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startCTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/delta*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

ETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3,Training/rnn_model/recurrent/rnn/TensorArray7Training/rnn_model/recurrent/rnn/TensorArrayStack/range-Training/rnn_model/recurrent/rnn/while/Exit_2*
element_shape:	*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
dtype0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
(Training/rnn_model/recurrent/rnn/Const_5Const*
valueB:*
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
.Training/rnn_model/recurrent/rnn/range_1/startConst*
dtype0*
_output_shapes
: *
value	B :
p
.Training/rnn_model/recurrent/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
â
(Training/rnn_model/recurrent/rnn/range_1Range.Training/rnn_model/recurrent/rnn/range_1/start'Training/rnn_model/recurrent/rnn/Rank_1.Training/rnn_model/recurrent/rnn/range_1/delta*
_output_shapes
:*

Tidx0

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
ý
)Training/rnn_model/recurrent/rnn/concat_2ConcatV22Training/rnn_model/recurrent/rnn/concat_2/values_0(Training/rnn_model/recurrent/rnn/range_1.Training/rnn_model/recurrent/rnn/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0
ď
,Training/rnn_model/recurrent/rnn/transpose_1	TransposeETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3)Training/rnn_model/recurrent/rnn/concat_2*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0
q
 Training/rnn_model/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
ś
Training/rnn_model/ReshapeReshape,Training/rnn_model/recurrent/rnn/transpose_1 Training/rnn_model/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
 *  ?*
dtype0*
_output_shapes
: 
Í
<Training/logits/dropout/dropout/random_uniform/RandomUniformRandomUniform%Training/logits/dropout/dropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
Â
2Training/logits/dropout/dropout/random_uniform/subSub2Training/logits/dropout/dropout/random_uniform/max2Training/logits/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ţ
2Training/logits/dropout/dropout/random_uniform/mulMul<Training/logits/dropout/dropout/random_uniform/RandomUniform2Training/logits/dropout/dropout/random_uniform/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
.Training/logits/dropout/dropout/random_uniformAdd2Training/logits/dropout/dropout/random_uniform/mul2Training/logits/dropout/dropout/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
#Training/logits/dropout/dropout/addAdd)Training/logits/dropout/dropout/keep_prob.Training/logits/dropout/dropout/random_uniform*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

%Training/logits/dropout/dropout/FloorFloor#Training/logits/dropout/dropout/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
#Training/logits/dropout/dropout/divRealDivTraining/rnn_model/Reshape)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
#Training/logits/dropout/dropout/mulMul#Training/logits/dropout/dropout/div%Training/logits/dropout/dropout/Floor*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
6logits/dense/kernel/Initializer/truncated_normal/shapeConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
˘
5logits/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *&
_class
loc:@logits/dense/kernel*
valueB
 *    
¤
7logits/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *&
_class
loc:@logits/dense/kernel*
valueB
 *R${=

@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6logits/dense/kernel/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	*

seed *
T0*&
_class
loc:@logits/dense/kernel*
seed2 

4logits/dense/kernel/Initializer/truncated_normal/mulMul@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormal7logits/dense/kernel/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	
ö
0logits/dense/kernel/Initializer/truncated_normalAdd4logits/dense/kernel/Initializer/truncated_normal/mul5logits/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes
:	*
T0*&
_class
loc:@logits/dense/kernel
ą
logits/dense/kernel
VariableV2*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	*
dtype0*
_output_shapes
:	
ć
logits/dense/kernel/AssignAssignlogits/dense/kernel0logits/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel*
validate_shape(*
_output_shapes
:	

logits/dense/kernel/readIdentitylogits/dense/kernel*
_output_shapes
:	*
T0*&
_class
loc:@logits/dense/kernel

#logits/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*$
_class
loc:@logits/dense/bias*
valueB*    
Ł
logits/dense/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@logits/dense/bias*
	container *
shape:
Î
logits/dense/bias/AssignAssignlogits/dense/bias#logits/dense/bias/Initializer/zeros*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(

logits/dense/bias/readIdentitylogits/dense/bias*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:
˝
Training/logits/dense/MatMulMatMul#Training/logits/dropout/dropout/mullogits/dense/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
§
Training/logits/dense/BiasAddBiasAddTraining/logits/dense/MatMullogits/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
Training/logits/Reshape/shapeConst*!
valueB"   ˙˙˙˙   *
dtype0*
_output_shapes
:
¤
Training/logits/ReshapeReshapeTraining/logits/dense/BiasAddTraining/logits/Reshape/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

Training/logits_prediction/mulMulTraining/logits/ReshapeTraining/ExpandDims_1*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
1Training/logits_prediction/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
Training/logits_prediction/MeanMeanTraining/logits_prediction/mul1Training/logits_prediction/Mean/reduction_indices*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0

ETraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

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
î
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
ˇ
Training/accuracy_stats/ArgMaxArgMaxTraining/logits_prediction/Mean(Training/accuracy_stats/ArgMax/dimension*

Tidx0*
T0*
output_type0	*
_output_shapes
:

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
Training/accuracy_stats/ConstConst*
valueB: *
dtype0*
_output_shapes
:

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
Ł
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
ľ
Training/accuracy/predictionsArgMaxTraining/logits_prediction/Mean'Training/accuracy/predictions/dimension*
T0*
output_type0	*
_output_shapes
:*

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
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ň
Training/global_step/AssignAssignTraining/global_step"Training/global_step/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*'
_class
loc:@Training/global_step

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
B :ô*
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
"Training/ExponentialDecay/Cast_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *ěQx?

!Training/ExponentialDecay/truedivRealDivTraining/ExponentialDecay/Cast Training/ExponentialDecay/Cast_1*
_output_shapes
: *
T0

Training/ExponentialDecay/PowPow"Training/ExponentialDecay/Cast_2/x!Training/ExponentialDecay/truediv*
T0*
_output_shapes
: 

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
 *  ?*
dtype0*
_output_shapes
: 

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
Ö
Training/gradients/f_count_1EnterTraining/gradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context

Training/gradients/MergeMergeTraining/gradients/f_count_1 Training/gradients/NextIteration*
N*
_output_shapes
: : *
T0

Training/gradients/SwitchSwitchTraining/gradients/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*
_output_shapes
: : 

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
ú
 Training/gradients/NextIterationNextIterationTraining/gradients/Add[^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2e^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2*
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
ë
Training/gradients/b_count_1EnterTraining/gradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

Training/gradients/Merge_1MergeTraining/gradients/b_count_1"Training/gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 

Training/gradients/GreaterEqualGreaterEqualTraining/gradients/Merge_1%Training/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
ň
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

Training/gradients/Switch_1SwitchTraining/gradients/Merge_1Training/gradients/b_count_2*
_output_shapes
: : *
T0

Training/gradients/SubSubTraining/gradients/Switch_1:1%Training/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
ę
"Training/gradients/NextIteration_1NextIterationTraining/gradients/Sub|^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
b
Training/gradients/b_count_3ExitTraining/gradients/Switch_1*
T0*
_output_shapes
: 

FTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
ß
@Training/gradients/Training/cross_entropy_loss/Mean_grad/ReshapeReshapeTraining/gradients/FillFTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

>Training/gradients/Training/cross_entropy_loss/Mean_grad/ConstConst*
valueB:*
dtype0*
_output_shapes
:
ţ
=Training/gradients/Training/cross_entropy_loss/Mean_grad/TileTile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Reshape>Training/gradients/Training/cross_entropy_loss/Mean_grad/Const*
_output_shapes
:*

Tmultiples0*
T0

@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  A
ń
@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivRealDiv=Training/gradients/Training/cross_entropy_loss/Mean_grad/Tile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1*
T0*
_output_shapes
:
ş
Training/gradients/zeros_like	ZerosLikeeTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
ć
Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradienteTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
Ö
Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
Ć
Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:

=Training/gradients/Training/logits_prediction/Mean_grad/ShapeShapeTraining/logits_prediction/mul*
_output_shapes
:*
T0*
out_type0
Đ
<Training/gradients/Training/logits_prediction/Mean_grad/SizeConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ś
;Training/gradients/Training/logits_prediction/Mean_grad/addAdd1Training/logits_prediction/Mean/reduction_indices<Training/gradients/Training/logits_prediction/Mean_grad/Size*
_output_shapes
: *
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape
ľ
;Training/gradients/Training/logits_prediction/Mean_grad/modFloorMod;Training/gradients/Training/logits_prediction/Mean_grad/add<Training/gradients/Training/logits_prediction/Mean_grad/Size*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
: 
Ô
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1Const*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
valueB *
dtype0*
_output_shapes
: 
×
CTraining/gradients/Training/logits_prediction/Mean_grad/range/startConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 
×
CTraining/gradients/Training/logits_prediction/Mean_grad/range/deltaConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 

=Training/gradients/Training/logits_prediction/Mean_grad/rangeRangeCTraining/gradients/Training/logits_prediction/Mean_grad/range/start<Training/gradients/Training/logits_prediction/Mean_grad/SizeCTraining/gradients/Training/logits_prediction/Mean_grad/range/delta*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
:*

Tidx0
Ö
BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/valueConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Î
<Training/gradients/Training/logits_prediction/Mean_grad/FillFill?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/value*
_output_shapes
: *
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*

index_type0
Ř
ETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchDynamicStitch=Training/gradients/Training/logits_prediction/Mean_grad/range;Training/gradients/Training/logits_prediction/Mean_grad/mod=Training/gradients/Training/logits_prediction/Mean_grad/Shape<Training/gradients/Training/logits_prediction/Mean_grad/Fill*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape
Ő
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/yConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ô
?Training/gradients/Training/logits_prediction/Mean_grad/MaximumMaximumETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/y*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
@Training/gradients/Training/logits_prediction/Mean_grad/floordivFloorDiv=Training/gradients/Training/logits_prediction/Mean_grad/Shape?Training/gradients/Training/logits_prediction/Mean_grad/Maximum*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
:
Ă
?Training/gradients/Training/logits_prediction/Mean_grad/ReshapeReshapeTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
Ą
<Training/gradients/Training/logits_prediction/Mean_grad/TileTile?Training/gradients/Training/logits_prediction/Mean_grad/Reshape@Training/gradients/Training/logits_prediction/Mean_grad/floordiv*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0

?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2ShapeTraining/logits_prediction/mul*
T0*
out_type0*
_output_shapes
:

?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3Const*
valueB"      *
dtype0*
_output_shapes
:

=Training/gradients/Training/logits_prediction/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

<Training/gradients/Training/logits_prediction/Mean_grad/ProdProd?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2=Training/gradients/Training/logits_prediction/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

?Training/gradients/Training/logits_prediction/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1Prod?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3?Training/gradients/Training/logits_prediction/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
ň
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1Maximum>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/y*
_output_shapes
: *
T0
đ
BTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1FloorDiv<Training/gradients/Training/logits_prediction/Mean_grad/ProdATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
¸
<Training/gradients/Training/logits_prediction/Mean_grad/CastCastBTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
ü
?Training/gradients/Training/logits_prediction/Mean_grad/truedivRealDiv<Training/gradients/Training/logits_prediction/Mean_grad/Tile<Training/gradients/Training/logits_prediction/Mean_grad/Cast*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

<Training/gradients/Training/logits_prediction/mul_grad/ShapeShapeTraining/logits/Reshape*
T0*
out_type0*
_output_shapes
:

>Training/gradients/Training/logits_prediction/mul_grad/Shape_1ShapeTraining/ExpandDims_1*
T0*
out_type0*
_output_shapes
:
 
LTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<Training/gradients/Training/logits_prediction/mul_grad/Shape>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ď
:Training/gradients/Training/logits_prediction/mul_grad/MulMul?Training/gradients/Training/logits_prediction/Mean_grad/truedivTraining/ExpandDims_1*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

:Training/gradients/Training/logits_prediction/mul_grad/SumSum:Training/gradients/Training/logits_prediction/mul_grad/MulLTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

>Training/gradients/Training/logits_prediction/mul_grad/ReshapeReshape:Training/gradients/Training/logits_prediction/mul_grad/Sum<Training/gradients/Training/logits_prediction/mul_grad/Shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
<Training/gradients/Training/logits_prediction/mul_grad/Mul_1MulTraining/logits/Reshape?Training/gradients/Training/logits_prediction/Mean_grad/truediv*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

<Training/gradients/Training/logits_prediction/mul_grad/Sum_1Sum<Training/gradients/Training/logits_prediction/mul_grad/Mul_1NTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1Reshape<Training/gradients/Training/logits_prediction/mul_grad/Sum_1>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ó
GTraining/gradients/Training/logits_prediction/mul_grad/tuple/group_depsNoOp?^Training/gradients/Training/logits_prediction/mul_grad/ReshapeA^Training/gradients/Training/logits_prediction/mul_grad/Reshape_1
î
OTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/logits_prediction/mul_grad/ReshapeH^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*Q
_classG
ECloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape
ô
QTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1H^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

5Training/gradients/Training/logits/Reshape_grad/ShapeShapeTraining/logits/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:

7Training/gradients/Training/logits/Reshape_grad/ReshapeReshapeOTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency5Training/gradients/Training/logits/Reshape_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
Ĺ
ATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradBiasAddGrad7Training/gradients/Training/logits/Reshape_grad/Reshape*
data_formatNHWC*
_output_shapes
:*
T0
Ě
FTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_depsNoOp8^Training/gradients/Training/logits/Reshape_grad/ReshapeB^Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad
Ú
NTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencyIdentity7Training/gradients/Training/logits/Reshape_grad/ReshapeG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@Training/gradients/Training/logits/Reshape_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ă
PTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1IdentityATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

;Training/gradients/Training/logits/dense/MatMul_grad/MatMulMatMulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencylogits/dense/kernel/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 

=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1MatMul#Training/logits/dropout/dropout/mulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	*
transpose_a(*
transpose_b( 
Ë
ETraining/gradients/Training/logits/dense/MatMul_grad/tuple/group_depsNoOp<^Training/gradients/Training/logits/dense/MatMul_grad/MatMul>^Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1
á
MTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependencyIdentity;Training/gradients/Training/logits/dense/MatMul_grad/MatMulF^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
OTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1Identity=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1F^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*
T0*P
_classF
DBloc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1*
_output_shapes
:	
¤
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeShape#Training/logits/dropout/dropout/div*
T0*
out_type0*
_output_shapes
:
¨
CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1Shape%Training/logits/dropout/dropout/Floor*
_output_shapes
:*
T0*
out_type0
Ż
QTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ď
?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulMulMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency%Training/logits/dropout/dropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumSum?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulQTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

CTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
ď
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1Mul#Training/logits/dropout/dropout/divMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
 
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1STraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

ETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
LTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1
˙
TTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

VTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

ATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeShapeTraining/rnn_model/Reshape*
_output_shapes
:*
T0*
out_type0

CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Ż
QTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

CTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivRealDivTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency)Training/logits/dropout/dropout/keep_prob*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

?Training/gradients/Training/logits/dropout/dropout/div_grad/SumSumCTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivQTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

CTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/div_grad/SumATraining/gradients/Training/logits/dropout/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

?Training/gradients/Training/logits/dropout/dropout/div_grad/NegNegTraining/rnn_model/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1RealDiv?Training/gradients/Training/logits/dropout/dropout/div_grad/Neg)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2RealDivETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

?Training/gradients/Training/logits/dropout/dropout/div_grad/mulMulTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

ATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1Sum?Training/gradients/Training/logits/dropout/dropout/div_grad/mulSTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

ETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
â
LTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/div_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1
˙
TTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
VTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1*
_output_shapes
: 
¤
8Training/gradients/Training/rnn_model/Reshape_grad/ShapeShape,Training/rnn_model/recurrent/rnn/transpose_1*
T0*
out_type0*
_output_shapes
:

:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeReshapeTTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency8Training/gradients/Training/rnn_model/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
VTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutationInvertPermutation)Training/rnn_model/recurrent/rnn/concat_2*
T0*
_output_shapes
:
ł
NTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose	Transpose:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeVTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutation*
Tperm0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
đ
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
sourceTraining/gradients*
_output_shapes

:: 

{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity-Training/rnn_model/recurrent/rnn/while/Exit_2^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
_output_shapes
: 
Ć
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV37Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeNTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
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
Ś
Training/gradients/zerosFill(Training/gradients/zeros/shape_as_tensorTraining/gradients/zeros/Const*
T0*

index_type0*
_output_shapes
:	
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
Ź
Training/gradients/zeros_1Fill*Training/gradients/zeros_1/shape_as_tensor Training/gradients/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	

LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitEnterTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
 
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitEnterTraining/gradients/zeros*
parallel_iterations *
_output_shapes
:	*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
˘
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitEnterTraining/gradients/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ź
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
ľ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIteration*
N*!
_output_shapes
:	: *
T0
ľ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	: 
Ď
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: : 
Ż
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch

_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
_output_shapes
: *
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch

aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
á
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch**
_output_shapes
:	:	
Ż
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch
Ł
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
_output_shapes
:	*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch
§
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
_output_shapes
:	*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch
á
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchTraining/gradients/b_count_2**
_output_shapes
:	:	*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch
Ż
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch
Ł
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	
§
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	
Ő
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_2_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
Ţ
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_3_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency*
T0*
_output_shapes
:	
Ţ
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_4_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency*
_output_shapes
:	*
T0

Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnteraTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
sourceTraining/gradients*
_output_shapes

:: 
š
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
ä
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
Â
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:	

zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*
	elem_type0*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1*

stack_name *
_output_shapes
:

zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context

Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1^Training/gradients/Add*
_output_shapes
: *
swap_memory(*
T0
×
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
: *
	elem_type0
ˇ
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerZ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2d^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2\^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
Ö
sTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpb^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1u^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
§
{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentitytTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*
_class}
{yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
_output_shapes
:	
č
}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
Ě
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
ś
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
Ô
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	

NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like*
T0*
_output_shapes
:	
ç
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/ConstConst*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ź
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_accStackV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Const*
	elem_type0
*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*

stack_name *
_output_shapes
:
Ě
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ĺ
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2StackPushV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Enter3Training/rnn_model/recurrent/rnn/while/GreaterEqual^Training/gradients/Add*
T0
*
_output_shapes
:*
swap_memory(

YTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2
StackPopV2_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:*
	elem_type0

ę
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	

XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
¤
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
_output_shapes
:	
Ş
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
_output_shapes
:	*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
Ě
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
ś
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
Ô
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/Const*
_output_shapes
:	*
T0*

index_type0

NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like*
T0*
_output_shapes
:	

PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	

XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1
¤
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
_output_shapes
:	
Ş
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
_output_shapes
:	*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1
Ę
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"      
´
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
Î
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_likeFill`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorVTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	
Ş
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like*
T0*
_output_shapes
:	
Ź
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*
_output_shapes
:	
ţ
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_depsNoOpM^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1

^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependencyIdentityLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectW^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
T0*_
_classU
SQloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select*
_output_shapes
:	
˘
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1IdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1W^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1*
_output_shapes
:	
ý
Training/gradients/AddNAddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
N*
_output_shapes
:	
ű
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulMulTraining/gradients/AddN]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*
_output_shapes
:	
ď
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Č
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Const*
	elem_type0*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*

stack_name *
_output_shapes
:
Ô
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ö
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1^Training/gradients/Add*
T0*
_output_shapes
:	*
swap_memory(

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	*
	elem_type0
ň
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
˙
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1MulTraining/gradients/AddN_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	
ô
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/ConstConst*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ď
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Const*
	elem_type0*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*

stack_name *
_output_shapes
:
Ř
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ý
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2^Training/gradients/Add*
_output_shapes
:	*
swap_memory(*
T0

_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	*
	elem_type0
ö
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1
ş
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul*
_output_shapes
:	
Ŕ
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
_output_shapes
:	*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1

WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIterationNextIteration}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
_output_shapes
: *
T0
á
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency*
_output_shapes
:	*
T0
Ř
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1*
_output_shapes
:	*
T0
÷
Training/gradients/AddN_1AddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGrad*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
N*
_output_shapes
:	

_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_depsNoOp^Training/gradients/AddN_1
˙
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependencyIdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	

iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1IdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	
Ç
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulMulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2*
_output_shapes
:	*
T0
ç
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/ConstConst*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ž
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_accStackV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Const*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*

stack_name *
_output_shapes
:*
	elem_type0
Đ
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ě
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2StackPushV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Enter1Training/rnn_model/recurrent/rnn/while/Identity_3^Training/gradients/Add*
_output_shapes
:	*
swap_memory(*
T0

[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2
StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
:	
î
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ë
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1MulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	
đ
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/ConstConst*
dtype0*
_output_shapes
: *K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*
valueB :
˙˙˙˙˙˙˙˙˙
É
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Const*K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
Ô
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
×
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Enter8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid^Training/gradients/Add*
T0*
_output_shapes
:	*
swap_memory(

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	*
	elem_type0
ň
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_depsNoOpQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1
˛
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependencyIdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul*
_output_shapes
:	
¸
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1IdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1*
_output_shapes
:	
Í
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2*
_output_shapes
:	*
T0
í
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/ConstConst*H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ć
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Const*H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
Ô
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ô
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Enter5Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh^Training/gradients/Add*
T0*
_output_shapes
:	*
swap_memory(

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
:	
ň
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Ń
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1MuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2*
_output_shapes
:	*
T0
ô
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/ConstConst*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ď
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Const*
	elem_type0*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:
Ř
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Ý
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1^Training/gradients/Add*
T0*
_output_shapes
:	*
swap_memory(

_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
:	
ö
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1
ş
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul*
_output_shapes
:	
Ŕ
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1*
_output_shapes
:	
Ű
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency*
_output_shapes
:	*
T0

Training/gradients/AddN_2AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencygTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
N*
_output_shapes
:	
á
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency*
_output_shapes
:	*
T0
Ö
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
ź
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
°
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1Const^Training/gradients/Sub*
dtype0*
_output_shapes
: *
valueB 
â
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ů
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumSum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradbTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
˝
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeReshapePTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:	
Ý
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1Sum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGraddTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ş
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1ReshapeRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_depsNoOpU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1
ş
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependencyIdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape*
_output_shapes
:	
ˇ
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency_1IdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1*
_output_shapes
: 
­
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIterationNextIterationTraining/gradients/AddN_2*
T0*
_output_shapes
:	
ü
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatConcatV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradeTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGrad[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/Const*
T0*
N*
_output_shapes
:	*

Tidx0
ś
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
˙
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:
 
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_depsNoOp]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat
Ä
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
_output_shapes
:	
Đ
kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identity\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*o
_classe
caloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
ů
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulMatMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/Enter*
T0*
_output_shapes
:	*
transpose_a( *
transpose_b(
Ć
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1MatMulcTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
*
transpose_a(
ő
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ô
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Const*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat*

stack_name *
_output_shapes
:*
	elem_type0
ŕ
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
â
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat^Training/gradients/Add*
T0*
_output_shapes
:	*
swap_memory(
§
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	*
	elem_type0
ţ
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_depsNoOpW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulY^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1
Ä
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependencyIdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMula^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul
Ë
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1* 
_output_shapes
:

Ť
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueB*    *
dtype0*
_output_shapes	
:
ň
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1Enter\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes	
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ţ
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Merge^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:: 

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/SwitchSwitch^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Training/gradients/b_count_2*"
_output_shapes
::*
T0
Ő
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/AddAdd_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch:1kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:
÷
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes	
:
ë
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3Exit]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:
°
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Ż
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/RankConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
­
STraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modFloorModUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
ż
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
Á
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1Const^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"      

\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetConcatOffsetSTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
´
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceSlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes
:	
ş
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1SlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffset:1WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes
:	

`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_depsNoOpV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceX^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1
Â
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slicea^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice*
_output_shapes
:	
Č
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1IdentityWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
T0*j
_class`
^\loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1*
_output_shapes
:	
´
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
*    *
dtype0* 
_output_shapes
:

ő
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1Enter[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
ŕ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Merge]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIteration*
N*"
_output_shapes
:
: *
T0

\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/SwitchSwitch]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Training/gradients/b_count_2*
T0*,
_output_shapes
:
:

×
YTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/AddAdd^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch:1jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:

ú
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationYTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:

î
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3Exit\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:

§
rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^Training/gradients/Sub*
_output_shapes

:: *Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
sourceTraining/gradients
°
xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
Ű
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
ß
nTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1s^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter
ú
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencynTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 

Training/gradients/AddN_3AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyjTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes
:	*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select
Ł
^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
dtype0*
_output_shapes
: *
valueB
 *    
ń
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
ß
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 

_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Training/gradients/b_count_2*
_output_shapes
: : *
T0
Ý
\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddaTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
ö
fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
ę
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
_output_shapes
: *
T0
­
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIterationNextIterationTraining/gradients/AddN_3*
_output_shapes
:	*
T0
ž
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3.Training/rnn_model/recurrent/rnn/TensorArray_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
sourceTraining/gradients*
_output_shapes

:: 
ý
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
_output_shapes
: 
Ř
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV39Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:*
dtype0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOp^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3a^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3

Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*
_class
loc:@Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*s
_classi
geloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
ˇ
TTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutationInvertPermutation'Training/rnn_model/recurrent/rnn/concat*
_output_shapes
:*
T0

LTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose	TransposeTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyTTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutation*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0

:Training/gradients/Training/cnn_model/Reshape_2_grad/ShapeShapeTraining/cnn_model/dense/Relu*
T0*
out_type0*
_output_shapes
:

<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeReshapeLTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose:Training/gradients/Training/cnn_model/Reshape_2_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradReluGrad<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeTraining/cnn_model/dense/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
DTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradBiasAddGrad>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0
Ů
ITraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_depsNoOpE^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad?^Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad
ď
QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
đ
STraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1IdentityDTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
T0*W
_classM
KIloc:@Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:

>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulMatMulQTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencycnn_model/dense/kernel/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 

@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1MatMulTraining/cnn_model/Reshape_1QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
Ô
HTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_depsNoOp?^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulA^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1
í
PTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulI^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul
ë
RTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1I^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1* 
_output_shapes
:

°
:Training/gradients/Training/cnn_model/Reshape_1_grad/ShapeShape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool*
T0*
out_type0*
_output_shapes
:

<Training/gradients/Training/cnn_model/Reshape_1_grad/ReshapeReshapePTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency:Training/gradients/Training/cnn_model/Reshape_1_grad/Shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu6Training/cnn_model/convolution/max_pooling2d_4/MaxPool<Training/gradients/Training/cnn_model/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
STraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

XTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad
ł
`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
bTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
˙
MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
Ľ
LTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:

ZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_4/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ü
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
:

WTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput
Ë
_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput
Ç
aTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*(
_output_shapes
:
˝
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu6Training/cnn_model/convolution/max_pooling2d_3/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME

MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

*
T0
î
STraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

XTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad
ł
`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad
Ź
bTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
˙
MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Ľ
LTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ConstConst*
dtype0*
_output_shapes
:*%
valueB"      @      

ZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_3/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ű
[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:@*
	dilations


WTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput
Ę
_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

@*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput
Ć
aTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@
ź
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu6Training/cnn_model/convolution/max_pooling2d_2/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
í
STraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@

XTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad
˛
`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad
Ť
bTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:@*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGrad
˙
MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
Ľ
LTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ConstConst*%
valueB"          @   *
dtype0*
_output_shapes
:

ZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_2/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ú
[Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_1/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

WTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput
Ę
_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ĺ
aTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
ź
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu6Training/cnn_model/convolution/max_pooling2d_1/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( 

MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( 
í
STraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

XTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad
˛
`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( 
Ť
bTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
: *
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGrad
ý
MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeNShapeN4Training/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Ľ
LTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:

ZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_1/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ř
[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter4Training/cnn_model/convolution/max_pooling2d/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: *
	dilations
*
T0

WTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput
Ę
_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙((
Ĺ
aTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
ś
XTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu4Training/cnn_model/convolution/max_pooling2d/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

KTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradReluGradXTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
é
QTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradBiasAddGradKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

VTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_depsNoOpR^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradL^Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad
Ş
^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependencyIdentityKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
T0*^
_classT
RPloc:@Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ł
`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1IdentityQTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
ß
KTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeNShapeNTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Ł
JTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:

XTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputKTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeN(cnn_model/convolution/conv2d/kernel/read^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations

Ř
YTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTraining/cnn_model/ReshapeJTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Const^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

UTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_depsNoOpZ^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterY^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput
Â
]Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependencyIdentityXTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
˝
_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1IdentityYTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*
T0*l
_classb
`^loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:

"Training/beta1_power/initial_valueConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ž
Training/beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape: 
ß
Training/beta1_power/AssignAssignTraining/beta1_power"Training/beta1_power/initial_value*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 

Training/beta1_power/readIdentityTraining/beta1_power*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 

"Training/beta2_power/initial_valueConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *wž?*
dtype0*
_output_shapes
: 
Ž
Training/beta2_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container 
ß
Training/beta2_power/AssignAssignTraining/beta2_power"Training/beta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias

Training/beta2_power/readIdentityTraining/beta2_power*
_output_shapes
: *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
×
:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zerosConst*
dtype0*&
_output_shapes
:*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    
ä
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
ą
/cnn_model/convolution/conv2d/kernel/Adam/AssignAssign(cnn_model/convolution/conv2d/kernel/Adam:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
Ě
-cnn_model/convolution/conv2d/kernel/Adam/readIdentity(cnn_model/convolution/conv2d/kernel/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
Ů
<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
ć
*cnn_model/convolution/conv2d/kernel/Adam_1
VariableV2*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
ˇ
1cnn_model/convolution/conv2d/kernel/Adam_1/AssignAssign*cnn_model/convolution/conv2d/kernel/Adam_1<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:
Đ
/cnn_model/convolution/conv2d/kernel/Adam_1/readIdentity*cnn_model/convolution/conv2d/kernel/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
ť
8cnn_model/convolution/conv2d/bias/Adam/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
Č
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

-cnn_model/convolution/conv2d/bias/Adam/AssignAssign&cnn_model/convolution/conv2d/bias/Adam8cnn_model/convolution/conv2d/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
ş
+cnn_model/convolution/conv2d/bias/Adam/readIdentity&cnn_model/convolution/conv2d/bias/Adam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:
˝
:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
Ę
(cnn_model/convolution/conv2d/bias/Adam_1
VariableV2*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
Ł
/cnn_model/convolution/conv2d/bias/Adam_1/AssignAssign(cnn_model/convolution/conv2d/bias/Adam_1:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
:
ž
-cnn_model/convolution/conv2d/bias/Adam_1/readIdentity(cnn_model/convolution/conv2d/bias/Adam_1*
_output_shapes
:*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
ß
Lcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             
Á
Bcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ó
<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0
č
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
š
1cnn_model/convolution/conv2d_1/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_1/kernel/Adam<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
Ň
/cnn_model/convolution/conv2d_1/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_1/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
á
Ncnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
Ă
Dcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    
Ů
>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0*&
_output_shapes
: 
ę
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
ż
3cnn_model/convolution/conv2d_1/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_1/kernel/Adam_1>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
Ö
1cnn_model/convolution/conv2d_1/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_1/kernel/Adam_1*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
ż
:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    
Ě
(cnn_model/convolution/conv2d_1/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
	container *
shape: 
Ľ
/cnn_model/convolution/conv2d_1/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_1/bias/Adam:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: 
Ŕ
-cnn_model/convolution/conv2d_1/bias/Adam/readIdentity(cnn_model/convolution/conv2d_1/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
Á
<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Î
*cnn_model/convolution/conv2d_1/bias/Adam_1
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
Ť
1cnn_model/convolution/conv2d_1/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_1/bias/Adam_1<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Ä
/cnn_model/convolution/conv2d_1/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_1/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
ß
Lcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   
Á
Bcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ó
<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
: @*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0
č
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
š
1cnn_model/convolution/conv2d_2/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_2/kernel/Adam<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
Ň
/cnn_model/convolution/conv2d_2/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_2/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
á
Ncnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
Ă
Dcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    
Ů
>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0*&
_output_shapes
: @
ę
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
ż
3cnn_model/convolution/conv2d_2/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_2/kernel/Adam_1>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
Ö
1cnn_model/convolution/conv2d_2/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_2/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
ż
:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:@*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    
Ě
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
Ľ
/cnn_model/convolution/conv2d_2/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_2/bias/Adam:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias
Ŕ
-cnn_model/convolution/conv2d_2/bias/Adam/readIdentity(cnn_model/convolution/conv2d_2/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
Á
<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Î
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
Ť
1cnn_model/convolution/conv2d_2/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_2/bias/Adam_1<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias
Ä
/cnn_model/convolution/conv2d_2/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_2/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
ß
Lcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @      *
dtype0*
_output_shapes
:
Á
Bcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    
Ô
<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0*'
_output_shapes
:@
ę
*cnn_model/convolution/conv2d_3/kernel/Adam
VariableV2*
	container *
shape:@*
dtype0*'
_output_shapes
:@*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
ş
1cnn_model/convolution/conv2d_3/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_3/kernel/Adam<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
Ó
/cnn_model/convolution/conv2d_3/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_3/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@
á
Ncnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @      
Ă
Dcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ú
>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0*'
_output_shapes
:@
ě
,cnn_model/convolution/conv2d_3/kernel/Adam_1
VariableV2*
dtype0*'
_output_shapes
:@*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@
Ŕ
3cnn_model/convolution/conv2d_3/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_3/kernel/Adam_1>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(
×
1cnn_model/convolution/conv2d_3/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_3/kernel/Adam_1*'
_output_shapes
:@*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
Á
:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueB*    *
dtype0*
_output_shapes	
:
Î
(cnn_model/convolution/conv2d_3/bias/Adam
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ś
/cnn_model/convolution/conv2d_3/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_3/bias/Adam:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Á
-cnn_model/convolution/conv2d_3/bias/Adam/readIdentity(cnn_model/convolution/conv2d_3/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:
Ă
<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueB*    *
dtype0*
_output_shapes	
:
Đ
*cnn_model/convolution/conv2d_3/bias/Adam_1
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ź
1cnn_model/convolution/conv2d_3/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_3/bias/Adam_1<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:
Ĺ
/cnn_model/convolution/conv2d_3/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_3/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:
ß
Lcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:
Á
Bcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    
Ő
<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/Const*(
_output_shapes
:*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0
ě
*cnn_model/convolution/conv2d_4/kernel/Adam
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:
ť
1cnn_model/convolution/conv2d_4/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_4/kernel/Adam<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:
Ô
/cnn_model/convolution/conv2d_4/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_4/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:
á
Ncnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:
Ă
Dcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    
Ű
>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0*(
_output_shapes
:
î
,cnn_model/convolution/conv2d_4/kernel/Adam_1
VariableV2*
	container *
shape:*
dtype0*(
_output_shapes
:*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
Á
3cnn_model/convolution/conv2d_4/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_4/kernel/Adam_1>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
Ř
1cnn_model/convolution/conv2d_4/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_4/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:
Á
:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueB*    
Î
(cnn_model/convolution/conv2d_4/bias/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias
Ś
/cnn_model/convolution/conv2d_4/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_4/bias/Adam:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:
Á
-cnn_model/convolution/conv2d_4/bias/Adam/readIdentity(cnn_model/convolution/conv2d_4/bias/Adam*
_output_shapes	
:*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias
Ă
<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueB*    
Đ
*cnn_model/convolution/conv2d_4/bias/Adam_1
VariableV2*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ź
1cnn_model/convolution/conv2d_4/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_4/bias/Adam_1<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias
Ĺ
/cnn_model/convolution/conv2d_4/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_4/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:
š
=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
Ł
3cnn_model/dense/kernel/Adam/Initializer/zeros/ConstConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

-cnn_model/dense/kernel/Adam/Initializer/zerosFill=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensor3cnn_model/dense/kernel/Adam/Initializer/zeros/Const*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0* 
_output_shapes
:

ž
cnn_model/dense/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:

÷
"cnn_model/dense/kernel/Adam/AssignAssigncnn_model/dense/kernel/Adam-cnn_model/dense/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel

 cnn_model/dense/kernel/Adam/readIdentitycnn_model/dense/kernel/Adam*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:

ť
?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
Ľ
5cnn_model/dense/kernel/Adam_1/Initializer/zeros/ConstConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

/cnn_model/dense/kernel/Adam_1/Initializer/zerosFill?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor5cnn_model/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0* 
_output_shapes
:

Ŕ
cnn_model/dense/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:

ý
$cnn_model/dense/kernel/Adam_1/AssignAssigncnn_model/dense/kernel/Adam_1/cnn_model/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:

Ł
"cnn_model/dense/kernel/Adam_1/readIdentitycnn_model/dense/kernel/Adam_1*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:

Ł
+cnn_model/dense/bias/Adam/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueB*    *
dtype0*
_output_shapes	
:
°
cnn_model/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:
ę
 cnn_model/dense/bias/Adam/AssignAssigncnn_model/dense/bias/Adam+cnn_model/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:

cnn_model/dense/bias/Adam/readIdentitycnn_model/dense/bias/Adam*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:
Ľ
-cnn_model/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:*'
_class
loc:@cnn_model/dense/bias*
valueB*    
˛
cnn_model/dense/bias/Adam_1
VariableV2*'
_class
loc:@cnn_model/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
đ
"cnn_model/dense/bias/Adam_1/AssignAssigncnn_model/dense/bias/Adam_1-cnn_model/dense/bias/Adam_1/Initializer/zeros*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

 cnn_model/dense/bias/Adam_1/readIdentitycnn_model/dense/bias/Adam_1*
_output_shapes	
:*
T0*'
_class
loc:@cnn_model/dense/bias
Ý
Ornn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      
Ç
Ernn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ů
?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:

â
-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:

ż
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:

Ő
2rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/readIdentity-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:

ß
Qrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
É
Grnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ß
Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zerosFillQrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorGrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:

ä
/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1
VariableV2*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:
*
shared_name 
Ĺ
6rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/AssignAssign/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
Ů
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/readIdentity/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1* 
_output_shapes
:
*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
Ó
Mrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:*
dtype0*
_output_shapes
:
Ă
Crnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
Ě
=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zerosFillMrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorCrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:
Ô
+rnn_model/recurrent/rnn/lstm_cell/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:
˛
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam/AssignAssign+rnn_model/recurrent/rnn/lstm_cell/bias/Adam=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:
Ę
0rnn_model/recurrent/rnn/lstm_cell/bias/Adam/readIdentity+rnn_model/recurrent/rnn/lstm_cell/bias/Adam*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:
Ő
Ornn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:*
dtype0*
_output_shapes
:
Ĺ
Ernn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
Ň
?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:
Ö
-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:
¸
4rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Î
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/readIdentity-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:
ł
:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

0logits/dense/kernel/Adam/Initializer/zeros/ConstConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

*logits/dense/kernel/Adam/Initializer/zerosFill:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensor0logits/dense/kernel/Adam/Initializer/zeros/Const*
T0*&
_class
loc:@logits/dense/kernel*

index_type0*
_output_shapes
:	
ś
logits/dense/kernel/Adam
VariableV2*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	*
dtype0*
_output_shapes
:	
ę
logits/dense/kernel/Adam/AssignAssignlogits/dense/kernel/Adam*logits/dense/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel

logits/dense/kernel/Adam/readIdentitylogits/dense/kernel/Adam*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	
ľ
<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

2logits/dense/kernel/Adam_1/Initializer/zeros/ConstConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

,logits/dense/kernel/Adam_1/Initializer/zerosFill<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor2logits/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*&
_class
loc:@logits/dense/kernel*

index_type0*
_output_shapes
:	
¸
logits/dense/kernel/Adam_1
VariableV2*
	container *
shape:	*
dtype0*
_output_shapes
:	*
shared_name *&
_class
loc:@logits/dense/kernel
đ
!logits/dense/kernel/Adam_1/AssignAssignlogits/dense/kernel/Adam_1,logits/dense/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel

logits/dense/kernel/Adam_1/readIdentitylogits/dense/kernel/Adam_1*
_output_shapes
:	*
T0*&
_class
loc:@logits/dense/kernel

(logits/dense/bias/Adam/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
¨
logits/dense/bias/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@logits/dense/bias*
	container 
Ý
logits/dense/bias/Adam/AssignAssignlogits/dense/bias/Adam(logits/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:

logits/dense/bias/Adam/readIdentitylogits/dense/bias/Adam*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:

*logits/dense/bias/Adam_1/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
Ş
logits/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@logits/dense/bias*
	container *
shape:
ă
logits/dense/bias/Adam_1/AssignAssignlogits/dense/bias/Adam_1*logits/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:

logits/dense/bias/Adam_1/readIdentitylogits/dense/bias/Adam_1*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:
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
 *wž?*
dtype0*
_output_shapes
: 
Z
Training/Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
Í
BTraining/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d/kernel(cnn_model/convolution/conv2d/kernel/Adam*cnn_model/convolution/conv2d/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
use_nesterov( *&
_output_shapes
:
¸
@Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdam	ApplyAdam!cnn_model/convolution/conv2d/bias&cnn_model/convolution/conv2d/bias/Adam(cnn_model/convolution/conv2d/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
use_nesterov( *
_output_shapes
:
Ů
DTraining/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_1/kernel*cnn_model/convolution/conv2d_1/kernel/Adam,cnn_model/convolution/conv2d_1/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
use_nesterov( *&
_output_shapes
: 
Ä
BTraining/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_1/bias(cnn_model/convolution/conv2d_1/bias/Adam*cnn_model/convolution/conv2d_1/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
use_nesterov( *
_output_shapes
: 
Ů
DTraining/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_2/kernel*cnn_model/convolution/conv2d_2/kernel/Adam,cnn_model/convolution/conv2d_2/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
use_nesterov( *&
_output_shapes
: @*
use_locking( 
Ä
BTraining/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_2/bias(cnn_model/convolution/conv2d_2/bias/Adam*cnn_model/convolution/conv2d_2/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
use_nesterov( *
_output_shapes
:@
Ú
DTraining/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_3/kernel*cnn_model/convolution/conv2d_3/kernel/Adam,cnn_model/convolution/conv2d_3/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
use_nesterov( *'
_output_shapes
:@*
use_locking( 
Ĺ
BTraining/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_3/bias(cnn_model/convolution/conv2d_3/bias/Adam*cnn_model/convolution/conv2d_3/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
use_nesterov( *
_output_shapes	
:
Ű
DTraining/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_4/kernel*cnn_model/convolution/conv2d_4/kernel/Adam,cnn_model/convolution/conv2d_4/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
use_nesterov( *(
_output_shapes
:*
use_locking( 
Ĺ
BTraining/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_4/bias(cnn_model/convolution/conv2d_4/bias/Adam*cnn_model/convolution/conv2d_4/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias
ů
5Training/Adam/update_cnn_model/dense/kernel/ApplyAdam	ApplyAdamcnn_model/dense/kernelcnn_model/dense/kernel/Adamcnn_model/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonRTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1*
T0*)
_class
loc:@cnn_model/dense/kernel*
use_nesterov( * 
_output_shapes
:
*
use_locking( 
ë
3Training/Adam/update_cnn_model/dense/bias/ApplyAdam	ApplyAdamcnn_model/dense/biascnn_model/dense/bias/Adamcnn_model/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonSTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0*'
_class
loc:@cnn_model/dense/bias
Ţ
GTraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam	ApplyAdam(rnn_model/recurrent/rnn/lstm_cell/kernel-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3*
use_nesterov( * 
_output_shapes
:
*
use_locking( *
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
Đ
ETraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdam	ApplyAdam&rnn_model/recurrent/rnn/lstm_cell/bias+rnn_model/recurrent/rnn/lstm_cell/bias/Adam-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
use_nesterov( *
_output_shapes	
:*
use_locking( 
ć
2Training/Adam/update_logits/dense/kernel/ApplyAdam	ApplyAdamlogits/dense/kernellogits/dense/kernel/Adamlogits/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonOTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1*
T0*&
_class
loc:@logits/dense/kernel*
use_nesterov( *
_output_shapes
:	*
use_locking( 
Ř
0Training/Adam/update_logits/dense/bias/ApplyAdam	ApplyAdamlogits/dense/biaslogits/dense/bias/Adamlogits/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonPTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*$
_class
loc:@logits/dense/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
ż	
Training/Adam/mulMulTraining/beta1_power/readTraining/Adam/beta1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
_output_shapes
: *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Ç
Training/Adam/AssignAssignTraining/beta1_powerTraining/Adam/mul*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
Á	
Training/Adam/mul_1MulTraining/beta2_power/readTraining/Adam/beta2A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
Ë
Training/Adam/Assign_1AssignTraining/beta2_powerTraining/Adam/mul_1*
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 
ě
Training/Adam/updateNoOp^Training/Adam/Assign^Training/Adam/Assign_1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam

Training/Adam/valueConst^Training/Adam/update*'
_class
loc:@Training/global_step*
value	B :*
dtype0*
_output_shapes
: 
˘
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
Ż
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
ś
Validation/SequenceMask/RangeRangeValidation/SequenceMask/Const_1Validation/SequenceMask/MaxValidation/SequenceMask/Const_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
q
&Validation/SequenceMask/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
˝
"Validation/SequenceMask/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4&Validation/SequenceMask/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0

Validation/SequenceMask/CastCast"Validation/SequenceMask/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0

Validation/SequenceMask/LessLessValidation/SequenceMask/RangeValidation/SequenceMask/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Validation/SequenceMask/Cast_1CastValidation/SequenceMask/Less*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
d
Validation/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
 
Validation/ExpandDims
ExpandDimsValidation/SequenceMask/Cast_1Validation/ExpandDims/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0
{
"Validation/cnn_model/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
Ă
Validation/cnn_model/ReshapeReshape.validation_input_pipeline/batch_join_and_pad:2"Validation/cnn_model/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

5Validation/cnn_model/convolution/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¨
.Validation/cnn_model/convolution/conv2d/Conv2DConv2DValidation/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ă
/Validation/cnn_model/convolution/conv2d/BiasAddBiasAdd.Validation/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

,Validation/cnn_model/convolution/conv2d/ReluRelu/Validation/cnn_model/convolution/conv2d/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ű
6Validation/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool,Validation/cnn_model/convolution/conv2d/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙((*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME

7Validation/cnn_model/convolution/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ć
0Validation/cnn_model/convolution/conv2d_1/Conv2DConv2D6Validation/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( *
	dilations

é
1Validation/cnn_model/convolution/conv2d_1/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( *
T0
Ł
.Validation/cnn_model/convolution/conv2d_1/ReluRelu1Validation/cnn_model/convolution/conv2d_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( 
˙
8Validation/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME

7Validation/cnn_model/convolution/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Č
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
:˙˙˙˙˙˙˙˙˙@
é
1Validation/cnn_model/convolution/conv2d_2/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ł
.Validation/cnn_model/convolution/conv2d_2/ReluRelu1Validation/cnn_model/convolution/conv2d_2/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
˙
8Validation/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_2/Relu*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

@*
T0*
data_formatNHWC*
strides


7Validation/cnn_model/convolution/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
É
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
:˙˙˙˙˙˙˙˙˙


ę
1Validation/cnn_model/convolution/conv2d_3/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙


¤
.Validation/cnn_model/convolution/conv2d_3/ReluRelu1Validation/cnn_model/convolution/conv2d_3/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙



8Validation/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_3/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME

7Validation/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
É
0Validation/cnn_model/convolution/conv2d_4/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
1Validation/cnn_model/convolution/conv2d_4/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
.Validation/cnn_model/convolution/conv2d_4/ReluRelu1Validation/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

8Validation/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_4/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
$Validation/cnn_model/Reshape_1/shapeConst*
valueB"˙˙˙˙ 	  *
dtype0*
_output_shapes
:
Ę
Validation/cnn_model/Reshape_1Reshape8Validation/cnn_model/convolution/max_pooling2d_4/MaxPool$Validation/cnn_model/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
!Validation/cnn_model/dense/MatMulMatMulValidation/cnn_model/Reshape_1cnn_model/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ľ
"Validation/cnn_model/dense/BiasAddBiasAdd!Validation/cnn_model/dense/MatMulcnn_model/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
Validation/cnn_model/dense/ReluRelu"Validation/cnn_model/dense/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
$Validation/cnn_model/Reshape_2/shapeConst*!
valueB"   ˙˙˙˙   *
dtype0*
_output_shapes
:
ľ
Validation/cnn_model/Reshape_2ReshapeValidation/cnn_model/dense/Relu$Validation/cnn_model/Reshape_2/shape*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
i
Validation/SequenceMask_1/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
ł
Validation/SequenceMask_1/MaxMax.validation_input_pipeline/batch_join_and_pad:4Validation/SequenceMask_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
ž
Validation/SequenceMask_1/RangeRange!Validation/SequenceMask_1/Const_1Validation/SequenceMask_1/Max!Validation/SequenceMask_1/Const_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
s
(Validation/SequenceMask_1/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Á
$Validation/SequenceMask_1/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4(Validation/SequenceMask_1/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

Validation/SequenceMask_1/CastCast$Validation/SequenceMask_1/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0

Validation/SequenceMask_1/LessLessValidation/SequenceMask_1/RangeValidation/SequenceMask_1/Cast*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

 Validation/SequenceMask_1/Cast_1CastValidation/SequenceMask_1/Less*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
f
Validation/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ś
Validation/ExpandDims_1
ExpandDims Validation/SequenceMask_1/Cast_1Validation/ExpandDims_1/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
â
(Validation/rnn_model/recurrent/rnn/rangeRange.Validation/rnn_model/recurrent/rnn/range/start'Validation/rnn_model/recurrent/rnn/Rank.Validation/rnn_model/recurrent/rnn/range/delta*

Tidx0*
_output_shapes
:

2Validation/rnn_model/recurrent/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
p
.Validation/rnn_model/recurrent/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ý
)Validation/rnn_model/recurrent/rnn/concatConcatV22Validation/rnn_model/recurrent/rnn/concat/values_0(Validation/rnn_model/recurrent/rnn/range.Validation/rnn_model/recurrent/rnn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Č
,Validation/rnn_model/recurrent/rnn/transpose	TransposeValidation/cnn_model/Reshape_2)Validation/rnn_model/recurrent/rnn/concat*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0

2Validation/rnn_model/recurrent/rnn/sequence_lengthIdentity.validation_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:

:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
dtype0*
_output_shapes
:*
valueB:

@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
˝
;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV2:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0

@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ý
:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
valueB:*
dtype0*
_output_shapes
:

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
dtype0*
_output_shapes
:*
valueB:

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:*
dtype0*
_output_shapes
:

BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ă
=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0

BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
valueB:*
dtype0*
_output_shapes
:

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
valueB:*
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
Ş
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
ś
&Validation/rnn_model/recurrent/rnn/AllAll(Validation/rnn_model/recurrent/rnn/Equal(Validation/rnn_model/recurrent/rnn/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
Â
/Validation/rnn_model/recurrent/rnn/Assert/ConstConst*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 

1Validation/rnn_model/recurrent/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
Ę
7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 

7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
Č
0Validation/rnn_model/recurrent/rnn/Assert/AssertAssert&Validation/rnn_model/recurrent/rnn/All7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0(Validation/rnn_model/recurrent/rnn/stack7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2(Validation/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
Ć
.Validation/rnn_model/recurrent/rnn/CheckSeqLenIdentity2Validation/rnn_model/recurrent/rnn/sequence_length1^Validation/rnn_model/recurrent/rnn/Assert/Assert*
_output_shapes
:*
T0

*Validation/rnn_model/recurrent/rnn/Shape_1Shape,Validation/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:

6Validation/rnn_model/recurrent/rnn/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

8Validation/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

8Validation/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ş
0Validation/rnn_model/recurrent/rnn/strided_sliceStridedSlice*Validation/rnn_model/recurrent/rnn/Shape_16Validation/rnn_model/recurrent/rnn/strided_slice/stack8Validation/rnn_model/recurrent/rnn/strided_slice/stack_18Validation/rnn_model/recurrent/rnn/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
t
*Validation/rnn_model/recurrent/rnn/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
u
*Validation/rnn_model/recurrent/rnn/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
r
0Validation/rnn_model/recurrent/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ű
+Validation/rnn_model/recurrent/rnn/concat_1ConcatV2*Validation/rnn_model/recurrent/rnn/Const_1*Validation/rnn_model/recurrent/rnn/Const_20Validation/rnn_model/recurrent/rnn/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
s
.Validation/rnn_model/recurrent/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
É
(Validation/rnn_model/recurrent/rnn/zerosFill+Validation/rnn_model/recurrent/rnn/concat_1.Validation/rnn_model/recurrent/rnn/zeros/Const*
T0*

index_type0*
_output_shapes
:	
t
*Validation/rnn_model/recurrent/rnn/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
Ç
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
Ç
&Validation/rnn_model/recurrent/rnn/MaxMax.Validation/rnn_model/recurrent/rnn/CheckSeqLen*Validation/rnn_model/recurrent/rnn/Const_4*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
i
'Validation/rnn_model/recurrent/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
Ö
.Validation/rnn_model/recurrent/rnn/TensorArrayTensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*
dtype0*
_output_shapes

:: *
element_shape:	*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*N
tensor_array_name97Validation/rnn_model/recurrent/rnn/dynamic_rnn/output_0
×
0Validation/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*M
tensor_array_name86Validation/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
§
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape,Validation/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:

IValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

CValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeIValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackKValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRangeAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startCValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
¨
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
Ź
*Validation/rnn_model/recurrent/rnn/MaximumMaximum,Validation/rnn_model/recurrent/rnn/Maximum/x&Validation/rnn_model/recurrent/rnn/Max*
T0*
_output_shapes
: 
´
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

.Validation/rnn_model/recurrent/rnn/while/EnterEnter:Validation/rnn_model/recurrent/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
ů
0Validation/rnn_model/recurrent/rnn/while/Enter_1Enter'Validation/rnn_model/recurrent/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context

0Validation/rnn_model/recurrent/rnn/while/Enter_2Enter0Validation/rnn_model/recurrent/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context

0Validation/rnn_model/recurrent/rnn/while/Enter_3Enter:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context

0Validation/rnn_model/recurrent/rnn/while/Enter_4Enter<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ë
.Validation/rnn_model/recurrent/rnn/while/MergeMerge.Validation/rnn_model/recurrent/rnn/while/Enter6Validation/rnn_model/recurrent/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
Ń
0Validation/rnn_model/recurrent/rnn/while/Merge_1Merge0Validation/rnn_model/recurrent/rnn/while/Enter_18Validation/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Ń
0Validation/rnn_model/recurrent/rnn/while/Merge_2Merge0Validation/rnn_model/recurrent/rnn/while/Enter_28Validation/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
Ú
0Validation/rnn_model/recurrent/rnn/while/Merge_3Merge0Validation/rnn_model/recurrent/rnn/while/Enter_38Validation/rnn_model/recurrent/rnn/while/NextIteration_3*
T0*
N*!
_output_shapes
:	: 
Ú
0Validation/rnn_model/recurrent/rnn/while/Merge_4Merge0Validation/rnn_model/recurrent/rnn/while/Enter_48Validation/rnn_model/recurrent/rnn/while/NextIteration_4*
T0*
N*!
_output_shapes
:	: 
ť
-Validation/rnn_model/recurrent/rnn/while/LessLess.Validation/rnn_model/recurrent/rnn/while/Merge3Validation/rnn_model/recurrent/rnn/while/Less/Enter*
T0*
_output_shapes
: 

3Validation/rnn_model/recurrent/rnn/while/Less/EnterEnter0Validation/rnn_model/recurrent/rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Á
/Validation/rnn_model/recurrent/rnn/while/Less_1Less0Validation/rnn_model/recurrent/rnn/while/Merge_15Validation/rnn_model/recurrent/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 

5Validation/rnn_model/recurrent/rnn/while/Less_1/EnterEnter*Validation/rnn_model/recurrent/rnn/Minimum*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
š
3Validation/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd-Validation/rnn_model/recurrent/rnn/while/Less/Validation/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 

1Validation/rnn_model/recurrent/rnn/while/LoopCondLoopCond3Validation/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 

/Validation/rnn_model/recurrent/rnn/while/SwitchSwitch.Validation/rnn_model/recurrent/rnn/while/Merge1Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/while/Merge*
_output_shapes
: : 

1Validation/rnn_model/recurrent/rnn/while/Switch_1Switch0Validation/rnn_model/recurrent/rnn/while/Merge_11Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_1*
_output_shapes
: : 

1Validation/rnn_model/recurrent/rnn/while/Switch_2Switch0Validation/rnn_model/recurrent/rnn/while/Merge_21Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_2*
_output_shapes
: : 

1Validation/rnn_model/recurrent/rnn/while/Switch_3Switch0Validation/rnn_model/recurrent/rnn/while/Merge_31Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_3**
_output_shapes
:	:	

1Validation/rnn_model/recurrent/rnn/while/Switch_4Switch0Validation/rnn_model/recurrent/rnn/while/Merge_41Validation/rnn_model/recurrent/rnn/while/LoopCond**
_output_shapes
:	:	*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_4

1Validation/rnn_model/recurrent/rnn/while/IdentityIdentity1Validation/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 

3Validation/rnn_model/recurrent/rnn/while/Identity_1Identity3Validation/rnn_model/recurrent/rnn/while/Switch_1:1*
_output_shapes
: *
T0

3Validation/rnn_model/recurrent/rnn/while/Identity_2Identity3Validation/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 

3Validation/rnn_model/recurrent/rnn/while/Identity_3Identity3Validation/rnn_model/recurrent/rnn/while/Switch_3:1*
T0*
_output_shapes
:	

3Validation/rnn_model/recurrent/rnn/while/Identity_4Identity3Validation/rnn_model/recurrent/rnn/while/Switch_4:1*
T0*
_output_shapes
:	
¤
.Validation/rnn_model/recurrent/rnn/while/add/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ˇ
,Validation/rnn_model/recurrent/rnn/while/addAdd1Validation/rnn_model/recurrent/rnn/while/Identity.Validation/rnn_model/recurrent/rnn/while/add/y*
T0*
_output_shapes
: 
¸
:Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3TensorArrayReadV3@Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter3Validation/rnn_model/recurrent/rnn/while/Identity_1BValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	

@Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/EnterEnter0Validation/rnn_model/recurrent/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Á
BValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1Enter]Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ü
5Validation/rnn_model/recurrent/rnn/while/GreaterEqualGreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_1;Validation/rnn_model/recurrent/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:

;Validation/rnn_model/recurrent/rnn/while/GreaterEqual/EnterEnter.Validation/rnn_model/recurrent/rnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
´
>Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat/axisConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ľ
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/concatConcatV2:Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV33Validation/rnn_model/recurrent/rnn/while/Identity_4>Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:	

9Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMulMatMul9Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat?Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter*
T0*
_output_shapes
:	*
transpose_a( *
transpose_b( 

?Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context

:Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAddBiasAdd9Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul@Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	

@Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/EnterEnter+rnn_model/recurrent/rnn/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ž
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/ConstConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
¸
BValidation/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dimConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

8Validation/rnn_model/recurrent/rnn/while/lstm_cell/splitSplitBValidation/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim:Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd*
T0*@
_output_shapes.
,:	:	:	:	*
	num_split
ą
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ý
6Validation/rnn_model/recurrent/rnn/while/lstm_cell/addAdd:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:28Validation/rnn_model/recurrent/rnn/while/lstm_cell/add/y*
T0*
_output_shapes
:	
§
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/SigmoidSigmoid6Validation/rnn_model/recurrent/rnn/while/lstm_cell/add*
T0*
_output_shapes
:	
Ř
6Validation/rnn_model/recurrent/rnn/while/lstm_cell/mulMul:Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid3Validation/rnn_model/recurrent/rnn/while/Identity_3*
T0*
_output_shapes
:	
Ť
<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1Sigmoid8Validation/rnn_model/recurrent/rnn/while/lstm_cell/split*
_output_shapes
:	*
T0
Ľ
7Validation/rnn_model/recurrent/rnn/while/lstm_cell/TanhTanh:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:1*
T0*
_output_shapes
:	
ŕ
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_1Mul<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_17Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
T0*
_output_shapes
:	
Ű
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1Add6Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_1*
T0*
_output_shapes
:	
­
<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2Sigmoid:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:3*
T0*
_output_shapes
:	
Ľ
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1Tanh8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*
_output_shapes
:	
â
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2Mul<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_29Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
T0*
_output_shapes
:	
Ř
/Validation/rnn_model/recurrent/rnn/while/SelectSelect5Validation/rnn_model/recurrent/rnn/while/GreaterEqual5Validation/rnn_model/recurrent/rnn/while/Select/Enter8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
Ő
5Validation/rnn_model/recurrent/rnn/while/Select/EnterEnter(Validation/rnn_model/recurrent/rnn/zeros*
is_constant(*
_output_shapes
:	*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
Ř
1Validation/rnn_model/recurrent/rnn/while/Select_1Select5Validation/rnn_model/recurrent/rnn/while/GreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_38Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1
Ř
1Validation/rnn_model/recurrent/rnn/while/Select_2Select5Validation/rnn_model/recurrent/rnn/while/GreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_48Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
ż
LValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3RValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter3Validation/rnn_model/recurrent/rnn/while/Identity_1/Validation/rnn_model/recurrent/rnn/while/Select3Validation/rnn_model/recurrent/rnn/while/Identity_2*
_output_shapes
: *
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2
ó
RValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter.Validation/rnn_model/recurrent/rnn/TensorArray*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ś
0Validation/rnn_model/recurrent/rnn/while/add_1/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
˝
.Validation/rnn_model/recurrent/rnn/while/add_1Add3Validation/rnn_model/recurrent/rnn/while/Identity_10Validation/rnn_model/recurrent/rnn/while/add_1/y*
_output_shapes
: *
T0

6Validation/rnn_model/recurrent/rnn/while/NextIterationNextIteration,Validation/rnn_model/recurrent/rnn/while/add*
_output_shapes
: *
T0

8Validation/rnn_model/recurrent/rnn/while/NextIteration_1NextIteration.Validation/rnn_model/recurrent/rnn/while/add_1*
T0*
_output_shapes
: 
¸
8Validation/rnn_model/recurrent/rnn/while/NextIteration_2NextIterationLValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
Ś
8Validation/rnn_model/recurrent/rnn/while/NextIteration_3NextIteration1Validation/rnn_model/recurrent/rnn/while/Select_1*
_output_shapes
:	*
T0
Ś
8Validation/rnn_model/recurrent/rnn/while/NextIteration_4NextIteration1Validation/rnn_model/recurrent/rnn/while/Select_2*
T0*
_output_shapes
:	

-Validation/rnn_model/recurrent/rnn/while/ExitExit/Validation/rnn_model/recurrent/rnn/while/Switch*
T0*
_output_shapes
: 

/Validation/rnn_model/recurrent/rnn/while/Exit_1Exit1Validation/rnn_model/recurrent/rnn/while/Switch_1*
T0*
_output_shapes
: 

/Validation/rnn_model/recurrent/rnn/while/Exit_2Exit1Validation/rnn_model/recurrent/rnn/while/Switch_2*
T0*
_output_shapes
: 

/Validation/rnn_model/recurrent/rnn/while/Exit_3Exit1Validation/rnn_model/recurrent/rnn/while/Switch_3*
T0*
_output_shapes
:	

/Validation/rnn_model/recurrent/rnn/while/Exit_4Exit1Validation/rnn_model/recurrent/rnn/while/Switch_4*
T0*
_output_shapes
:	

EValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3.Validation/rnn_model/recurrent/rnn/TensorArray/Validation/rnn_model/recurrent/rnn/while/Exit_2*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
_output_shapes
: 
Ä
?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/startConst*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
Ä
?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/deltaConst*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
˙
9Validation/rnn_model/recurrent/rnn/TensorArrayStack/rangeRange?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/startEValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray

GValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3.Validation/rnn_model/recurrent/rnn/TensorArray9Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/Validation/rnn_model/recurrent/rnn/while/Exit_2*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
dtype0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_shape:	
u
*Validation/rnn_model/recurrent/rnn/Const_5Const*
valueB:*
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
ę
*Validation/rnn_model/recurrent/rnn/range_1Range0Validation/rnn_model/recurrent/rnn/range_1/start)Validation/rnn_model/recurrent/rnn/Rank_10Validation/rnn_model/recurrent/rnn/range_1/delta*
_output_shapes
:*

Tidx0

4Validation/rnn_model/recurrent/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
r
0Validation/rnn_model/recurrent/rnn/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 

+Validation/rnn_model/recurrent/rnn/concat_2ConcatV24Validation/rnn_model/recurrent/rnn/concat_2/values_0*Validation/rnn_model/recurrent/rnn/range_10Validation/rnn_model/recurrent/rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
ő
.Validation/rnn_model/recurrent/rnn/transpose_1	TransposeGValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3+Validation/rnn_model/recurrent/rnn/concat_2*
Tperm0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
"Validation/rnn_model/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
ź
Validation/rnn_model/ReshapeReshape.Validation/rnn_model/recurrent/rnn/transpose_1"Validation/rnn_model/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

"Validation/logits/dropout/IdentityIdentityValidation/rnn_model/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ž
Validation/logits/dense/MatMulMatMul"Validation/logits/dropout/Identitylogits/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
Ť
Validation/logits/dense/BiasAddBiasAddValidation/logits/dense/MatMullogits/dense/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
t
Validation/logits/Reshape/shapeConst*!
valueB"   ˙˙˙˙   *
dtype0*
_output_shapes
:
Ş
Validation/logits/ReshapeReshapeValidation/logits/dense/BiasAddValidation/logits/Reshape/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

 Validation/logits_prediction/mulMulValidation/logits/ReshapeValidation/ExpandDims_1*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
3Validation/logits_prediction/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ć
!Validation/logits_prediction/MeanMean Validation/logits_prediction/mul3Validation/logits_prediction/Mean/reduction_indices*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0

GValidation/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

eValidation/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits!Validation/logits_prediction/Mean.validation_input_pipeline/batch_join_and_pad:1*
T0*$
_output_shapes
::*
Tlabels0	
m
#Validation/cross_entropy_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ô
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
˝
 Validation/accuracy_stats/ArgMaxArgMax!Validation/logits_prediction/Mean*Validation/accuracy_stats/ArgMax/dimension*
output_type0	*
_output_shapes
:*

Tidx0*
T0

Validation/accuracy_stats/EqualEqual Validation/accuracy_stats/ArgMax.validation_input_pipeline/batch_join_and_pad:1*
T0	*
_output_shapes
:
{
Validation/accuracy_stats/CastCastValidation/accuracy_stats/Equal*

SrcT0
*
_output_shapes
:*

DstT0
i
Validation/accuracy_stats/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ł
Validation/accuracy_stats/SumSumValidation/accuracy_stats/CastValidation/accuracy_stats/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
}
 Validation/accuracy_stats/Cast_1CastValidation/accuracy_stats/Equal*
_output_shapes
:*

DstT0*

SrcT0

k
!Validation/accuracy_stats/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Š
Validation/accuracy_stats/MeanMean Validation/accuracy_stats/Cast_1!Validation/accuracy_stats/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
k
)Validation/accuracy/predictions/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
ť
Validation/accuracy/predictionsArgMax!Validation/logits_prediction/Mean)Validation/accuracy/predictions/dimension*
output_type0	*
_output_shapes
:*

Tidx0*
T0
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
lossScalarSummary	loss/tags Training/cross_entropy_loss/Mean*
T0*
_output_shapes
: 
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
valueB Blearning_rate*
dtype0*
_output_shapes
: 
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

initNoOp^Training/beta1_power/Assign^Training/beta2_power/Assign^Training/global_step/Assign.^cnn_model/convolution/conv2d/bias/Adam/Assign0^cnn_model/convolution/conv2d/bias/Adam_1/Assign)^cnn_model/convolution/conv2d/bias/Assign0^cnn_model/convolution/conv2d/kernel/Adam/Assign2^cnn_model/convolution/conv2d/kernel/Adam_1/Assign+^cnn_model/convolution/conv2d/kernel/Assign0^cnn_model/convolution/conv2d_1/bias/Adam/Assign2^cnn_model/convolution/conv2d_1/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_1/bias/Assign2^cnn_model/convolution/conv2d_1/kernel/Adam/Assign4^cnn_model/convolution/conv2d_1/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_1/kernel/Assign0^cnn_model/convolution/conv2d_2/bias/Adam/Assign2^cnn_model/convolution/conv2d_2/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_2/bias/Assign2^cnn_model/convolution/conv2d_2/kernel/Adam/Assign4^cnn_model/convolution/conv2d_2/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_2/kernel/Assign0^cnn_model/convolution/conv2d_3/bias/Adam/Assign2^cnn_model/convolution/conv2d_3/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_3/bias/Assign2^cnn_model/convolution/conv2d_3/kernel/Adam/Assign4^cnn_model/convolution/conv2d_3/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_3/kernel/Assign0^cnn_model/convolution/conv2d_4/bias/Adam/Assign2^cnn_model/convolution/conv2d_4/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_4/bias/Assign2^cnn_model/convolution/conv2d_4/kernel/Adam/Assign4^cnn_model/convolution/conv2d_4/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_4/kernel/Assign!^cnn_model/dense/bias/Adam/Assign#^cnn_model/dense/bias/Adam_1/Assign^cnn_model/dense/bias/Assign#^cnn_model/dense/kernel/Adam/Assign%^cnn_model/dense/kernel/Adam_1/Assign^cnn_model/dense/kernel/Assign^logits/dense/bias/Adam/Assign ^logits/dense/bias/Adam_1/Assign^logits/dense/bias/Assign ^logits/dense/kernel/Adam/Assign"^logits/dense/kernel/Adam_1/Assign^logits/dense/kernel/Assign3^rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Assign5^rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Assign.^rnn_model/recurrent/rnn/lstm_cell/bias/Assign5^rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Assign7^rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Assign0^rnn_model/recurrent/rnn/lstm_cell/kernel/Assign

init_1NoOpB^training_input_pipeline/input_producer/limit_epochs/epochs/AssignD^validation_input_pipeline/input_producer/limit_epochs/epochs/Assign
"

group_depsNoOp^init^init_1"íłôâÖ     ĆšŃç	˘~¤ôeťÖAJýŹ
YţX
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
2	
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
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

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
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
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
ě
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

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

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
ref"T
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

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
Ž
FIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint˙˙˙˙˙˙˙˙˙"
	containerstring "
shared_namestring 
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

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

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ô
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
î
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

2	

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

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

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
ľ
PaddingFIFOQueueV2

handle"!
component_types
list(type)(0"
shapeslist(shape)
 ("
capacityint˙˙˙˙˙˙˙˙˙"
	containerstring "
shared_namestring 
	
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

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
cancel_pending_enqueuesbool( 

QueueDequeueManyV2

handle
n

components2component_types"!
component_types
list(type)(0"

timeout_msint˙˙˙˙˙˙˙˙˙
}
QueueEnqueueManyV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint˙˙˙˙˙˙˙˙˙
y
QueueEnqueueV2

handle

components2Tcomponents"
Tcomponents
list(type)(0"

timeout_msint˙˙˙˙˙˙˙˙˙
&
QueueSizeV2

handle
size
Y
RandomShuffle

value"T
output"T"
seedint "
seed2int "	
Ttype
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
value
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

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
	elem_typetype
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( 
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring 
ö
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

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
compression_typestring 
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
element_shapeshape:
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestring
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
Ţ
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
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

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype*1.8.02v1.8.0-0-g93bc2e2072˘Ë
í

,training_input_pipeline/input_producer/ConstConst*

value
B˙	(B./train/dataTrain_1.tfrecordsB./train/dataTrain_2.tfrecordsB./train/dataTrain_3.tfrecordsB./train/dataTrain_4.tfrecordsB./train/dataTrain_5.tfrecordsB./train/dataTrain_6.tfrecordsB./train/dataTrain_7.tfrecordsB./train/dataTrain_8.tfrecordsB./train/dataTrain_9.tfrecordsB./train/dataTrain_10.tfrecordsB./train/dataTrain_11.tfrecordsB./train/dataTrain_12.tfrecordsB./train/dataTrain_13.tfrecordsB./train/dataTrain_14.tfrecordsB./train/dataTrain_15.tfrecordsB./train/dataTrain_16.tfrecordsB./train/dataTrain_17.tfrecordsB./train/dataTrain_18.tfrecordsB./train/dataTrain_19.tfrecordsB./train/dataTrain_20.tfrecordsB./train/dataTrain_21.tfrecordsB./train/dataTrain_22.tfrecordsB./train/dataTrain_23.tfrecordsB./train/dataTrain_24.tfrecordsB./train/dataTrain_25.tfrecordsB./train/dataTrain_26.tfrecordsB./train/dataTrain_27.tfrecordsB./train/dataTrain_28.tfrecordsB./train/dataTrain_29.tfrecordsB./train/dataTrain_30.tfrecordsB./train/dataTrain_31.tfrecordsB./train/dataTrain_32.tfrecordsB./train/dataTrain_33.tfrecordsB./train/dataTrain_34.tfrecordsB./train/dataTrain_35.tfrecordsB./train/dataTrain_36.tfrecordsB./train/dataTrain_37.tfrecordsB./train/dataTrain_38.tfrecordsB./train/dataTrain_39.tfrecordsB./train/dataTrain_40.tfrecords*
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
š
.training_input_pipeline/input_producer/GreaterGreater+training_input_pipeline/input_producer/Size0training_input_pipeline/input_producer/Greater/y*
T0*
_output_shapes
: 
Ş
3training_input_pipeline/input_producer/Assert/ConstConst*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
˛
;training_input_pipeline/input_producer/Assert/Assert/data_0Const*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
Č
4training_input_pipeline/input_producer/Assert/AssertAssert.training_input_pipeline/input_producer/Greater;training_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
Ĺ
/training_input_pipeline/input_producer/IdentityIdentity,training_input_pipeline/input_producer/Const5^training_input_pipeline/input_producer/Assert/Assert*
T0*
_output_shapes
:(
´
4training_input_pipeline/input_producer/RandomShuffleRandomShuffle/training_input_pipeline/input_producer/Identity*
T0*
_output_shapes
:(*
seed2 *

seed 
{
9training_input_pipeline/input_producer/limit_epochs/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 

:training_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
shared_name *
dtype0	*
_output_shapes
: *
	container *
shape: 
Ű
Atraining_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign:training_input_pipeline/input_producer/limit_epochs/epochs9training_input_pipeline/input_producer/limit_epochs/Const*
use_locking(*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
validate_shape(*
_output_shapes
: 
÷
?training_input_pipeline/input_producer/limit_epochs/epochs/readIdentity:training_input_pipeline/input_producer/limit_epochs/epochs*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 

=training_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo:training_input_pipeline/input_producer/limit_epochs/epochs*
T0	*M
_classC
A?loc:@training_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit
Ú
3training_input_pipeline/input_producer/limit_epochsIdentity4training_input_pipeline/input_producer/RandomShuffle>^training_input_pipeline/input_producer/limit_epochs/CountUpTo*
T0*
_output_shapes
:(
Ť
&training_input_pipeline/input_producerFIFOQueueV2*
shared_name *
capacity *
	container *
_output_shapes
: *
component_types
2*
shapes
: 
ĺ
Atraining_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2&training_input_pipeline/input_producer3training_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms˙˙˙˙˙˙˙˙˙

;training_input_pipeline/input_producer/input_producer_CloseQueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues( 

=training_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2&training_input_pipeline/input_producer*
cancel_pending_enqueues(

:training_input_pipeline/input_producer/input_producer_SizeQueueSizeV2&training_input_pipeline/input_producer*
_output_shapes
: 
˘
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
°
*training_input_pipeline/input_producer/mulMul.training_input_pipeline/input_producer/ToFloat,training_input_pipeline/input_producer/mul/y*
T0*
_output_shapes
: 
ş
?training_input_pipeline/input_producer/fraction_of_32_full/tagsConst*
dtype0*
_output_shapes
: *K
valueBB@ B:training_input_pipeline/input_producer/fraction_of_32_full
Ů
:training_input_pipeline/input_producer/fraction_of_32_fullScalarSummary?training_input_pipeline/input_producer/fraction_of_32_full/tags*training_input_pipeline/input_producer/mul*
T0*
_output_shapes
: 

(training_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
 
$training_input_pipeline/ReaderReadV2ReaderReadV2(training_input_pipeline/TFRecordReaderV2&training_input_pipeline/input_producer*
_output_shapes
: : 

Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 

Ktraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
Ë
training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
š
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Blabel
ş
straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
ž
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ź
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
Ĺ
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
Á
xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ş
itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 

^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample&training_input_pipeline/ReaderReadV2:1training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptystraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0straining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2xtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstKtraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1itraining_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse 
ř
2training_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ú
4training_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ú
4training_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ú
4training_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRaw`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
p
.training_input_pipeline/TFRecordDecoding/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ä
,training_input_pipeline/TFRecordDecoding/subSub^training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample.training_input_pipeline/TFRecordDecoding/sub/y*
T0	*
_output_shapes
: 
Ę
0training_input_pipeline/TFRecordDecoding/ToInt32Cast`training_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0

6training_input_pipeline/TFRecordDecoding/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ď
0training_input_pipeline/TFRecordDecoding/ReshapeReshape2training_input_pipeline/TFRecordDecoding/DecodeRaw6training_input_pipeline/TFRecordDecoding/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ł
0training_input_pipeline/TFRecordDecoding/ToFloatCast0training_input_pipeline/TFRecordDecoding/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

8training_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ő
2training_input_pipeline/TFRecordDecoding/Reshape_1Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_18training_input_pipeline/TFRecordDecoding/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ˇ
2training_input_pipeline/TFRecordDecoding/ToFloat_1Cast2training_input_pipeline/TFRecordDecoding/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

8training_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      
ő
2training_input_pipeline/TFRecordDecoding/Reshape_2Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_28training_input_pipeline/TFRecordDecoding/Reshape_2/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ˇ
2training_input_pipeline/TFRecordDecoding/ToFloat_2Cast2training_input_pipeline/TFRecordDecoding/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0
}
:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
č
8training_input_pipeline/TFRecordDecoding/Reshape_3/shapePack0training_input_pipeline/TFRecordDecoding/ToInt32:training_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
î
2training_input_pipeline/TFRecordDecoding/Reshape_3Reshape4training_input_pipeline/TFRecordDecoding/DecodeRaw_38training_input_pipeline/TFRecordDecoding/Reshape_3/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´*
T0*
Tshape0

?training_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
ö
-training_input_pipeline/TFRecordDecoding/MeanMean0training_input_pipeline/TFRecordDecoding/ToFloat?training_input_pipeline/TFRecordDecoding/Mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
Đ
.training_input_pipeline/TFRecordDecoding/sub_1Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ł
/training_input_pipeline/TFRecordDecoding/SquareSquare.training_input_pipeline/TFRecordDecoding/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Atraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ů
/training_input_pipeline/TFRecordDecoding/Mean_1Mean/training_input_pipeline/TFRecordDecoding/SquareAtraining_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0

-training_input_pipeline/TFRecordDecoding/SqrtSqrt/training_input_pipeline/TFRecordDecoding/Mean_1*
T0*&
_output_shapes
:
w
2training_input_pipeline/TFRecordDecoding/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *˝75
Ď
0training_input_pipeline/TFRecordDecoding/MaximumMaximum-training_input_pipeline/TFRecordDecoding/Sqrt2training_input_pipeline/TFRecordDecoding/Maximum/y*&
_output_shapes
:*
T0
Đ
.training_input_pipeline/TFRecordDecoding/sub_2Sub0training_input_pipeline/TFRecordDecoding/ToFloat-training_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
×
0training_input_pipeline/TFRecordDecoding/truedivRealDiv.training_input_pipeline/TFRecordDecoding/sub_20training_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

*training_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
¤
&training_input_pipeline/ReaderReadV2_1ReaderReadV2*training_input_pipeline/TFRecordReaderV2_1&training_input_pipeline/input_producer*
_output_shapes
: : 

Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Mtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
Í
training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ť
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ź
utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
Ŕ
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ž
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
Ç
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ă
ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ź
ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 

`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_1:1training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tcontext_dense
2		*$
feature_list_dense_types
2*
Ncontext_dense*
Nfeature_list_sparse 
ü
4training_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
r
0training_input_pipeline/TFRecordDecoding_1/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ę
.training_input_pipeline/TFRecordDecoding_1/subSub`training_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_1/sub/y*
_output_shapes
: *
T0	
Î
2training_input_pipeline/TFRecordDecoding_1/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	

8training_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ő
2training_input_pipeline/TFRecordDecoding_1/ReshapeReshape4training_input_pipeline/TFRecordDecoding_1/DecodeRaw8training_input_pipeline/TFRecordDecoding_1/Reshape/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ˇ
2training_input_pipeline/TFRecordDecoding_1/ToFloatCast2training_input_pipeline/TFRecordDecoding_1/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4training_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4training_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4training_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ť
4training_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_1/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
î
:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_1/ToInt32<training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ô
4training_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_1/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Atraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
ü
/training_input_pipeline/TFRecordDecoding_1/MeanMean2training_input_pipeline/TFRecordDecoding_1/ToFloatAtraining_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ö
0training_input_pipeline/TFRecordDecoding_1/sub_1Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
§
1training_input_pipeline/TFRecordDecoding_1/SquareSquare0training_input_pipeline/TFRecordDecoding_1/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Ctraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
˙
1training_input_pipeline/TFRecordDecoding_1/Mean_1Mean1training_input_pipeline/TFRecordDecoding_1/SquareCtraining_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0

/training_input_pipeline/TFRecordDecoding_1/SqrtSqrt1training_input_pipeline/TFRecordDecoding_1/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ő
2training_input_pipeline/TFRecordDecoding_1/MaximumMaximum/training_input_pipeline/TFRecordDecoding_1/Sqrt4training_input_pipeline/TFRecordDecoding_1/Maximum/y*
T0*&
_output_shapes
:
Ö
0training_input_pipeline/TFRecordDecoding_1/sub_2Sub2training_input_pipeline/TFRecordDecoding_1/ToFloat/training_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ý
2training_input_pipeline/TFRecordDecoding_1/truedivRealDiv0training_input_pipeline/TFRecordDecoding_1/sub_22training_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

*training_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
¤
&training_input_pipeline/ReaderReadV2_2ReaderReadV2*training_input_pipeline/TFRecordReaderV2_2&training_input_pipeline/input_producer*
_output_shapes
: : 

Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Mtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
Í
training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ť
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ź
utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Ŕ
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ž
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
Ç
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ă
ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ź
ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
dtype0*
_output_shapes
: *
valueB B 

`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_2:1training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
feature_list_sparse_types
 *'
feature_list_dense_shapes

: : : : *T
_output_shapesB
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
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
ü
4training_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0
ţ
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0
ţ
6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
r
0training_input_pipeline/TFRecordDecoding_2/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
ę
.training_input_pipeline/TFRecordDecoding_2/subSub`training_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_2/sub/y*
T0	*
_output_shapes
: 
Î
2training_input_pipeline/TFRecordDecoding_2/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0

8training_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ő
2training_input_pipeline/TFRecordDecoding_2/ReshapeReshape4training_input_pipeline/TFRecordDecoding_2/DecodeRaw8training_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ˇ
2training_input_pipeline/TFRecordDecoding_2/ToFloatCast2training_input_pipeline/TFRecordDecoding_2/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4training_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ť
4training_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      
ű
4training_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ť
4training_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_2/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
î
:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_2/ToInt32<training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
ô
4training_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_2/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Atraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
ü
/training_input_pipeline/TFRecordDecoding_2/MeanMean2training_input_pipeline/TFRecordDecoding_2/ToFloatAtraining_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ö
0training_input_pipeline/TFRecordDecoding_2/sub_1Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
§
1training_input_pipeline/TFRecordDecoding_2/SquareSquare0training_input_pipeline/TFRecordDecoding_2/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Ctraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
˙
1training_input_pipeline/TFRecordDecoding_2/Mean_1Mean1training_input_pipeline/TFRecordDecoding_2/SquareCtraining_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0

/training_input_pipeline/TFRecordDecoding_2/SqrtSqrt1training_input_pipeline/TFRecordDecoding_2/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ő
2training_input_pipeline/TFRecordDecoding_2/MaximumMaximum/training_input_pipeline/TFRecordDecoding_2/Sqrt4training_input_pipeline/TFRecordDecoding_2/Maximum/y*
T0*&
_output_shapes
:
Ö
0training_input_pipeline/TFRecordDecoding_2/sub_2Sub2training_input_pipeline/TFRecordDecoding_2/ToFloat/training_input_pipeline/TFRecordDecoding_2/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
Ý
2training_input_pipeline/TFRecordDecoding_2/truedivRealDiv0training_input_pipeline/TFRecordDecoding_2/sub_22training_input_pipeline/TFRecordDecoding_2/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

*training_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
¤
&training_input_pipeline/ReaderReadV2_3ReaderReadV2*training_input_pipeline/TFRecordReaderV2_3&training_input_pipeline/input_producer*
_output_shapes
: : 

Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Mtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Í
training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ť
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ź
utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Blength
Ŕ
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ž
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
Ç
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ă
ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ź
ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 

`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(training_input_pipeline/ReaderReadV2_3:1training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyutraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0utraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2ztraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstMtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1ktraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*'
feature_list_dense_shapes

: : : : *
feature_list_sparse_types
 *T
_output_shapesB
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
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
ü
4training_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0
ţ
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
r
0training_input_pipeline/TFRecordDecoding_3/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ę
.training_input_pipeline/TFRecordDecoding_3/subSub`training_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample0training_input_pipeline/TFRecordDecoding_3/sub/y*
T0	*
_output_shapes
: 
Î
2training_input_pipeline/TFRecordDecoding_3/ToInt32Castbtraining_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	

8training_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ő
2training_input_pipeline/TFRecordDecoding_3/ReshapeReshape4training_input_pipeline/TFRecordDecoding_3/DecodeRaw8training_input_pipeline/TFRecordDecoding_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ˇ
2training_input_pipeline/TFRecordDecoding_3/ToFloatCast2training_input_pipeline/TFRecordDecoding_3/Reshape*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4training_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_1:training_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ť
4training_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4training_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_2:training_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4training_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast4training_input_pipeline/TFRecordDecoding_3/Reshape_2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
î
:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack2training_input_pipeline/TFRecordDecoding_3/ToInt32<training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ô
4training_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape6training_input_pipeline/TFRecordDecoding_3/DecodeRaw_3:training_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´*
T0*
Tshape0

Atraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ü
/training_input_pipeline/TFRecordDecoding_3/MeanMean2training_input_pipeline/TFRecordDecoding_3/ToFloatAtraining_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:
Ö
0training_input_pipeline/TFRecordDecoding_3/sub_1Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
§
1training_input_pipeline/TFRecordDecoding_3/SquareSquare0training_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Ctraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
˙
1training_input_pipeline/TFRecordDecoding_3/Mean_1Mean1training_input_pipeline/TFRecordDecoding_3/SquareCtraining_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0

/training_input_pipeline/TFRecordDecoding_3/SqrtSqrt1training_input_pipeline/TFRecordDecoding_3/Mean_1*
T0*&
_output_shapes
:
y
4training_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ő
2training_input_pipeline/TFRecordDecoding_3/MaximumMaximum/training_input_pipeline/TFRecordDecoding_3/Sqrt4training_input_pipeline/TFRecordDecoding_3/Maximum/y*&
_output_shapes
:*
T0
Ö
0training_input_pipeline/TFRecordDecoding_3/sub_2Sub2training_input_pipeline/TFRecordDecoding_3/ToFloat/training_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ý
2training_input_pipeline/TFRecordDecoding_3/truedivRealDiv0training_input_pipeline/TFRecordDecoding_3/sub_22training_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
r
0training_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
ś
=training_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
_output_shapes
: *
component_types

2	*u
shapesk
i:˙˙˙˙˙˙˙˙˙PP: :˙˙˙˙˙˙˙˙˙PP:˙˙˙˙˙˙˙˙˙PP: :˙˙˙˙˙˙˙˙˙´*
shared_name *
capacityŔ*
	container 
ú
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue2training_input_pipeline/TFRecordDecoding/ToFloat_1,training_input_pipeline/TFRecordDecoding/sub0training_input_pipeline/TFRecordDecoding/truediv2training_input_pipeline/TFRecordDecoding/ToFloat_20training_input_pipeline/TFRecordDecoding/ToInt322training_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_1/ToFloat_1.training_input_pipeline/TFRecordDecoding_1/sub2training_input_pipeline/TFRecordDecoding_1/truediv4training_input_pipeline/TFRecordDecoding_1/ToFloat_22training_input_pipeline/TFRecordDecoding_1/ToInt324training_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_2/ToFloat_1.training_input_pipeline/TFRecordDecoding_2/sub2training_input_pipeline/TFRecordDecoding_2/truediv4training_input_pipeline/TFRecordDecoding_2/ToFloat_22training_input_pipeline/TFRecordDecoding_2/ToInt324training_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue4training_input_pipeline/TFRecordDecoding_3/ToFloat_1.training_input_pipeline/TFRecordDecoding_3/sub2training_input_pipeline/TFRecordDecoding_3/truediv4training_input_pipeline/TFRecordDecoding_3/ToFloat_22training_input_pipeline/TFRecordDecoding_3/ToInt324training_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙
ą
Ctraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
ł
Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
¨
Btraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
Ž
2training_input_pipeline/batch_join_and_pad/ToFloatCastBtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Size*

SrcT0*
_output_shapes
: *

DstT0
u
0training_input_pipeline/batch_join_and_pad/mul/yConst*
valueB
 *ÍĚL;*
dtype0*
_output_shapes
: 
ź
.training_input_pipeline/batch_join_and_pad/mulMul2training_input_pipeline/batch_join_and_pad/ToFloat0training_input_pipeline/batch_join_and_pad/mul/y*
T0*
_output_shapes
: 
Ä
Dtraining_input_pipeline/batch_join_and_pad/fraction_of_320_full/tagsConst*P
valueGBE B?training_input_pipeline/batch_join_and_pad/fraction_of_320_full*
dtype0*
_output_shapes
: 
ç
?training_input_pipeline/batch_join_and_pad/fraction_of_320_fullScalarSummaryDtraining_input_pipeline/batch_join_and_pad/fraction_of_320_full/tags.training_input_pipeline/batch_join_and_pad/mul*
_output_shapes
: *
T0
n
,training_input_pipeline/batch_join_and_pad/nConst*
dtype0*
_output_shapes
: *
value	B :

*training_input_pipeline/batch_join_and_padQueueDequeueManyV2=training_input_pipeline/batch_join_and_pad/padding_fifo_queue,training_input_pipeline/batch_join_and_pad/n*

timeout_ms˙˙˙˙˙˙˙˙˙*
_output_shapes
:˙˙˙˙˙˙˙˙˙PP::˙˙˙˙˙˙˙˙˙PP:˙˙˙˙˙˙˙˙˙PP::˙˙˙˙˙˙˙˙˙´*
component_types

2	
ĺ
.validation_input_pipeline/input_producer/ConstConst*
dtype0*
_output_shapes
:*
valueřBőB'./validation/dataValidation_1.tfrecordsB'./validation/dataValidation_2.tfrecordsB'./validation/dataValidation_3.tfrecordsB'./validation/dataValidation_4.tfrecordsB'./validation/dataValidation_5.tfrecordsB'./validation/dataValidation_6.tfrecordsB'./validation/dataValidation_7.tfrecordsB'./validation/dataValidation_8.tfrecordsB'./validation/dataValidation_9.tfrecordsB(./validation/dataValidation_10.tfrecordsB(./validation/dataValidation_11.tfrecordsB(./validation/dataValidation_12.tfrecordsB(./validation/dataValidation_13.tfrecordsB(./validation/dataValidation_14.tfrecordsB(./validation/dataValidation_15.tfrecords
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
ż
0validation_input_pipeline/input_producer/GreaterGreater-validation_input_pipeline/input_producer/Size2validation_input_pipeline/input_producer/Greater/y*
T0*
_output_shapes
: 
Ź
5validation_input_pipeline/input_producer/Assert/ConstConst*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
´
=validation_input_pipeline/input_producer/Assert/Assert/data_0Const*G
value>B< B6string_input_producer requires a non-null input tensor*
dtype0*
_output_shapes
: 
Î
6validation_input_pipeline/input_producer/Assert/AssertAssert0validation_input_pipeline/input_producer/Greater=validation_input_pipeline/input_producer/Assert/Assert/data_0*

T
2*
	summarize
Ë
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
 
<validation_input_pipeline/input_producer/limit_epochs/epochs
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
ă
Cvalidation_input_pipeline/input_producer/limit_epochs/epochs/AssignAssign<validation_input_pipeline/input_producer/limit_epochs/epochs;validation_input_pipeline/input_producer/limit_epochs/Const*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs
ý
Avalidation_input_pipeline/input_producer/limit_epochs/epochs/readIdentity<validation_input_pipeline/input_producer/limit_epochs/epochs*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: 

?validation_input_pipeline/input_producer/limit_epochs/CountUpTo	CountUpTo<validation_input_pipeline/input_producer/limit_epochs/epochs*
_output_shapes
: *
limit*
T0	*O
_classE
CAloc:@validation_input_pipeline/input_producer/limit_epochs/epochs
Ű
5validation_input_pipeline/input_producer/limit_epochsIdentity1validation_input_pipeline/input_producer/Identity@^validation_input_pipeline/input_producer/limit_epochs/CountUpTo*
_output_shapes
:*
T0
­
(validation_input_pipeline/input_producerFIFOQueueV2*
shared_name *
capacity *
	container *
_output_shapes
: *
component_types
2*
shapes
: 
ë
Cvalidation_input_pipeline/input_producer/input_producer_EnqueueManyQueueEnqueueManyV2(validation_input_pipeline/input_producer5validation_input_pipeline/input_producer/limit_epochs*
Tcomponents
2*

timeout_ms˙˙˙˙˙˙˙˙˙

=validation_input_pipeline/input_producer/input_producer_CloseQueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues( 

?validation_input_pipeline/input_producer/input_producer_Close_1QueueCloseV2(validation_input_pipeline/input_producer*
cancel_pending_enqueues(

<validation_input_pipeline/input_producer/input_producer_SizeQueueSizeV2(validation_input_pipeline/input_producer*
_output_shapes
: 
Ś
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
ś
,validation_input_pipeline/input_producer/mulMul0validation_input_pipeline/input_producer/ToFloat.validation_input_pipeline/input_producer/mul/y*
_output_shapes
: *
T0
ž
Avalidation_input_pipeline/input_producer/fraction_of_32_full/tagsConst*M
valueDBB B<validation_input_pipeline/input_producer/fraction_of_32_full*
dtype0*
_output_shapes
: 
ß
<validation_input_pipeline/input_producer/fraction_of_32_fullScalarSummaryAvalidation_input_pipeline/input_producer/fraction_of_32_full/tags,validation_input_pipeline/input_producer/mul*
_output_shapes
: *
T0

*validation_input_pipeline/TFRecordReaderV2TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
Ś
&validation_input_pipeline/ReaderReadV2ReaderReadV2*validation_input_pipeline/TFRecordReaderV2(validation_input_pipeline/input_producer*
_output_shapes
: : 

Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Mvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Í
validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
ť
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ź
uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Ŕ
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
ž
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
Ç
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bsegmentation
Ă
zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ź
kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
dtype0*
_output_shapes
: *
valueB B 

`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample(validation_input_pipeline/ReaderReadV2:1validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyuvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0uvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2zvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ConstMvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/Const_1kvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tcontext_dense
2		*
Ncontext_dense*$
feature_list_dense_types
2*
Nfeature_list_sparse *
Ncontext_sparse 
ü
4validation_input_pipeline/TFRecordDecoding/DecodeRaw	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ţ
6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3	DecodeRawbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
r
0validation_input_pipeline/TFRecordDecoding/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ę
.validation_input_pipeline/TFRecordDecoding/subSub`validation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample0validation_input_pipeline/TFRecordDecoding/sub/y*
T0	*
_output_shapes
: 
Î
2validation_input_pipeline/TFRecordDecoding/ToInt32Castbvalidation_input_pipeline/TFRecordDecoding/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0

8validation_input_pipeline/TFRecordDecoding/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      
ő
2validation_input_pipeline/TFRecordDecoding/ReshapeReshape4validation_input_pipeline/TFRecordDecoding/DecodeRaw8validation_input_pipeline/TFRecordDecoding/Reshape/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ˇ
2validation_input_pipeline/TFRecordDecoding/ToFloatCast2validation_input_pipeline/TFRecordDecoding/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

:validation_input_pipeline/TFRecordDecoding/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4validation_input_pipeline/TFRecordDecoding/Reshape_1Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_1:validation_input_pipeline/TFRecordDecoding/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4validation_input_pipeline/TFRecordDecoding/ToFloat_1Cast4validation_input_pipeline/TFRecordDecoding/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

:validation_input_pipeline/TFRecordDecoding/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      
ű
4validation_input_pipeline/TFRecordDecoding/Reshape_2Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_2:validation_input_pipeline/TFRecordDecoding/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4validation_input_pipeline/TFRecordDecoding/ToFloat_2Cast4validation_input_pipeline/TFRecordDecoding/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1Const*
dtype0*
_output_shapes
: *
value
B :´
î
:validation_input_pipeline/TFRecordDecoding/Reshape_3/shapePack2validation_input_pipeline/TFRecordDecoding/ToInt32<validation_input_pipeline/TFRecordDecoding/Reshape_3/shape/1*
N*
_output_shapes
:*
T0*

axis 
ô
4validation_input_pipeline/TFRecordDecoding/Reshape_3Reshape6validation_input_pipeline/TFRecordDecoding/DecodeRaw_3:validation_input_pipeline/TFRecordDecoding/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Avalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:
ü
/validation_input_pipeline/TFRecordDecoding/MeanMean2validation_input_pipeline/TFRecordDecoding/ToFloatAvalidation_input_pipeline/TFRecordDecoding/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ö
0validation_input_pipeline/TFRecordDecoding/sub_1Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
§
1validation_input_pipeline/TFRecordDecoding/SquareSquare0validation_input_pipeline/TFRecordDecoding/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Cvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indicesConst*
dtype0*
_output_shapes
:*%
valueB"             
˙
1validation_input_pipeline/TFRecordDecoding/Mean_1Mean1validation_input_pipeline/TFRecordDecoding/SquareCvalidation_input_pipeline/TFRecordDecoding/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0

/validation_input_pipeline/TFRecordDecoding/SqrtSqrt1validation_input_pipeline/TFRecordDecoding/Mean_1*
T0*&
_output_shapes
:
y
4validation_input_pipeline/TFRecordDecoding/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ő
2validation_input_pipeline/TFRecordDecoding/MaximumMaximum/validation_input_pipeline/TFRecordDecoding/Sqrt4validation_input_pipeline/TFRecordDecoding/Maximum/y*&
_output_shapes
:*
T0
Ö
0validation_input_pipeline/TFRecordDecoding/sub_2Sub2validation_input_pipeline/TFRecordDecoding/ToFloat/validation_input_pipeline/TFRecordDecoding/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
Ý
2validation_input_pipeline/TFRecordDecoding/truedivRealDiv0validation_input_pipeline/TFRecordDecoding/sub_22validation_input_pipeline/TFRecordDecoding/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

,validation_input_pipeline/TFRecordReaderV2_1TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
Ş
(validation_input_pipeline/ReaderReadV2_1ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_1(validation_input_pipeline/input_producer*
_output_shapes
: : 

Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 

Ovalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ď
validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
˝
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ž
wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Â
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Ŕ
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
valueB	 Brgb*
dtype0*
_output_shapes
: 
É
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ĺ
|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ž
mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
ł
bvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_1:1validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*$
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
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tcontext_dense
2		

6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:3*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
little_endian(*
out_type0

8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
t
2validation_input_pipeline/TFRecordDecoding_1/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
đ
0validation_input_pipeline/TFRecordDecoding_1/subSubbvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_1/sub/y*
T0	*
_output_shapes
: 
Ň
4validation_input_pipeline/TFRecordDecoding_1/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_1/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	

:validation_input_pipeline/TFRecordDecoding_1/Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      
ű
4validation_input_pipeline/TFRecordDecoding_1/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_1/DecodeRaw:validation_input_pipeline/TFRecordDecoding_1/Reshape/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0
ť
4validation_input_pipeline/TFRecordDecoding_1/ToFloatCast4validation_input_pipeline/TFRecordDecoding_1/Reshape*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      

6validation_input_pipeline/TFRecordDecoding_1/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_1/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ż
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      

6validation_input_pipeline/TFRecordDecoding_1/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_1/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ż
6validation_input_pipeline/TFRecordDecoding_1/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_1/Reshape_2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
ô
<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_1/ToInt32>validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ú
6validation_input_pipeline/TFRecordDecoding_1/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_1/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_1/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Cvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:

1validation_input_pipeline/TFRecordDecoding_1/MeanMean4validation_input_pipeline/TFRecordDecoding_1/ToFloatCvalidation_input_pipeline/TFRecordDecoding_1/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ü
2validation_input_pipeline/TFRecordDecoding_1/sub_1Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ť
3validation_input_pipeline/TFRecordDecoding_1/SquareSquare2validation_input_pipeline/TFRecordDecoding_1/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Evalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:

3validation_input_pipeline/TFRecordDecoding_1/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_1/SquareEvalidation_input_pipeline/TFRecordDecoding_1/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0

1validation_input_pipeline/TFRecordDecoding_1/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_1/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_1/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ű
4validation_input_pipeline/TFRecordDecoding_1/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_1/Sqrt6validation_input_pipeline/TFRecordDecoding_1/Maximum/y*
T0*&
_output_shapes
:
Ü
2validation_input_pipeline/TFRecordDecoding_1/sub_2Sub4validation_input_pipeline/TFRecordDecoding_1/ToFloat1validation_input_pipeline/TFRecordDecoding_1/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ă
4validation_input_pipeline/TFRecordDecoding_1/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_1/sub_24validation_input_pipeline/TFRecordDecoding_1/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

,validation_input_pipeline/TFRecordReaderV2_2TFRecordReaderV2*
shared_name *
compression_typeGZIP*
_output_shapes
: *
	container 
Ş
(validation_input_pipeline/ReaderReadV2_2ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_2(validation_input_pipeline/input_producer*
_output_shapes
: : 

Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 

Ovalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1Const*
valueB	 *
dtype0	*
_output_shapes
: 
Ď
validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
dtype0*
_output_shapes
: *
valueB 
˝
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
valueB Blabel*
dtype0*
_output_shapes
: 
ž
wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Â
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Ŕ
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
É
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ĺ
|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ž
mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
valueB B *
dtype0*
_output_shapes
: 
ł
bvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_2:1validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tcontext_dense
2		

6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
t
2validation_input_pipeline/TFRecordDecoding_2/sub/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
đ
0validation_input_pipeline/TFRecordDecoding_2/subSubbvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_2/sub/y*
T0	*
_output_shapes
: 
Ň
4validation_input_pipeline/TFRecordDecoding_2/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_2/ParseSingleSequenceExample/ParseSingleSequenceExample:1*

SrcT0	*
_output_shapes
: *

DstT0

:validation_input_pipeline/TFRecordDecoding_2/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4validation_input_pipeline/TFRecordDecoding_2/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_2/DecodeRaw:validation_input_pipeline/TFRecordDecoding_2/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4validation_input_pipeline/TFRecordDecoding_2/ToFloatCast4validation_input_pipeline/TFRecordDecoding_2/Reshape*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:

6validation_input_pipeline/TFRecordDecoding_2/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_2/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ż
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:

6validation_input_pipeline/TFRecordDecoding_2/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_2/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ż
6validation_input_pipeline/TFRecordDecoding_2/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_2/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
ô
<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_2/ToInt32>validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ú
6validation_input_pipeline/TFRecordDecoding_2/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_2/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_2/Reshape_3/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´*
T0*
Tshape0

Cvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:

1validation_input_pipeline/TFRecordDecoding_2/MeanMean4validation_input_pipeline/TFRecordDecoding_2/ToFloatCvalidation_input_pipeline/TFRecordDecoding_2/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ü
2validation_input_pipeline/TFRecordDecoding_2/sub_1Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ť
3validation_input_pipeline/TFRecordDecoding_2/SquareSquare2validation_input_pipeline/TFRecordDecoding_2/sub_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0

Evalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:

3validation_input_pipeline/TFRecordDecoding_2/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_2/SquareEvalidation_input_pipeline/TFRecordDecoding_2/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0

1validation_input_pipeline/TFRecordDecoding_2/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_2/Mean_1*
T0*&
_output_shapes
:
{
6validation_input_pipeline/TFRecordDecoding_2/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *˝75
Ű
4validation_input_pipeline/TFRecordDecoding_2/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_2/Sqrt6validation_input_pipeline/TFRecordDecoding_2/Maximum/y*
T0*&
_output_shapes
:
Ü
2validation_input_pipeline/TFRecordDecoding_2/sub_2Sub4validation_input_pipeline/TFRecordDecoding_2/ToFloat1validation_input_pipeline/TFRecordDecoding_2/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ă
4validation_input_pipeline/TFRecordDecoding_2/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_2/sub_24validation_input_pipeline/TFRecordDecoding_2/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

,validation_input_pipeline/TFRecordReaderV2_3TFRecordReaderV2*
_output_shapes
: *
	container *
shared_name *
compression_typeGZIP
Ş
(validation_input_pipeline/ReaderReadV2_3ReaderReadV2,validation_input_pipeline/TFRecordReaderV2_3(validation_input_pipeline/input_producer*
_output_shapes
: : 

Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 

Ovalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1Const*
dtype0	*
_output_shapes
: *
valueB	 
Ď
validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptyConst*
valueB *
dtype0*
_output_shapes
: 
˝
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Blabel
ž
wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1Const*
valueB Blength*
dtype0*
_output_shapes
: 
Â
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0Const*
valueB Bdepth*
dtype0*
_output_shapes
: 
Ŕ
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB	 Brgb
É
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2Const*
valueB Bsegmentation*
dtype0*
_output_shapes
: 
Ĺ
|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Const*
valueB Bskeleton*
dtype0*
_output_shapes
: 
Ž
mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_nameConst*
dtype0*
_output_shapes
: *
valueB B 
ł
bvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExampleParseSingleSequenceExample*validation_input_pipeline/ReaderReadV2_3:1validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_missing_assumed_emptywvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_0wvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/context_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_0|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_1|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_2|validation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/feature_list_dense_keys_3Mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ConstOvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/Const_1mvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample/debug_name*
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
@: : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Tcontext_dense
2		

6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:3*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:2*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:4*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3	DecodeRawdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:5*
little_endian(*
out_type0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
t
2validation_input_pipeline/TFRecordDecoding_3/sub/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
đ
0validation_input_pipeline/TFRecordDecoding_3/subSubbvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample2validation_input_pipeline/TFRecordDecoding_3/sub/y*
T0	*
_output_shapes
: 
Ň
4validation_input_pipeline/TFRecordDecoding_3/ToInt32Castdvalidation_input_pipeline/TFRecordDecoding_3/ParseSingleSequenceExample/ParseSingleSequenceExample:1*
_output_shapes
: *

DstT0*

SrcT0	

:validation_input_pipeline/TFRecordDecoding_3/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
ű
4validation_input_pipeline/TFRecordDecoding_3/ReshapeReshape6validation_input_pipeline/TFRecordDecoding_3/DecodeRaw:validation_input_pipeline/TFRecordDecoding_3/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ť
4validation_input_pipeline/TFRecordDecoding_3/ToFloatCast4validation_input_pipeline/TFRecordDecoding_3/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0*

SrcT0

<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:

6validation_input_pipeline/TFRecordDecoding_3/Reshape_1Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_1<validation_input_pipeline/TFRecordDecoding_3/Reshape_1/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ż
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_1Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_1*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*%
valueB"˙˙˙˙P   P      

6validation_input_pipeline/TFRecordDecoding_3/Reshape_2Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_2<validation_input_pipeline/TFRecordDecoding_3/Reshape_2/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ż
6validation_input_pipeline/TFRecordDecoding_3/ToFloat_2Cast6validation_input_pipeline/TFRecordDecoding_3/Reshape_2*

SrcT0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*

DstT0

>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1Const*
value
B :´*
dtype0*
_output_shapes
: 
ô
<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shapePack4validation_input_pipeline/TFRecordDecoding_3/ToInt32>validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape/1*
T0*

axis *
N*
_output_shapes
:
ú
6validation_input_pipeline/TFRecordDecoding_3/Reshape_3Reshape8validation_input_pipeline/TFRecordDecoding_3/DecodeRaw_3<validation_input_pipeline/TFRecordDecoding_3/Reshape_3/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙´

Cvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:

1validation_input_pipeline/TFRecordDecoding_3/MeanMean4validation_input_pipeline/TFRecordDecoding_3/ToFloatCvalidation_input_pipeline/TFRecordDecoding_3/Mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0
Ü
2validation_input_pipeline/TFRecordDecoding_3/sub_1Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
Ť
3validation_input_pipeline/TFRecordDecoding_3/SquareSquare2validation_input_pipeline/TFRecordDecoding_3/sub_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

Evalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indicesConst*%
valueB"             *
dtype0*
_output_shapes
:

3validation_input_pipeline/TFRecordDecoding_3/Mean_1Mean3validation_input_pipeline/TFRecordDecoding_3/SquareEvalidation_input_pipeline/TFRecordDecoding_3/Mean_1/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0

1validation_input_pipeline/TFRecordDecoding_3/SqrtSqrt3validation_input_pipeline/TFRecordDecoding_3/Mean_1*&
_output_shapes
:*
T0
{
6validation_input_pipeline/TFRecordDecoding_3/Maximum/yConst*
valueB
 *˝75*
dtype0*
_output_shapes
: 
Ű
4validation_input_pipeline/TFRecordDecoding_3/MaximumMaximum1validation_input_pipeline/TFRecordDecoding_3/Sqrt6validation_input_pipeline/TFRecordDecoding_3/Maximum/y*
T0*&
_output_shapes
:
Ü
2validation_input_pipeline/TFRecordDecoding_3/sub_2Sub4validation_input_pipeline/TFRecordDecoding_3/ToFloat1validation_input_pipeline/TFRecordDecoding_3/Mean*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
ă
4validation_input_pipeline/TFRecordDecoding_3/truedivRealDiv2validation_input_pipeline/TFRecordDecoding_3/sub_24validation_input_pipeline/TFRecordDecoding_3/Maximum*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
t
2validation_input_pipeline/batch_join_and_pad/ConstConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
¸
?validation_input_pipeline/batch_join_and_pad/padding_fifo_queuePaddingFIFOQueueV2*
_output_shapes
: *
component_types

2	*u
shapesk
i:˙˙˙˙˙˙˙˙˙PP: :˙˙˙˙˙˙˙˙˙PP:˙˙˙˙˙˙˙˙˙PP: :˙˙˙˙˙˙˙˙˙´*
shared_name *
capacityŔ*
	container 

Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueQueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue4validation_input_pipeline/TFRecordDecoding/ToFloat_1.validation_input_pipeline/TFRecordDecoding/sub2validation_input_pipeline/TFRecordDecoding/truediv4validation_input_pipeline/TFRecordDecoding/ToFloat_22validation_input_pipeline/TFRecordDecoding/ToInt324validation_input_pipeline/TFRecordDecoding/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_1/ToFloat_10validation_input_pipeline/TFRecordDecoding_1/sub4validation_input_pipeline/TFRecordDecoding_1/truediv6validation_input_pipeline/TFRecordDecoding_1/ToFloat_24validation_input_pipeline/TFRecordDecoding_1/ToInt326validation_input_pipeline/TFRecordDecoding_1/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_2/ToFloat_10validation_input_pipeline/TFRecordDecoding_2/sub4validation_input_pipeline/TFRecordDecoding_2/truediv6validation_input_pipeline/TFRecordDecoding_2/ToFloat_24validation_input_pipeline/TFRecordDecoding_2/ToInt326validation_input_pipeline/TFRecordDecoding_2/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙

Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3QueueEnqueueV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue6validation_input_pipeline/TFRecordDecoding_3/ToFloat_10validation_input_pipeline/TFRecordDecoding_3/sub4validation_input_pipeline/TFRecordDecoding_3/truediv6validation_input_pipeline/TFRecordDecoding_3/ToFloat_24validation_input_pipeline/TFRecordDecoding_3/ToInt326validation_input_pipeline/TFRecordDecoding_3/Reshape_3*
Tcomponents

2	*

timeout_ms˙˙˙˙˙˙˙˙˙
ľ
Evalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_CloseQueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues( 
ˇ
Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1QueueCloseV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
cancel_pending_enqueues(
Ź
Dvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_SizeQueueSizeV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue*
_output_shapes
: 
˛
4validation_input_pipeline/batch_join_and_pad/ToFloatCastDvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Size*
_output_shapes
: *

DstT0*

SrcT0
w
2validation_input_pipeline/batch_join_and_pad/mul/yConst*
valueB
 *ÍĚL;*
dtype0*
_output_shapes
: 
Â
0validation_input_pipeline/batch_join_and_pad/mulMul4validation_input_pipeline/batch_join_and_pad/ToFloat2validation_input_pipeline/batch_join_and_pad/mul/y*
_output_shapes
: *
T0
Č
Fvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full/tagsConst*R
valueIBG BAvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full*
dtype0*
_output_shapes
: 
í
Avalidation_input_pipeline/batch_join_and_pad/fraction_of_320_fullScalarSummaryFvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full/tags0validation_input_pipeline/batch_join_and_pad/mul*
T0*
_output_shapes
: 
p
.validation_input_pipeline/batch_join_and_pad/nConst*
dtype0*
_output_shapes
: *
value	B :

,validation_input_pipeline/batch_join_and_padQueueDequeueManyV2?validation_input_pipeline/batch_join_and_pad/padding_fifo_queue.validation_input_pipeline/batch_join_and_pad/n*
_output_shapes
:˙˙˙˙˙˙˙˙˙PP::˙˙˙˙˙˙˙˙˙PP:˙˙˙˙˙˙˙˙˙PP::˙˙˙˙˙˙˙˙˙´*
component_types

2	*

timeout_ms˙˙˙˙˙˙˙˙˙
e
Training/SequenceMask/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Š
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
Ž
Training/SequenceMask/RangeRangeTraining/SequenceMask/Const_1Training/SequenceMask/MaxTraining/SequenceMask/Const_2*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
o
$Training/SequenceMask/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ˇ
 Training/SequenceMask/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4$Training/SequenceMask/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
|
Training/SequenceMask/CastCast Training/SequenceMask/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0

Training/SequenceMask/LessLessTraining/SequenceMask/RangeTraining/SequenceMask/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Training/SequenceMask/Cast_1CastTraining/SequenceMask/Less*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
b
Training/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

Training/ExpandDims
ExpandDimsTraining/SequenceMask/Cast_1Training/ExpandDims/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
 Training/cnn_model/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
˝
Training/cnn_model/ReshapeReshape,training_input_pipeline/batch_join_and_pad:2 Training/cnn_model/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
×
Fcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB"            *
dtype0*
_output_shapes
:
Â
Ecnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *    
Ä
Gcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddevConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
valueB
 *|Ý=*
dtype0*
_output_shapes
: 
ş
Pcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
:*

seed *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
seed2 
Ď
Dcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulMulPcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/TruncatedNormalGcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
˝
@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normalAddDcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mulEcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
ß
#cnn_model/convolution/conv2d/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
	container *
shape:
­
*cnn_model/convolution/conv2d/kernel/AssignAssign#cnn_model/convolution/conv2d/kernel@cnn_model/convolution/conv2d/kernel/Initializer/truncated_normal*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
Â
(cnn_model/convolution/conv2d/kernel/readIdentity#cnn_model/convolution/conv2d/kernel*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
ś
3cnn_model/convolution/conv2d/bias/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
Ă
!cnn_model/convolution/conv2d/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container 

(cnn_model/convolution/conv2d/bias/AssignAssign!cnn_model/convolution/conv2d/bias3cnn_model/convolution/conv2d/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
°
&cnn_model/convolution/conv2d/bias/readIdentity!cnn_model/convolution/conv2d/bias*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:

3Training/cnn_model/convolution/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¤
,Training/cnn_model/convolution/conv2d/Conv2DConv2DTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ß
-Training/cnn_model/convolution/conv2d/BiasAddBiasAdd,Training/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

*Training/cnn_model/convolution/conv2d/ReluRelu-Training/cnn_model/convolution/conv2d/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
÷
4Training/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool*Training/cnn_model/convolution/conv2d/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙((
Ű
Hcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
Ć
Gcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
Icnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *HY=*
dtype0*
_output_shapes
: 
Ŕ
Rcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/shape*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
seed2 *
dtype0*&
_output_shapes
: *

seed 
×
Fcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
Ĺ
Bcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal/mean*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
ă
%cnn_model/convolution/conv2d_1/kernel
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
	container *
shape: 
ľ
,cnn_model/convolution/conv2d_1/kernel/AssignAssign%cnn_model/convolution/conv2d_1/kernelBcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
Č
*cnn_model/convolution/conv2d_1/kernel/readIdentity%cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
ş
5cnn_model/convolution/conv2d_1/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    *
dtype0*
_output_shapes
: 
Ç
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

*cnn_model/convolution/conv2d_1/bias/AssignAssign#cnn_model/convolution/conv2d_1/bias5cnn_model/convolution/conv2d_1/bias/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
ś
(cnn_model/convolution/conv2d_1/bias/readIdentity#cnn_model/convolution/conv2d_1/bias*
_output_shapes
: *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias

5Training/cnn_model/convolution/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Â
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
:˙˙˙˙˙˙˙˙˙(( 
ĺ
/Training/cnn_model/convolution/conv2d_1/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( *
T0

,Training/cnn_model/convolution/conv2d_1/ReluRelu/Training/cnn_model/convolution/conv2d_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( 
ű
6Training/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ű
Hcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
Ć
Gcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
Icnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *ŁE=*
dtype0*
_output_shapes
: 
Ŕ
Rcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
seed2 
×
Fcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
Ĺ
Bcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
ă
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
ľ
,cnn_model/convolution/conv2d_2/kernel/AssignAssign%cnn_model/convolution/conv2d_2/kernelBcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
Č
*cnn_model/convolution/conv2d_2/kernel/readIdentity%cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel
ş
5cnn_model/convolution/conv2d_2/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Ç
#cnn_model/convolution/conv2d_2/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container *
shape:@

*cnn_model/convolution/conv2d_2/bias/AssignAssign#cnn_model/convolution/conv2d_2/bias5cnn_model/convolution/conv2d_2/bias/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
ś
(cnn_model/convolution/conv2d_2/bias/readIdentity#cnn_model/convolution/conv2d_2/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@

5Training/cnn_model/convolution/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ä
.Training/cnn_model/convolution/conv2d_2/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ĺ
/Training/cnn_model/convolution/conv2d_2/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

,Training/cnn_model/convolution/conv2d_2/ReluRelu/Training/cnn_model/convolution/conv2d_2/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ű
6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_2/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
Ű
Hcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @      *
dtype0*
_output_shapes
:
Ć
Gcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    
Č
Icnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *HY=
Á
Rcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/shape*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
seed2 *
dtype0*'
_output_shapes
:@*

seed 
Ř
Fcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@
Ć
Bcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@
ĺ
%cnn_model/convolution/conv2d_3/kernel
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@*
dtype0*'
_output_shapes
:@
ś
,cnn_model/convolution/conv2d_3/kernel/AssignAssign%cnn_model/convolution/conv2d_3/kernelBcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@
É
*cnn_model/convolution/conv2d_3/kernel/readIdentity%cnn_model/convolution/conv2d_3/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@
ź
5cnn_model/convolution/conv2d_3/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueB*    *
dtype0*
_output_shapes	
:
É
#cnn_model/convolution/conv2d_3/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias

*cnn_model/convolution/conv2d_3/bias/AssignAssign#cnn_model/convolution/conv2d_3/bias5cnn_model/convolution/conv2d_3/bias/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:
ˇ
(cnn_model/convolution/conv2d_3/bias/readIdentity#cnn_model/convolution/conv2d_3/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:

5Training/cnn_model/convolution/conv2d_3/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Ĺ
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
:˙˙˙˙˙˙˙˙˙


ć
/Training/cnn_model/convolution/conv2d_3/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙


 
,Training/cnn_model/convolution/conv2d_3/ReluRelu/Training/cnn_model/convolution/conv2d_3/BiasAdd*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

*
T0
ü
6Training/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_3/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
Ű
Hcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:
Ć
Gcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Č
Icnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *ŁĹ<
Â
Rcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/shape*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
seed2 *
dtype0*(
_output_shapes
:*

seed 
Ů
Fcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulMulRcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/TruncatedNormalIcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/stddev*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:
Ç
Bcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normalAddFcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mulGcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal/mean*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:
ç
%cnn_model/convolution/conv2d_4/kernel
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:
ˇ
,cnn_model/convolution/conv2d_4/kernel/AssignAssign%cnn_model/convolution/conv2d_4/kernelBcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:
Ę
*cnn_model/convolution/conv2d_4/kernel/readIdentity%cnn_model/convolution/conv2d_4/kernel*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:
ź
5cnn_model/convolution/conv2d_4/bias/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueB*    *
dtype0*
_output_shapes	
:
É
#cnn_model/convolution/conv2d_4/bias
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:*
dtype0*
_output_shapes	
:

*cnn_model/convolution/conv2d_4/bias/AssignAssign#cnn_model/convolution/conv2d_4/bias5cnn_model/convolution/conv2d_4/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias
ˇ
(cnn_model/convolution/conv2d_4/bias/readIdentity#cnn_model/convolution/conv2d_4/bias*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:

5Training/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ĺ
.Training/cnn_model/convolution/conv2d_4/Conv2DConv2D6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ć
/Training/cnn_model/convolution/conv2d_4/BiasAddBiasAdd.Training/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
,Training/cnn_model/convolution/conv2d_4/ReluRelu/Training/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ü
6Training/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool,Training/cnn_model/convolution/conv2d_4/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
"Training/cnn_model/Reshape_1/shapeConst*
valueB"˙˙˙˙ 	  *
dtype0*
_output_shapes
:
Ä
Training/cnn_model/Reshape_1Reshape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool"Training/cnn_model/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
9cnn_model/dense/kernel/Initializer/truncated_normal/shapeConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
¨
8cnn_model/dense/kernel/Initializer/truncated_normal/meanConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ş
:cnn_model/dense/kernel/Initializer/truncated_normal/stddevConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *JQÚ<*
dtype0*
_output_shapes
: 

Ccnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal9cnn_model/dense/kernel/Initializer/truncated_normal/shape*
T0*)
_class
loc:@cnn_model/dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 

7cnn_model/dense/kernel/Initializer/truncated_normal/mulMulCcnn_model/dense/kernel/Initializer/truncated_normal/TruncatedNormal:cnn_model/dense/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
*
T0*)
_class
loc:@cnn_model/dense/kernel

3cnn_model/dense/kernel/Initializer/truncated_normalAdd7cnn_model/dense/kernel/Initializer/truncated_normal/mul8cnn_model/dense/kernel/Initializer/truncated_normal/mean*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:

š
cnn_model/dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:

ó
cnn_model/dense/kernel/AssignAssigncnn_model/dense/kernel3cnn_model/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:


cnn_model/dense/kernel/readIdentitycnn_model/dense/kernel*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:


&cnn_model/dense/bias/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ť
cnn_model/dense/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:
Ű
cnn_model/dense/bias/AssignAssigncnn_model/dense/bias&cnn_model/dense/bias/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:

cnn_model/dense/bias/readIdentitycnn_model/dense/bias*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:
˝
Training/cnn_model/dense/MatMulMatMulTraining/cnn_model/Reshape_1cnn_model/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ą
 Training/cnn_model/dense/BiasAddBiasAddTraining/cnn_model/dense/MatMulcnn_model/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
z
Training/cnn_model/dense/ReluRelu Training/cnn_model/dense/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
"Training/cnn_model/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*!
valueB"   ˙˙˙˙   
Ż
Training/cnn_model/Reshape_2ReshapeTraining/cnn_model/dense/Relu"Training/cnn_model/Reshape_2/shape*
T0*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
Training/SequenceMask_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
­
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
ś
Training/SequenceMask_1/RangeRangeTraining/SequenceMask_1/Const_1Training/SequenceMask_1/MaxTraining/SequenceMask_1/Const_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
q
&Training/SequenceMask_1/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ť
"Training/SequenceMask_1/ExpandDims
ExpandDims,training_input_pipeline/batch_join_and_pad:4&Training/SequenceMask_1/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0

Training/SequenceMask_1/CastCast"Training/SequenceMask_1/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0

Training/SequenceMask_1/LessLessTraining/SequenceMask_1/RangeTraining/SequenceMask_1/Cast*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Training/SequenceMask_1/Cast_1CastTraining/SequenceMask_1/Less*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0

d
Training/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
 
Training/ExpandDims_1
ExpandDimsTraining/SequenceMask_1/Cast_1Training/ExpandDims_1/dim*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0
g
%Training/rnn_model/recurrent/rnn/RankConst*
dtype0*
_output_shapes
: *
value	B :
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
Ú
&Training/rnn_model/recurrent/rnn/rangeRange,Training/rnn_model/recurrent/rnn/range/start%Training/rnn_model/recurrent/rnn/Rank,Training/rnn_model/recurrent/rnn/range/delta*

Tidx0*
_output_shapes
:

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
ő
'Training/rnn_model/recurrent/rnn/concatConcatV20Training/rnn_model/recurrent/rnn/concat/values_0&Training/rnn_model/recurrent/rnn/range,Training/rnn_model/recurrent/rnn/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
Â
*Training/rnn_model/recurrent/rnn/transpose	TransposeTraining/cnn_model/Reshape_2'Training/rnn_model/recurrent/rnn/concat*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0

0Training/rnn_model/recurrent/rnn/sequence_lengthIdentity,training_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:

8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
dtype0*
_output_shapes
:*
valueB:

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
dtype0*
_output_shapes
:*
valueB:

>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ľ
9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV28Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0

>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
÷
8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill9Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat>Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
T0*

index_type0*
_output_shapes
:	

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
valueB:*
dtype0*
_output_shapes
:

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
valueB:*
dtype0*
_output_shapes
:

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:*
dtype0*
_output_shapes
:

@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ť
;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0

@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ý
:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill;Training/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1@Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
valueB:*
dtype0*
_output_shapes
:

:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
valueB:*
dtype0*
_output_shapes
:
p
&Training/rnn_model/recurrent/rnn/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
p
&Training/rnn_model/recurrent/rnn/stackConst*
valueB:*
dtype0*
_output_shapes
:
¤
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
°
$Training/rnn_model/recurrent/rnn/AllAll&Training/rnn_model/recurrent/rnn/Equal&Training/rnn_model/recurrent/rnn/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
ž
-Training/rnn_model/recurrent/rnn/Assert/ConstConst*a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 

/Training/rnn_model/recurrent/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
Ć
5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*a
valueXBV BPExpected shape for Tensor Training/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 

5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
ź
.Training/rnn_model/recurrent/rnn/Assert/AssertAssert$Training/rnn_model/recurrent/rnn/All5Training/rnn_model/recurrent/rnn/Assert/Assert/data_0&Training/rnn_model/recurrent/rnn/stack5Training/rnn_model/recurrent/rnn/Assert/Assert/data_2&Training/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
Ŕ
,Training/rnn_model/recurrent/rnn/CheckSeqLenIdentity0Training/rnn_model/recurrent/rnn/sequence_length/^Training/rnn_model/recurrent/rnn/Assert/Assert*
T0*
_output_shapes
:

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

6Training/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6Training/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
 
.Training/rnn_model/recurrent/rnn/strided_sliceStridedSlice(Training/rnn_model/recurrent/rnn/Shape_14Training/rnn_model/recurrent/rnn/strided_slice/stack6Training/rnn_model/recurrent/rnn/strided_slice/stack_16Training/rnn_model/recurrent/rnn/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
r
(Training/rnn_model/recurrent/rnn/Const_1Const*
dtype0*
_output_shapes
:*
valueB:
s
(Training/rnn_model/recurrent/rnn/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
p
.Training/rnn_model/recurrent/rnn/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ó
)Training/rnn_model/recurrent/rnn/concat_1ConcatV2(Training/rnn_model/recurrent/rnn/Const_1(Training/rnn_model/recurrent/rnn/Const_2.Training/rnn_model/recurrent/rnn/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
q
,Training/rnn_model/recurrent/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ă
&Training/rnn_model/recurrent/rnn/zerosFill)Training/rnn_model/recurrent/rnn/concat_1,Training/rnn_model/recurrent/rnn/zeros/Const*
T0*

index_type0*
_output_shapes
:	
r
(Training/rnn_model/recurrent/rnn/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
Á
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
Á
$Training/rnn_model/recurrent/rnn/MaxMax,Training/rnn_model/recurrent/rnn/CheckSeqLen(Training/rnn_model/recurrent/rnn/Const_4*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
g
%Training/rnn_model/recurrent/rnn/timeConst*
dtype0*
_output_shapes
: *
value	B : 
Đ
,Training/rnn_model/recurrent/rnn/TensorArrayTensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*L
tensor_array_name75Training/rnn_model/recurrent/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:	*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
Ń
.Training/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV3.Training/rnn_model/recurrent/rnn/strided_slice*K
tensor_array_name64Training/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
Ł
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape*Training/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:

GTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
ATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceStridedSlice9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeGTraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1ITraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 

?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
¸
9Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRange?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startATraining/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice?Training/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

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
Ś
(Training/rnn_model/recurrent/rnn/MaximumMaximum*Training/rnn_model/recurrent/rnn/Maximum/x$Training/rnn_model/recurrent/rnn/Max*
T0*
_output_shapes
: 
Ž
(Training/rnn_model/recurrent/rnn/MinimumMinimum.Training/rnn_model/recurrent/rnn/strided_slice(Training/rnn_model/recurrent/rnn/Maximum*
T0*
_output_shapes
: 
z
8Training/rnn_model/recurrent/rnn/while/iteration_counterConst*
dtype0*
_output_shapes
: *
value	B : 

,Training/rnn_model/recurrent/rnn/while/EnterEnter8Training/rnn_model/recurrent/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ó
.Training/rnn_model/recurrent/rnn/while/Enter_1Enter%Training/rnn_model/recurrent/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ü
.Training/rnn_model/recurrent/rnn/while/Enter_2Enter.Training/rnn_model/recurrent/rnn/TensorArray:1*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 

.Training/rnn_model/recurrent/rnn/while/Enter_3Enter8Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context

.Training/rnn_model/recurrent/rnn/while/Enter_4Enter:Training/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ĺ
,Training/rnn_model/recurrent/rnn/while/MergeMerge,Training/rnn_model/recurrent/rnn/while/Enter4Training/rnn_model/recurrent/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
Ë
.Training/rnn_model/recurrent/rnn/while/Merge_1Merge.Training/rnn_model/recurrent/rnn/while/Enter_16Training/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Ë
.Training/rnn_model/recurrent/rnn/while/Merge_2Merge.Training/rnn_model/recurrent/rnn/while/Enter_26Training/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
Ô
.Training/rnn_model/recurrent/rnn/while/Merge_3Merge.Training/rnn_model/recurrent/rnn/while/Enter_36Training/rnn_model/recurrent/rnn/while/NextIteration_3*
T0*
N*!
_output_shapes
:	: 
Ô
.Training/rnn_model/recurrent/rnn/while/Merge_4Merge.Training/rnn_model/recurrent/rnn/while/Enter_46Training/rnn_model/recurrent/rnn/while/NextIteration_4*
N*!
_output_shapes
:	: *
T0
ľ
+Training/rnn_model/recurrent/rnn/while/LessLess,Training/rnn_model/recurrent/rnn/while/Merge1Training/rnn_model/recurrent/rnn/while/Less/Enter*
_output_shapes
: *
T0
˙
1Training/rnn_model/recurrent/rnn/while/Less/EnterEnter.Training/rnn_model/recurrent/rnn/strided_slice*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
ť
-Training/rnn_model/recurrent/rnn/while/Less_1Less.Training/rnn_model/recurrent/rnn/while/Merge_13Training/rnn_model/recurrent/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
ű
3Training/rnn_model/recurrent/rnn/while/Less_1/EnterEnter(Training/rnn_model/recurrent/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ł
1Training/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd+Training/rnn_model/recurrent/rnn/while/Less-Training/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 

/Training/rnn_model/recurrent/rnn/while/LoopCondLoopCond1Training/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 
ú
-Training/rnn_model/recurrent/rnn/while/SwitchSwitch,Training/rnn_model/recurrent/rnn/while/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/while/Merge*
_output_shapes
: : 

/Training/rnn_model/recurrent/rnn/while/Switch_1Switch.Training/rnn_model/recurrent/rnn/while/Merge_1/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_1*
_output_shapes
: : 

/Training/rnn_model/recurrent/rnn/while/Switch_2Switch.Training/rnn_model/recurrent/rnn/while/Merge_2/Training/rnn_model/recurrent/rnn/while/LoopCond*
_output_shapes
: : *
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_2

/Training/rnn_model/recurrent/rnn/while/Switch_3Switch.Training/rnn_model/recurrent/rnn/while/Merge_3/Training/rnn_model/recurrent/rnn/while/LoopCond**
_output_shapes
:	:	*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_3

/Training/rnn_model/recurrent/rnn/while/Switch_4Switch.Training/rnn_model/recurrent/rnn/while/Merge_4/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/while/Merge_4**
_output_shapes
:	:	

/Training/rnn_model/recurrent/rnn/while/IdentityIdentity/Training/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 

1Training/rnn_model/recurrent/rnn/while/Identity_1Identity1Training/rnn_model/recurrent/rnn/while/Switch_1:1*
_output_shapes
: *
T0

1Training/rnn_model/recurrent/rnn/while/Identity_2Identity1Training/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 

1Training/rnn_model/recurrent/rnn/while/Identity_3Identity1Training/rnn_model/recurrent/rnn/while/Switch_3:1*
T0*
_output_shapes
:	

1Training/rnn_model/recurrent/rnn/while/Identity_4Identity1Training/rnn_model/recurrent/rnn/while/Switch_4:1*
T0*
_output_shapes
:	
 
,Training/rnn_model/recurrent/rnn/while/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
ą
*Training/rnn_model/recurrent/rnn/while/addAdd/Training/rnn_model/recurrent/rnn/while/Identity,Training/rnn_model/recurrent/rnn/while/add/y*
T0*
_output_shapes
: 
°
8Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3TensorArrayReadV3>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	

>Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ť
@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ö
3Training/rnn_model/recurrent/rnn/while/GreaterEqualGreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_19Training/rnn_model/recurrent/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:

9Training/rnn_model/recurrent/rnn/while/GreaterEqual/EnterEnter,Training/rnn_model/recurrent/rnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ů
Krnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      
Ě
Jrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/meanConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Î
Lrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddevConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *ěŃ<*
dtype0*
_output_shapes
: 
Ă
Urnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/shape*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 
Ý
Irnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulMulUrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/TruncatedNormalLrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/stddev*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:

Ë
Ernn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normalAddIrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mulJrnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel
Ý
(rnn_model/recurrent/rnn/lstm_cell/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:

ť
/rnn_model/recurrent/rnn/lstm_cell/kernel/AssignAssign(rnn_model/recurrent/rnn/lstm_cell/kernelErnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(

-rnn_model/recurrent/rnn/lstm_cell/kernel/readIdentity(rnn_model/recurrent/rnn/lstm_cell/kernel*
T0* 
_output_shapes
:

Î
Hrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:*
dtype0*
_output_shapes
:
ž
>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    
˝
8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zerosFillHrnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/shape_as_tensor>rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros/Const*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0*
_output_shapes	
:
Ď
&rnn_model/recurrent/rnn/lstm_cell/bias
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container 
Ł
-rnn_model/recurrent/rnn/lstm_cell/bias/AssignAssign&rnn_model/recurrent/rnn/lstm_cell/bias8rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias

+rnn_model/recurrent/rnn/lstm_cell/bias/readIdentity&rnn_model/recurrent/rnn/lstm_cell/bias*
T0*
_output_shapes	
:
°
<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axisConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
­
7Training/rnn_model/recurrent/rnn/while/lstm_cell/concatConcatV28Training/rnn_model/recurrent/rnn/while/TensorArrayReadV31Training/rnn_model/recurrent/rnn/while/Identity_4<Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis*
N*
_output_shapes
:	*

Tidx0*
T0

7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMulMatMul7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter*
transpose_b( *
T0*
_output_shapes
:	*
transpose_a( 

=Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
ý
8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAddBiasAdd7Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	

>Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/EnterEnter+rnn_model/recurrent/rnn/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ş
6Training/rnn_model/recurrent/rnn/while/lstm_cell/ConstConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
´
@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dimConst0^Training/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :

6Training/rnn_model/recurrent/rnn/while/lstm_cell/splitSplit@Training/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim8Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd*@
_output_shapes.
,:	:	:	:	*
	num_split*
T0
­
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
×
4Training/rnn_model/recurrent/rnn/while/lstm_cell/addAdd8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:26Training/rnn_model/recurrent/rnn/while/lstm_cell/add/y*
T0*
_output_shapes
:	
Ł
8Training/rnn_model/recurrent/rnn/while/lstm_cell/SigmoidSigmoid4Training/rnn_model/recurrent/rnn/while/lstm_cell/add*
T0*
_output_shapes
:	
Ň
4Training/rnn_model/recurrent/rnn/while/lstm_cell/mulMul8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid1Training/rnn_model/recurrent/rnn/while/Identity_3*
_output_shapes
:	*
T0
§
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1Sigmoid6Training/rnn_model/recurrent/rnn/while/lstm_cell/split*
T0*
_output_shapes
:	
Ą
5Training/rnn_model/recurrent/rnn/while/lstm_cell/TanhTanh8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:1*
T0*
_output_shapes
:	
Ú
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_15Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
T0*
_output_shapes
:	
Ő
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1Add4Training/rnn_model/recurrent/rnn/while/lstm_cell/mul6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1*
_output_shapes
:	*
T0
Š
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2Sigmoid8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:3*
_output_shapes
:	*
T0
Ą
7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1Tanh6Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*
_output_shapes
:	
Ü
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2Mul:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_27Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
T0*
_output_shapes
:	
Î
-Training/rnn_model/recurrent/rnn/while/SelectSelect3Training/rnn_model/recurrent/rnn/while/GreaterEqual3Training/rnn_model/recurrent/rnn/while/Select/Enter6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
Í
3Training/rnn_model/recurrent/rnn/while/Select/EnterEnter&Training/rnn_model/recurrent/rnn/zeros*
is_constant(*
_output_shapes
:	*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
Î
/Training/rnn_model/recurrent/rnn/while/Select_1Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_36Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	
Î
/Training/rnn_model/recurrent/rnn/while/Select_2Select3Training/rnn_model/recurrent/rnn/while/GreaterEqual1Training/rnn_model/recurrent/rnn/while/Identity_46Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
ł
JTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1-Training/rnn_model/recurrent/rnn/while/Select1Training/rnn_model/recurrent/rnn/while/Identity_2*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
ë
PTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
is_constant(*
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
˘
.Training/rnn_model/recurrent/rnn/while/add_1/yConst0^Training/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ˇ
,Training/rnn_model/recurrent/rnn/while/add_1Add1Training/rnn_model/recurrent/rnn/while/Identity_1.Training/rnn_model/recurrent/rnn/while/add_1/y*
T0*
_output_shapes
: 

4Training/rnn_model/recurrent/rnn/while/NextIterationNextIteration*Training/rnn_model/recurrent/rnn/while/add*
T0*
_output_shapes
: 

6Training/rnn_model/recurrent/rnn/while/NextIteration_1NextIteration,Training/rnn_model/recurrent/rnn/while/add_1*
_output_shapes
: *
T0
´
6Training/rnn_model/recurrent/rnn/while/NextIteration_2NextIterationJTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
˘
6Training/rnn_model/recurrent/rnn/while/NextIteration_3NextIteration/Training/rnn_model/recurrent/rnn/while/Select_1*
_output_shapes
:	*
T0
˘
6Training/rnn_model/recurrent/rnn/while/NextIteration_4NextIteration/Training/rnn_model/recurrent/rnn/while/Select_2*
T0*
_output_shapes
:	

+Training/rnn_model/recurrent/rnn/while/ExitExit-Training/rnn_model/recurrent/rnn/while/Switch*
T0*
_output_shapes
: 

-Training/rnn_model/recurrent/rnn/while/Exit_1Exit/Training/rnn_model/recurrent/rnn/while/Switch_1*
T0*
_output_shapes
: 

-Training/rnn_model/recurrent/rnn/while/Exit_2Exit/Training/rnn_model/recurrent/rnn/while/Switch_2*
T0*
_output_shapes
: 

-Training/rnn_model/recurrent/rnn/while/Exit_3Exit/Training/rnn_model/recurrent/rnn/while/Switch_3*
T0*
_output_shapes
:	

-Training/rnn_model/recurrent/rnn/while/Exit_4Exit/Training/rnn_model/recurrent/rnn/while/Switch_4*
T0*
_output_shapes
:	

CTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
_output_shapes
: 
Ŕ
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startConst*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
Ŕ
=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/deltaConst*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
ő
7Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeRange=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/startCTraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3=Training/rnn_model/recurrent/rnn/TensorArrayStack/range/delta*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

ETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3,Training/rnn_model/recurrent/rnn/TensorArray7Training/rnn_model/recurrent/rnn/TensorArrayStack/range-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
dtype0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_shape:	
s
(Training/rnn_model/recurrent/rnn/Const_5Const*
dtype0*
_output_shapes
:*
valueB:
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
â
(Training/rnn_model/recurrent/rnn/range_1Range.Training/rnn_model/recurrent/rnn/range_1/start'Training/rnn_model/recurrent/rnn/Rank_1.Training/rnn_model/recurrent/rnn/range_1/delta*

Tidx0*
_output_shapes
:

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
ý
)Training/rnn_model/recurrent/rnn/concat_2ConcatV22Training/rnn_model/recurrent/rnn/concat_2/values_0(Training/rnn_model/recurrent/rnn/range_1.Training/rnn_model/recurrent/rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
ď
,Training/rnn_model/recurrent/rnn/transpose_1	TransposeETraining/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3)Training/rnn_model/recurrent/rnn/concat_2*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0
q
 Training/rnn_model/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
ś
Training/rnn_model/ReshapeReshape,Training/rnn_model/recurrent/rnn/transpose_1 Training/rnn_model/Reshape/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
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
 *  ?*
dtype0*
_output_shapes
: 
Í
<Training/logits/dropout/dropout/random_uniform/RandomUniformRandomUniform%Training/logits/dropout/dropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 
Â
2Training/logits/dropout/dropout/random_uniform/subSub2Training/logits/dropout/dropout/random_uniform/max2Training/logits/dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ţ
2Training/logits/dropout/dropout/random_uniform/mulMul<Training/logits/dropout/dropout/random_uniform/RandomUniform2Training/logits/dropout/dropout/random_uniform/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Đ
.Training/logits/dropout/dropout/random_uniformAdd2Training/logits/dropout/dropout/random_uniform/mul2Training/logits/dropout/dropout/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
#Training/logits/dropout/dropout/addAdd)Training/logits/dropout/dropout/keep_prob.Training/logits/dropout/dropout/random_uniform*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

%Training/logits/dropout/dropout/FloorFloor#Training/logits/dropout/dropout/add*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
¨
#Training/logits/dropout/dropout/divRealDivTraining/rnn_model/Reshape)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
#Training/logits/dropout/dropout/mulMul#Training/logits/dropout/dropout/div%Training/logits/dropout/dropout/Floor*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
6logits/dense/kernel/Initializer/truncated_normal/shapeConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
˘
5logits/dense/kernel/Initializer/truncated_normal/meanConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
7logits/dense/kernel/Initializer/truncated_normal/stddevConst*&
_class
loc:@logits/dense/kernel*
valueB
 *R${=*
dtype0*
_output_shapes
: 

@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal6logits/dense/kernel/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	*

seed *
T0*&
_class
loc:@logits/dense/kernel*
seed2 

4logits/dense/kernel/Initializer/truncated_normal/mulMul@logits/dense/kernel/Initializer/truncated_normal/TruncatedNormal7logits/dense/kernel/Initializer/truncated_normal/stddev*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	
ö
0logits/dense/kernel/Initializer/truncated_normalAdd4logits/dense/kernel/Initializer/truncated_normal/mul5logits/dense/kernel/Initializer/truncated_normal/mean*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	
ą
logits/dense/kernel
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	
ć
logits/dense/kernel/AssignAssignlogits/dense/kernel0logits/dense/kernel/Initializer/truncated_normal*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel

logits/dense/kernel/readIdentitylogits/dense/kernel*
_output_shapes
:	*
T0*&
_class
loc:@logits/dense/kernel

#logits/dense/bias/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
Ł
logits/dense/bias
VariableV2*
shared_name *$
_class
loc:@logits/dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Î
logits/dense/bias/AssignAssignlogits/dense/bias#logits/dense/bias/Initializer/zeros*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(

logits/dense/bias/readIdentitylogits/dense/bias*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:
˝
Training/logits/dense/MatMulMatMul#Training/logits/dropout/dropout/mullogits/dense/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
§
Training/logits/dense/BiasAddBiasAddTraining/logits/dense/MatMullogits/dense/bias/read*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
Training/logits/Reshape/shapeConst*
dtype0*
_output_shapes
:*!
valueB"   ˙˙˙˙   
¤
Training/logits/ReshapeReshapeTraining/logits/dense/BiasAddTraining/logits/Reshape/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

Training/logits_prediction/mulMulTraining/logits/ReshapeTraining/ExpandDims_1*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
1Training/logits_prediction/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
Training/logits_prediction/MeanMeanTraining/logits_prediction/mul1Training/logits_prediction/Mean/reduction_indices*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0

ETraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
valueB:*
dtype0*
_output_shapes
:

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
î
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
ˇ
Training/accuracy_stats/ArgMaxArgMaxTraining/logits_prediction/Mean(Training/accuracy_stats/ArgMax/dimension*
T0*
output_type0	*
_output_shapes
:*

Tidx0

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
Training/accuracy_stats/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Training/accuracy_stats/SumSumTraining/accuracy_stats/CastTraining/accuracy_stats/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
y
Training/accuracy_stats/Cast_1CastTraining/accuracy_stats/Equal*
_output_shapes
:*

DstT0*

SrcT0

i
Training/accuracy_stats/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ł
Training/accuracy_stats/MeanMeanTraining/accuracy_stats/Cast_1Training/accuracy_stats/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
i
'Training/accuracy/predictions/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
ľ
Training/accuracy/predictionsArgMaxTraining/logits_prediction/Mean'Training/accuracy/predictions/dimension*
T0*
output_type0	*
_output_shapes
:*

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
Ň
Training/global_step/AssignAssignTraining/global_step"Training/global_step/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*'
_class
loc:@Training/global_step

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
B :ô*
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
 *ěQx?*
dtype0*
_output_shapes
: 

!Training/ExponentialDecay/truedivRealDivTraining/ExponentialDecay/Cast Training/ExponentialDecay/Cast_1*
_output_shapes
: *
T0

Training/ExponentialDecay/PowPow"Training/ExponentialDecay/Cast_2/x!Training/ExponentialDecay/truediv*
_output_shapes
: *
T0

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
Training/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?

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
Ö
Training/gradients/f_count_1EnterTraining/gradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context

Training/gradients/MergeMergeTraining/gradients/f_count_1 Training/gradients/NextIteration*
N*
_output_shapes
: : *
T0

Training/gradients/SwitchSwitchTraining/gradients/Merge/Training/rnn_model/recurrent/rnn/while/LoopCond*
T0*
_output_shapes
: : 

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
ú
 Training/gradients/NextIterationNextIterationTraining/gradients/Add[^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2e^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2_^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2*
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
ë
Training/gradients/b_count_1EnterTraining/gradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

Training/gradients/Merge_1MergeTraining/gradients/b_count_1"Training/gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 

Training/gradients/GreaterEqualGreaterEqualTraining/gradients/Merge_1%Training/gradients/GreaterEqual/Enter*
_output_shapes
: *
T0
ň
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

Training/gradients/Switch_1SwitchTraining/gradients/Merge_1Training/gradients/b_count_2*
T0*
_output_shapes
: : 

Training/gradients/SubSubTraining/gradients/Switch_1:1%Training/gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
ę
"Training/gradients/NextIteration_1NextIterationTraining/gradients/Sub|^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
b
Training/gradients/b_count_3ExitTraining/gradients/Switch_1*
T0*
_output_shapes
: 

FTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ß
@Training/gradients/Training/cross_entropy_loss/Mean_grad/ReshapeReshapeTraining/gradients/FillFTraining/gradients/Training/cross_entropy_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

>Training/gradients/Training/cross_entropy_loss/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB:
ţ
=Training/gradients/Training/cross_entropy_loss/Mean_grad/TileTile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Reshape>Training/gradients/Training/cross_entropy_loss/Mean_grad/Const*
_output_shapes
:*

Tmultiples0*
T0

@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1Const*
valueB
 *  A*
dtype0*
_output_shapes
: 
ń
@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivRealDiv=Training/gradients/Training/cross_entropy_loss/Mean_grad/Tile@Training/gradients/Training/cross_entropy_loss/Mean_grad/Const_1*
T0*
_output_shapes
:
ş
Training/gradients/zeros_like	ZerosLikeeTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ć
Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradienteTraining/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
Ö
Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙

Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims@Training/gradients/Training/cross_entropy_loss/Mean_grad/truedivTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
Ć
Training/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0

=Training/gradients/Training/logits_prediction/Mean_grad/ShapeShapeTraining/logits_prediction/mul*
T0*
out_type0*
_output_shapes
:
Đ
<Training/gradients/Training/logits_prediction/Mean_grad/SizeConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ś
;Training/gradients/Training/logits_prediction/Mean_grad/addAdd1Training/logits_prediction/Mean/reduction_indices<Training/gradients/Training/logits_prediction/Mean_grad/Size*
_output_shapes
: *
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape
ľ
;Training/gradients/Training/logits_prediction/Mean_grad/modFloorMod;Training/gradients/Training/logits_prediction/Mean_grad/add<Training/gradients/Training/logits_prediction/Mean_grad/Size*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
: 
Ô
?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1Const*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
valueB *
dtype0*
_output_shapes
: 
×
CTraining/gradients/Training/logits_prediction/Mean_grad/range/startConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B : *
dtype0*
_output_shapes
: 
×
CTraining/gradients/Training/logits_prediction/Mean_grad/range/deltaConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 

=Training/gradients/Training/logits_prediction/Mean_grad/rangeRangeCTraining/gradients/Training/logits_prediction/Mean_grad/range/start<Training/gradients/Training/logits_prediction/Mean_grad/SizeCTraining/gradients/Training/logits_prediction/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape
Ö
BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/valueConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Î
<Training/gradients/Training/logits_prediction/Mean_grad/FillFill?Training/gradients/Training/logits_prediction/Mean_grad/Shape_1BTraining/gradients/Training/logits_prediction/Mean_grad/Fill/value*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*

index_type0*
_output_shapes
: 
Ř
ETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchDynamicStitch=Training/gradients/Training/logits_prediction/Mean_grad/range;Training/gradients/Training/logits_prediction/Mean_grad/mod=Training/gradients/Training/logits_prediction/Mean_grad/Shape<Training/gradients/Training/logits_prediction/Mean_grad/Fill*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ő
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/yConst*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
Ô
?Training/gradients/Training/logits_prediction/Mean_grad/MaximumMaximumETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitchATraining/gradients/Training/logits_prediction/Mean_grad/Maximum/y*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
@Training/gradients/Training/logits_prediction/Mean_grad/floordivFloorDiv=Training/gradients/Training/logits_prediction/Mean_grad/Shape?Training/gradients/Training/logits_prediction/Mean_grad/Maximum*
T0*P
_classF
DBloc:@Training/gradients/Training/logits_prediction/Mean_grad/Shape*
_output_shapes
:
Ă
?Training/gradients/Training/logits_prediction/Mean_grad/ReshapeReshapeTraining/gradients/Training/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulETraining/gradients/Training/logits_prediction/Mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
Ą
<Training/gradients/Training/logits_prediction/Mean_grad/TileTile?Training/gradients/Training/logits_prediction/Mean_grad/Reshape@Training/gradients/Training/logits_prediction/Mean_grad/floordiv*

Tmultiples0*
T0*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2ShapeTraining/logits_prediction/mul*
T0*
out_type0*
_output_shapes
:

?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3Const*
dtype0*
_output_shapes
:*
valueB"      

=Training/gradients/Training/logits_prediction/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

<Training/gradients/Training/logits_prediction/Mean_grad/ProdProd?Training/gradients/Training/logits_prediction/Mean_grad/Shape_2=Training/gradients/Training/logits_prediction/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

?Training/gradients/Training/logits_prediction/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1Prod?Training/gradients/Training/logits_prediction/Mean_grad/Shape_3?Training/gradients/Training/logits_prediction/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
ň
ATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1Maximum>Training/gradients/Training/logits_prediction/Mean_grad/Prod_1CTraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
đ
BTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1FloorDiv<Training/gradients/Training/logits_prediction/Mean_grad/ProdATraining/gradients/Training/logits_prediction/Mean_grad/Maximum_1*
_output_shapes
: *
T0
¸
<Training/gradients/Training/logits_prediction/Mean_grad/CastCastBTraining/gradients/Training/logits_prediction/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
ü
?Training/gradients/Training/logits_prediction/Mean_grad/truedivRealDiv<Training/gradients/Training/logits_prediction/Mean_grad/Tile<Training/gradients/Training/logits_prediction/Mean_grad/Cast*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

<Training/gradients/Training/logits_prediction/mul_grad/ShapeShapeTraining/logits/Reshape*
T0*
out_type0*
_output_shapes
:

>Training/gradients/Training/logits_prediction/mul_grad/Shape_1ShapeTraining/ExpandDims_1*
T0*
out_type0*
_output_shapes
:
 
LTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<Training/gradients/Training/logits_prediction/mul_grad/Shape>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ď
:Training/gradients/Training/logits_prediction/mul_grad/MulMul?Training/gradients/Training/logits_prediction/Mean_grad/truedivTraining/ExpandDims_1*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

:Training/gradients/Training/logits_prediction/mul_grad/SumSum:Training/gradients/Training/logits_prediction/mul_grad/MulLTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

>Training/gradients/Training/logits_prediction/mul_grad/ReshapeReshape:Training/gradients/Training/logits_prediction/mul_grad/Sum<Training/gradients/Training/logits_prediction/mul_grad/Shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
<Training/gradients/Training/logits_prediction/mul_grad/Mul_1MulTraining/logits/Reshape?Training/gradients/Training/logits_prediction/Mean_grad/truediv*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

<Training/gradients/Training/logits_prediction/mul_grad/Sum_1Sum<Training/gradients/Training/logits_prediction/mul_grad/Mul_1NTraining/gradients/Training/logits_prediction/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1Reshape<Training/gradients/Training/logits_prediction/mul_grad/Sum_1>Training/gradients/Training/logits_prediction/mul_grad/Shape_1*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
GTraining/gradients/Training/logits_prediction/mul_grad/tuple/group_depsNoOp?^Training/gradients/Training/logits_prediction/mul_grad/ReshapeA^Training/gradients/Training/logits_prediction/mul_grad/Reshape_1
î
OTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/logits_prediction/mul_grad/ReshapeH^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
QTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1H^Training/gradients/Training/logits_prediction/mul_grad/tuple/group_deps*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*S
_classI
GEloc:@Training/gradients/Training/logits_prediction/mul_grad/Reshape_1

5Training/gradients/Training/logits/Reshape_grad/ShapeShapeTraining/logits/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:

7Training/gradients/Training/logits/Reshape_grad/ReshapeReshapeOTraining/gradients/Training/logits_prediction/mul_grad/tuple/control_dependency5Training/gradients/Training/logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
ATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradBiasAddGrad7Training/gradients/Training/logits/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
Ě
FTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_depsNoOp8^Training/gradients/Training/logits/Reshape_grad/ReshapeB^Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad
Ú
NTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencyIdentity7Training/gradients/Training/logits/Reshape_grad/ReshapeG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*J
_class@
><loc:@Training/gradients/Training/logits/Reshape_grad/Reshape
ă
PTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1IdentityATraining/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGradG^Training/gradients/Training/logits/dense/BiasAdd_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@Training/gradients/Training/logits/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

;Training/gradients/Training/logits/dense/MatMul_grad/MatMulMatMulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependencylogits/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(

=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1MatMul#Training/logits/dropout/dropout/mulNTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	*
transpose_a(*
transpose_b( 
Ë
ETraining/gradients/Training/logits/dense/MatMul_grad/tuple/group_depsNoOp<^Training/gradients/Training/logits/dense/MatMul_grad/MatMul>^Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1
á
MTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependencyIdentity;Training/gradients/Training/logits/dense/MatMul_grad/MatMulF^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
OTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1Identity=Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1F^Training/gradients/Training/logits/dense/MatMul_grad/tuple/group_deps*
T0*P
_classF
DBloc:@Training/gradients/Training/logits/dense/MatMul_grad/MatMul_1*
_output_shapes
:	
¤
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeShape#Training/logits/dropout/dropout/div*
T0*
out_type0*
_output_shapes
:
¨
CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1Shape%Training/logits/dropout/dropout/Floor*
T0*
out_type0*
_output_shapes
:
Ż
QTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/mul_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ď
?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulMulMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency%Training/logits/dropout/dropout/Floor*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumSum?Training/gradients/Training/logits/dropout/dropout/mul_grad/MulQTraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

CTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/mul_grad/SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1Mul#Training/logits/dropout/dropout/divMTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
 
ATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1SumATraining/gradients/Training/logits/dropout/dropout/mul_grad/Mul_1STraining/gradients/Training/logits/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

ETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/mul_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/mul_grad/Shape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
â
LTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1
˙
TTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/mul_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

VTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/mul_grad/Reshape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

ATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeShapeTraining/rnn_model/Reshape*
T0*
out_type0*
_output_shapes
:

CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ż
QTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgsATraining/gradients/Training/logits/dropout/dropout/div_grad/ShapeCTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

CTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivRealDivTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependency)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

?Training/gradients/Training/logits/dropout/dropout/div_grad/SumSumCTraining/gradients/Training/logits/dropout/dropout/div_grad/RealDivQTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

CTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeReshape?Training/gradients/Training/logits/dropout/dropout/div_grad/SumATraining/gradients/Training/logits/dropout/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

?Training/gradients/Training/logits/dropout/dropout/div_grad/NegNegTraining/rnn_model/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1RealDiv?Training/gradients/Training/logits/dropout/dropout/div_grad/Neg)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő
ETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2RealDivETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_1)Training/logits/dropout/dropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

?Training/gradients/Training/logits/dropout/dropout/div_grad/mulMulTTraining/gradients/Training/logits/dropout/dropout/mul_grad/tuple/control_dependencyETraining/gradients/Training/logits/dropout/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

ATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1Sum?Training/gradients/Training/logits/dropout/dropout/div_grad/mulSTraining/gradients/Training/logits/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

ETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1ReshapeATraining/gradients/Training/logits/dropout/dropout/div_grad/Sum_1CTraining/gradients/Training/logits/dropout/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
â
LTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_depsNoOpD^Training/gradients/Training/logits/dropout/dropout/div_grad/ReshapeF^Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1
˙
TTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependencyIdentityCTraining/gradients/Training/logits/dropout/dropout/div_grad/ReshapeM^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*
T0*V
_classL
JHloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
VTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency_1IdentityETraining/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1M^Training/gradients/Training/logits/dropout/dropout/div_grad/tuple/group_deps*
T0*X
_classN
LJloc:@Training/gradients/Training/logits/dropout/dropout/div_grad/Reshape_1*
_output_shapes
: 
¤
8Training/gradients/Training/rnn_model/Reshape_grad/ShapeShape,Training/rnn_model/recurrent/rnn/transpose_1*
T0*
out_type0*
_output_shapes
:

:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeReshapeTTraining/gradients/Training/logits/dropout/dropout/div_grad/tuple/control_dependency8Training/gradients/Training/rnn_model/Reshape_grad/Shape*
T0*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
VTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutationInvertPermutation)Training/rnn_model/recurrent/rnn/concat_2*
_output_shapes
:*
T0
ł
NTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose	Transpose:Training/gradients/Training/rnn_model/Reshape_grad/ReshapeVTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/InvertPermutation*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0
đ
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3,Training/rnn_model/recurrent/rnn/TensorArray-Training/rnn_model/recurrent/rnn/while/Exit_2*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray*
sourceTraining/gradients*
_output_shapes

:: 

{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity-Training/rnn_model/recurrent/rnn/while/Exit_2^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*?
_class5
31loc:@Training/rnn_model/recurrent/rnn/TensorArray
Ć
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV37Training/rnn_model/recurrent/rnn/TensorArrayStack/rangeNTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_1_grad/transpose{Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
_output_shapes
: *
T0
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
Ś
Training/gradients/zerosFill(Training/gradients/zeros/shape_as_tensorTraining/gradients/zeros/Const*
T0*

index_type0*
_output_shapes
:	
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
Ź
Training/gradients/zeros_1Fill*Training/gradients/zeros_1/shape_as_tensor Training/gradients/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	

LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitEnterTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
 
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitEnterTraining/gradients/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
˘
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitEnterTraining/gradients/zeros_1*
parallel_iterations *
_output_shapes
:	*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 
Ź
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_2_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
ľ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_3_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	: 
ľ
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchMergeLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Exit_4_grad/b_exitWTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N*!
_output_shapes
:	: 
Ď
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: : 
Ż
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch

_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 

aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
á
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switchTraining/gradients/b_count_2**
_output_shapes
:	:	*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch
Ż
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch
Ł
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch*
_output_shapes
:	
§
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad/b_switch*
_output_shapes
:	
á
MTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchSwitchPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switchTraining/gradients/b_count_2*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch**
_output_shapes
:	:	
Ż
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_depsNoOpN^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch
Ł
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/SwitchX^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	
§
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1IdentityOTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/Switch:1X^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad/b_switch*
_output_shapes
:	
Ő
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_2_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
Ţ
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_3_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency*
T0*
_output_shapes
:	
Ţ
KTraining/gradients/Training/rnn_model/recurrent/rnn/while/Enter_4_grad/ExitExit_Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency*
T0*
_output_shapes
:	

Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnteraTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
sourceTraining/gradients*
_output_shapes

:: 
š
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter,Training/rnn_model/recurrent/rnn/TensorArray*
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
ä
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*I
_class?
=;loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2
Â
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:	

zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_1*

stack_name *
_output_shapes
:*
	elem_type0

zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context

Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter1Training/rnn_model/recurrent/rnn/while/Identity_1^Training/gradients/Add*
_output_shapes
: *
swap_memory(*
T0
×
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
: *
	elem_type0
ˇ
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerZ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2d^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2\^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
Ö
sTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpb^Training/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1u^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
§
{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentitytTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*
_class}
{yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
_output_shapes
:	
č
}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_2_grad/tuple/control_dependency_1t^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
_output_shapes
: *
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad/b_switch
Ě
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
ś
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
Ô
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	

NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_like*
T0*
_output_shapes
:	
ç
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/ConstConst*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ź
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_accStackV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Const*
	elem_type0
*F
_class<
:8loc:@Training/rnn_model/recurrent/rnn/while/GreaterEqual*

stack_name *
_output_shapes
:
Ě
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ĺ
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2StackPushV2TTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Enter3Training/rnn_model/recurrent/rnn/while/GreaterEqual^Training/gradients/Add*
T0
*
_output_shapes
:*
swap_memory(

YTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2
StackPopV2_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:*
	elem_type0

ę
_Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2/EnterEnterTTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(

PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_3_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	

XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
¤
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
_output_shapes
:	
Ş
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	
Ě
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
ś
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
Ô
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeFillbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/shape_as_tensorXTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	

NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_like*
_output_shapes
:	*
T0

PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2RTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/zeros_likeaTraining/gradients/Training/rnn_model/recurrent/rnn/while/Merge_4_grad/tuple/control_dependency_1*
_output_shapes
:	*
T0

XTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_depsNoOpO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1
¤
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyIdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/SelectY^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
_output_shapes
:	
Ş
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1IdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1Y^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
_output_shapes
:	
Ę
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorConst^Training/gradients/Sub*
dtype0*
_output_shapes
:*
valueB"      
´
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/ConstConst^Training/gradients/Sub*
valueB
 *    *
dtype0*
_output_shapes
: 
Î
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_likeFill`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/shape_as_tensorVTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
:	
Ş
LTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectSelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyPTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like*
T0*
_output_shapes
:	
Ź
NTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1SelectYTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPopV2PTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/zeros_like{Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*
_output_shapes
:	
ţ
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_depsNoOpM^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectO^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1

^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependencyIdentityLTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/SelectW^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
_output_shapes
:	*
T0*_
_classU
SQloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select
˘
`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1IdentityNTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1W^Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/group_deps*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/Select_1*
_output_shapes
:	
ý
Training/gradients/AddNAddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependency_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_grad/tuple/control_dependency_1*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select_1*
N*
_output_shapes
:	
ű
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulMulTraining/gradients/AddN]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*
_output_shapes
:	
ď
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Č
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Const*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*

stack_name *
_output_shapes
:*
	elem_type0
Ô
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Ö
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1^Training/gradients/Add*
T0*
_output_shapes
:	*
swap_memory(

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
:	
ň
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
˙
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1MulTraining/gradients/AddN_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	
ô
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/ConstConst*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ď
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Const*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2*

stack_name *
_output_shapes
:*
	elem_type0
Ř
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ý
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2^Training/gradients/Add*
T0*
_output_shapes
:	*
swap_memory(

_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	*
	elem_type0
ö
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1
ş
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
_output_shapes
:	*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul
Ŕ
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1*
_output_shapes
:	

WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_2_grad_1/NextIterationNextIteration}Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
á
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency*
_output_shapes
:	*
T0
Ř
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	
÷
Training/gradients/AddN_1AddNbTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependency_1XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1_grad/TanhGrad*
N*
_output_shapes
:	*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1

_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_depsNoOp^Training/gradients/AddN_1
˙
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependencyIdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1*
_output_shapes
:	

iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1IdentityTraining/gradients/AddN_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/group_deps*
_output_shapes
:	*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select_1
Ç
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulMulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2*
T0*
_output_shapes
:	
ç
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/ConstConst*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ž
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_accStackV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Const*D
_class:
86loc:@Training/rnn_model/recurrent/rnn/while/Identity_3*

stack_name *
_output_shapes
:*
	elem_type0
Đ
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ě
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2StackPushV2VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Enter1Training/rnn_model/recurrent/rnn/while/Identity_3^Training/gradients/Add*
_output_shapes
:	*
swap_memory(*
T0

[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2
StackPopV2aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	*
	elem_type0
î
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPopV2/EnterEnterVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ë
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1MulgTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	
đ
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/ConstConst*K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
É
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Const*K
_classA
?=loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
Ô
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
×
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Enter8Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid^Training/gradients/Add*
T0*
_output_shapes
:	*
swap_memory(

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	*
	elem_type0
ň
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_depsNoOpQ^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/MulS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1
˛
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependencyIdentityPTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
T0*c
_classY
WUloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul*
_output_shapes
:	
¸
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1IdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/group_deps*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1*
_output_shapes
:	
Í
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2*
_output_shapes
:	*
T0
í
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/ConstConst*H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ć
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_accStackV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Const*H
_class>
<:loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
Ô
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
Ô
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Enter5Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh^Training/gradients/Add*
T0*
_output_shapes
:	*
swap_memory(

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	*
	elem_type0
ň
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnterXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ń
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1MuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1_grad/tuple/control_dependency_1_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2*
T0*
_output_shapes
:	
ô
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/ConstConst*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ď
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_accStackV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*M
_classC
A?loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1
Ř
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context
Ý
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Enter:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1^Training/gradients/Add*
_output_shapes
:	*
swap_memory(*
T0

_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^Training/gradients/Sub*
	elem_type0*
_output_shapes
:	
ö
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context

_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_depsNoOpS^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/MulU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1
ş
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependencyIdentityRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
_output_shapes
:	*
T0*e
_class[
YWloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul
Ŕ
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1IdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1`^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/group_deps*
_output_shapes
:	*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1
Ű
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPopV2eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:	

Training/gradients/AddN_2AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/tuple/control_dependencygTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/tuple/control_dependency_1*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select*
N*
_output_shapes
:	
á
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGrad_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPopV2gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency*
_output_shapes
:	*
T0
Ö
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradTanhGrad]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/tuple/control_dependency_1*
_output_shapes
:	*
T0
ź
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
°
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1Const^Training/gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
â
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ShapeTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ů
PTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumSum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGradbTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
˝
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeReshapePTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/SumRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:	
Ý
RTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1Sum\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_grad/SigmoidGraddTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ş
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1ReshapeRTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Sum_1TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_depsNoOpU^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/ReshapeW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1
ş
eTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependencyIdentityTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape*
_output_shapes
:	
ˇ
gTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency_1IdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1^^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/group_deps*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/Reshape_1*
_output_shapes
: 
­
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_3_grad_1/NextIterationNextIterationTraining/gradients/AddN_2*
T0*
_output_shapes
:	
ü
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatConcatV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1_grad/SigmoidGradVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_grad/TanhGradeTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/add_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2_grad/SigmoidGrad[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/Const*
T0*
N*
_output_shapes
:	*

Tidx0
ś
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
˙
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:
 
aTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_depsNoOp]^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat
Ä
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concatb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/split_grad/concat*
_output_shapes
:	
Đ
kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identity\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGradb^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*o
_classe
caloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
ů
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulMatMuliTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/Enter*
_output_shapes
:	*
transpose_a( *
transpose_b(*
T0
Ć
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
parallel_iterations * 
_output_shapes
:
*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(

XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1MatMulcTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
ő
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/ConstConst*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ô
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Const*J
_class@
><loc:@Training/rnn_model/recurrent/rnn/while/lstm_cell/concat*

stack_name *
_output_shapes
:*
	elem_type0
ŕ
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*D

frame_name64Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(
â
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Enter7Training/rnn_model/recurrent/rnn/while/lstm_cell/concat^Training/gradients/Add*
T0*
_output_shapes
:	*
swap_memory(
§
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^Training/gradients/Sub*
_output_shapes
:	*
	elem_type0
ţ
iTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnter^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant(

`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_depsNoOpW^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMulY^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1
Ä
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependencyIdentityVTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMula^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*i
_class_
][loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul
Ë
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityXTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/group_deps*
T0*k
_classa
_]loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1* 
_output_shapes
:

Ť
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueB*    *
dtype0*
_output_shapes	
:
ň
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1Enter\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes	
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
Ţ
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Merge^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_1dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIteration*
N*
_output_shapes
	:: *
T0

]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/SwitchSwitch^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_2Training/gradients/b_count_2*
T0*"
_output_shapes
::
Ő
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/AddAdd_Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch:1kTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:
÷
dTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes	
:
ë
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3Exit]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/Switch*
_output_shapes	
:*
T0
°
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
Ż
TTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/RankConst^Training/gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
­
STraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modFloorModUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConstTTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
ż
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeConst^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:
Á
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1Const^Training/gradients/Sub*
valueB"      *
dtype0*
_output_shapes
:

\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetConcatOffsetSTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/modUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ShapeWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
´
UTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceSlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffsetUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape*
_output_shapes
:	*
Index0*
T0
ş
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1SlicehTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/ConcatOffset:1WTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes
:	

`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_depsNoOpV^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/SliceX^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1
Â
hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencyIdentityUTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slicea^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice*
_output_shapes
:	
Č
jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1IdentityWTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1a^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/group_deps*
T0*j
_class`
^\loc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/Slice_1*
_output_shapes
:	
´
[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
*    *
dtype0* 
_output_shapes
:

ő
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1Enter[Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
ŕ
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Merge]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_1cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
: 

\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/SwitchSwitch]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_2Training/gradients/b_count_2*,
_output_shapes
:
:
*
T0
×
YTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/AddAdd^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch:1jTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
*
T0
ú
cTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationYTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Add* 
_output_shapes
:
*
T0
î
]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3Exit\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:

§
rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^Training/gradients/Sub*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
sourceTraining/gradients*
_output_shapes

:: 
°
xTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter.Training/rnn_model/recurrent/rnn/TensorArray_1*
parallel_iterations *
is_constant(*
_output_shapes
:*W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter
Ű
zTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter[Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
ß
nTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityzTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1s^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*Q
_classG
ECloc:@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
ú
tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3rTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2hTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependencynTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 

Training/gradients/AddN_3AddN`Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/tuple/control_dependencyjTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/concat_grad/tuple/control_dependency_1*
T0*a
_classW
USloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_2_grad/Select*
N*
_output_shapes
:	
Ł
^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ń
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *W

frame_nameIGTraining/gradients/Training/rnn_model/recurrent/rnn/while/while_context
ß
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 

_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Training/gradients/b_count_2*
T0*
_output_shapes
: : 
Ý
\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAddaTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1tTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
ö
fTraining/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration\Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
ę
`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit_Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
­
WTraining/gradients/Training/rnn_model/recurrent/rnn/while/Switch_4_grad_1/NextIterationNextIterationTraining/gradients/AddN_3*
T0*
_output_shapes
:	
ž
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3.Training/rnn_model/recurrent/rnn/TensorArray_1`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
sourceTraining/gradients*
_output_shapes

:: 
ý
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*A
_class7
53loc:@Training/rnn_model/recurrent/rnn/TensorArray_1*
_output_shapes
: 
Ř
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV39Training/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_shape:
ű
Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOp^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3a^Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3

Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*
_class
loc:@Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity`Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3^Training/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
_output_shapes
: *
T0*s
_classi
geloc:@Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
ˇ
TTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutationInvertPermutation'Training/rnn_model/recurrent/rnn/concat*
T0*
_output_shapes
:

LTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose	TransposeTraining/gradients/Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyTTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/InvertPermutation*
Tperm0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙

:Training/gradients/Training/cnn_model/Reshape_2_grad/ShapeShapeTraining/cnn_model/dense/Relu*
T0*
out_type0*
_output_shapes
:

<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeReshapeLTraining/gradients/Training/rnn_model/recurrent/rnn/transpose_grad/transpose:Training/gradients/Training/cnn_model/Reshape_2_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ú
>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradReluGrad<Training/gradients/Training/cnn_model/Reshape_2_grad/ReshapeTraining/cnn_model/dense/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
DTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradBiasAddGrad>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0
Ů
ITraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_depsNoOpE^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad?^Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad
ď
QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/Relu_grad/ReluGrad*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
đ
STraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1IdentityDTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGradJ^Training/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*W
_classM
KIloc:@Training/gradients/Training/cnn_model/dense/BiasAdd_grad/BiasAddGrad

>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulMatMulQTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependencycnn_model/dense/kernel/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 

@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1MatMulTraining/cnn_model/Reshape_1QTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
*
transpose_a(*
transpose_b( *
T0
Ô
HTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_depsNoOp?^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulA^Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1
í
PTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependencyIdentity>Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMulI^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*Q
_classG
ECloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul
ë
RTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1Identity@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1I^Training/gradients/Training/cnn_model/dense/MatMul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@Training/gradients/Training/cnn_model/dense/MatMul_grad/MatMul_1* 
_output_shapes
:

°
:Training/gradients/Training/cnn_model/Reshape_1_grad/ShapeShape6Training/cnn_model/convolution/max_pooling2d_4/MaxPool*
T0*
out_type0*
_output_shapes
:

<Training/gradients/Training/cnn_model/Reshape_1_grad/ReshapeReshapePTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency:Training/gradients/Training/cnn_model/Reshape_1_grad/Shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu6Training/cnn_model/convolution/max_pooling2d_4/MaxPool<Training/gradients/Training/cnn_model/Reshape_1_grad/Reshape*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC*
strides


MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_4/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_4/Relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
î
STraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0

XTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad
ł
`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Relu_grad/ReluGrad*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
bTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
˙
MTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Ľ
LTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:

ZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_4/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0
ü
[Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_3/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency*
paddingSAME*(
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

WTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput
Ë
_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
aTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*(
_output_shapes
:
˝
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu6Training/cnn_model/convolution/max_pooling2d_3/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

*
T0*
data_formatNHWC*
strides


MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_3/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_3/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

*
T0
î
STraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

XTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad
ł
`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Relu_grad/ReluGrad*0
_output_shapes
:˙˙˙˙˙˙˙˙˙


Ź
bTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
˙
MTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_2/MaxPool*cnn_model/convolution/conv2d_3/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
Ľ
LTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/ConstConst*
dtype0*
_output_shapes
:*%
valueB"      @      

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
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ű
[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6Training/cnn_model/convolution/max_pooling2d_2/MaxPoolLTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Const`Training/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency*'
_output_shapes
:@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

WTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput
Ę
_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

@
Ć
aTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@
ź
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu6Training/cnn_model/convolution/max_pooling2d_2/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
data_formatNHWC*
strides


MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_2/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_2/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
í
STraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0

XTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad
˛
`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Relu_grad/ReluGrad
Ť
bTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
˙
MTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeNShapeN6Training/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
Ľ
LTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ConstConst*%
valueB"          @   *
dtype0*
_output_shapes
:

ZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_2/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations

ú
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

WTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput
Ę
_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropInput
Ĺ
aTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/group_deps*&
_output_shapes
: @*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/Conv2DBackpropFilter
ź
ZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu6Training/cnn_model/convolution/max_pooling2d_1/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( 

MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradReluGradZTraining/gradients/Training/cnn_model/convolution/max_pooling2d_1/MaxPool_grad/MaxPoolGrad,Training/cnn_model/convolution/conv2d_1/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( 
í
STraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

XTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_depsNoOpT^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradN^Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad
˛
`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentityMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( 
Ť
bTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1IdentitySTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGradY^Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
ý
MTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeNShapeN4Training/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
Ľ
LTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:

ZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputMTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/ShapeN*cnn_model/convolution/conv2d_1/kernel/read`Training/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ř
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

WTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_depsNoOp\^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter[^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput
Ę
_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentityZTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInputX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*m
_classc
a_loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙((
Ĺ
aTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity[Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilterX^Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*n
_classd
b`loc:@Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
ś
XTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu4Training/cnn_model/convolution/max_pooling2d/MaxPool_Training/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP

KTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradReluGradXTraining/gradients/Training/cnn_model/convolution/max_pooling2d/MaxPool_grad/MaxPoolGrad*Training/cnn_model/convolution/conv2d/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
é
QTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradBiasAddGradKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

VTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_depsNoOpR^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradL^Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad
Ş
^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependencyIdentityKTraining/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
T0*^
_classT
RPloc:@Training/gradients/Training/cnn_model/convolution/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP
Ł
`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1IdentityQTraining/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGradW^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
ß
KTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeNShapeNTraining/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
Ł
JTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ConstConst*%
valueB"            *
dtype0*
_output_shapes
:

XTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputKTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/ShapeN(cnn_model/convolution/conv2d/kernel/read^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ř
YTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterTraining/cnn_model/ReshapeJTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Const^Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

UTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_depsNoOpZ^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterY^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput
Â
]Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependencyIdentityXTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInputV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*k
_classa
_]loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropInput
˝
_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1IdentityYTraining/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilterV^Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/group_deps*
T0*l
_classb
`^loc:@Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:

"Training/beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *fff?
Ž
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
ß
Training/beta1_power/AssignAssignTraining/beta1_power"Training/beta1_power/initial_value*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 

Training/beta1_power/readIdentityTraining/beta1_power*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 

"Training/beta2_power/initial_valueConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB
 *wž?*
dtype0*
_output_shapes
: 
Ž
Training/beta2_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
	container 
ß
Training/beta2_power/AssignAssignTraining/beta2_power"Training/beta2_power/initial_value*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: 

Training/beta2_power/readIdentityTraining/beta2_power*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
×
:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
ä
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
ą
/cnn_model/convolution/conv2d/kernel/Adam/AssignAssign(cnn_model/convolution/conv2d/kernel/Adam:cnn_model/convolution/conv2d/kernel/Adam/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
Ě
-cnn_model/convolution/conv2d/kernel/Adam/readIdentity(cnn_model/convolution/conv2d/kernel/Adam*&
_output_shapes
:*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
Ů
<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
ć
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
ˇ
1cnn_model/convolution/conv2d/kernel/Adam_1/AssignAssign*cnn_model/convolution/conv2d/kernel/Adam_1<cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zeros*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel
Đ
/cnn_model/convolution/conv2d/kernel/Adam_1/readIdentity*cnn_model/convolution/conv2d/kernel/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*&
_output_shapes
:
ť
8cnn_model/convolution/conv2d/bias/Adam/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
Č
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

-cnn_model/convolution/conv2d/bias/Adam/AssignAssign&cnn_model/convolution/conv2d/bias/Adam8cnn_model/convolution/conv2d/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
ş
+cnn_model/convolution/conv2d/bias/Adam/readIdentity&cnn_model/convolution/conv2d/bias/Adam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:
˝
:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zerosConst*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
Ę
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
Ł
/cnn_model/convolution/conv2d/bias/Adam_1/AssignAssign(cnn_model/convolution/conv2d/bias/Adam_1:cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
ž
-cnn_model/convolution/conv2d/bias/Adam_1/readIdentity(cnn_model/convolution/conv2d/bias/Adam_1*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
:
ß
Lcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             
Á
Bcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ó
<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0*&
_output_shapes
: 
č
*cnn_model/convolution/conv2d_1/kernel/Adam
VariableV2*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
š
1cnn_model/convolution/conv2d_1/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_1/kernel/Adam<cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
Ň
/cnn_model/convolution/conv2d_1/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_1/kernel/Adam*&
_output_shapes
: *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel
á
Ncnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*%
valueB"             *
dtype0*
_output_shapes
:
Ă
Dcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ů
>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*

index_type0*&
_output_shapes
: 
ę
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
ż
3cnn_model/convolution/conv2d_1/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_1/kernel/Adam_1>cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
Ö
1cnn_model/convolution/conv2d_1/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_1/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*&
_output_shapes
: 
ż
:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    
Ě
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
Ľ
/cnn_model/convolution/conv2d_1/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_1/bias/Adam:cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias
Ŕ
-cnn_model/convolution/conv2d_1/bias/Adam/readIdentity(cnn_model/convolution/conv2d_1/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
Á
<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
valueB *    
Î
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
Ť
1cnn_model/convolution/conv2d_1/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_1/bias/Adam_1<cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
validate_shape(*
_output_shapes
: 
Ä
/cnn_model/convolution/conv2d_1/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_1/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
_output_shapes
: 
ß
Lcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
Á
Bcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ó
<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0*&
_output_shapes
: @
č
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
š
1cnn_model/convolution/conv2d_2/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_2/kernel/Adam<cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @
Ň
/cnn_model/convolution/conv2d_2/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_2/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
á
Ncnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:
Ă
Dcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ů
>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*

index_type0*&
_output_shapes
: @
ę
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
ż
3cnn_model/convolution/conv2d_2/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_2/kernel/Adam_1>cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ö
1cnn_model/convolution/conv2d_2/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_2/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*&
_output_shapes
: @
ż
:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:@*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    
Ě
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
Ľ
/cnn_model/convolution/conv2d_2/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_2/bias/Adam:cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
validate_shape(*
_output_shapes
:@
Ŕ
-cnn_model/convolution/conv2d_2/bias/Adam/readIdentity(cnn_model/convolution/conv2d_2/bias/Adam*
_output_shapes
:@*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias
Á
<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@
Î
*cnn_model/convolution/conv2d_2/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
	container *
shape:@
Ť
1cnn_model/convolution/conv2d_2/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_2/bias/Adam_1<cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias
Ä
/cnn_model/convolution/conv2d_2/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_2/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
_output_shapes
:@
ß
Lcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @      *
dtype0*
_output_shapes
:
Á
Bcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    
Ô
<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0*'
_output_shapes
:@
ę
*cnn_model/convolution/conv2d_3/kernel/Adam
VariableV2*
dtype0*'
_output_shapes
:@*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@
ş
1cnn_model/convolution/conv2d_3/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_3/kernel/Adam<cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
Ó
/cnn_model/convolution/conv2d_3/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_3/kernel/Adam*'
_output_shapes
:@*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel
á
Ncnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*%
valueB"      @      
Ă
Dcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ú
>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*

index_type0*'
_output_shapes
:@
ě
,cnn_model/convolution/conv2d_3/kernel/Adam_1
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
	container *
shape:@*
dtype0*'
_output_shapes
:@
Ŕ
3cnn_model/convolution/conv2d_3/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_3/kernel/Adam_1>cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@
×
1cnn_model/convolution/conv2d_3/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_3/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*'
_output_shapes
:@
Á
:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueB*    *
dtype0*
_output_shapes	
:
Î
(cnn_model/convolution/conv2d_3/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:
Ś
/cnn_model/convolution/conv2d_3/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_3/bias/Adam:cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zeros*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Á
-cnn_model/convolution/conv2d_3/bias/Adam/readIdentity(cnn_model/convolution/conv2d_3/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:
Ă
<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
valueB*    
Đ
*cnn_model/convolution/conv2d_3/bias/Adam_1
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ź
1cnn_model/convolution/conv2d_3/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_3/bias/Adam_1<cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
validate_shape(*
_output_shapes	
:
Ĺ
/cnn_model/convolution/conv2d_3/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_3/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
_output_shapes	
:
ß
Lcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"            
Á
Bcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ő
<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zerosFillLcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorBcnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros/Const*(
_output_shapes
:*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0
ě
*cnn_model/convolution/conv2d_4/kernel/Adam
VariableV2*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:*
dtype0*(
_output_shapes
:
ť
1cnn_model/convolution/conv2d_4/kernel/Adam/AssignAssign*cnn_model/convolution/conv2d_4/kernel/Adam<cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
validate_shape(*(
_output_shapes
:
Ô
/cnn_model/convolution/conv2d_4/kernel/Adam/readIdentity*cnn_model/convolution/conv2d_4/kernel/Adam*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:
á
Ncnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:
Ă
Dcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/ConstConst*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
Ű
>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zerosFillNcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorDcnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros/Const*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*

index_type0*(
_output_shapes
:
î
,cnn_model/convolution/conv2d_4/kernel/Adam_1
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
	container *
shape:
Á
3cnn_model/convolution/conv2d_4/kernel/Adam_1/AssignAssign,cnn_model/convolution/conv2d_4/kernel/Adam_1>cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel
Ř
1cnn_model/convolution/conv2d_4/kernel/Adam_1/readIdentity,cnn_model/convolution/conv2d_4/kernel/Adam_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*(
_output_shapes
:
Á
:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueB*    *
dtype0*
_output_shapes	
:
Î
(cnn_model/convolution/conv2d_4/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:
Ś
/cnn_model/convolution/conv2d_4/bias/Adam/AssignAssign(cnn_model/convolution/conv2d_4/bias/Adam:cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:
Á
-cnn_model/convolution/conv2d_4/bias/Adam/readIdentity(cnn_model/convolution/conv2d_4/bias/Adam*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:
Ă
<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zerosConst*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
valueB*    *
dtype0*
_output_shapes	
:
Đ
*cnn_model/convolution/conv2d_4/bias/Adam_1
VariableV2*
shared_name *6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
Ź
1cnn_model/convolution/conv2d_4/bias/Adam_1/AssignAssign*cnn_model/convolution/conv2d_4/bias/Adam_1<cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
validate_shape(*
_output_shapes	
:
Ĺ
/cnn_model/convolution/conv2d_4/bias/Adam_1/readIdentity*cnn_model/convolution/conv2d_4/bias/Adam_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
_output_shapes	
:
š
=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     
Ł
3cnn_model/dense/kernel/Adam/Initializer/zeros/ConstConst*)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

-cnn_model/dense/kernel/Adam/Initializer/zerosFill=cnn_model/dense/kernel/Adam/Initializer/zeros/shape_as_tensor3cnn_model/dense/kernel/Adam/Initializer/zeros/Const*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0* 
_output_shapes
:

ž
cnn_model/dense/kernel/Adam
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container 
÷
"cnn_model/dense/kernel/Adam/AssignAssigncnn_model/dense/kernel/Adam-cnn_model/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:


 cnn_model/dense/kernel/Adam/readIdentitycnn_model/dense/kernel/Adam*
T0*)
_class
loc:@cnn_model/dense/kernel* 
_output_shapes
:

ť
?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*)
_class
loc:@cnn_model/dense/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
Ľ
5cnn_model/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *)
_class
loc:@cnn_model/dense/kernel*
valueB
 *    

/cnn_model/dense/kernel/Adam_1/Initializer/zerosFill?cnn_model/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor5cnn_model/dense/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
*
T0*)
_class
loc:@cnn_model/dense/kernel*

index_type0
Ŕ
cnn_model/dense/kernel/Adam_1
VariableV2*
shared_name *)
_class
loc:@cnn_model/dense/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

ý
$cnn_model/dense/kernel/Adam_1/AssignAssigncnn_model/dense/kernel/Adam_1/cnn_model/dense/kernel/Adam_1/Initializer/zeros*
T0*)
_class
loc:@cnn_model/dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
Ł
"cnn_model/dense/kernel/Adam_1/readIdentitycnn_model/dense/kernel/Adam_1* 
_output_shapes
:
*
T0*)
_class
loc:@cnn_model/dense/kernel
Ł
+cnn_model/dense/bias/Adam/Initializer/zerosConst*'
_class
loc:@cnn_model/dense/bias*
valueB*    *
dtype0*
_output_shapes	
:
°
cnn_model/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:
ę
 cnn_model/dense/bias/Adam/AssignAssigncnn_model/dense/bias/Adam+cnn_model/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:

cnn_model/dense/bias/Adam/readIdentitycnn_model/dense/bias/Adam*
_output_shapes	
:*
T0*'
_class
loc:@cnn_model/dense/bias
Ľ
-cnn_model/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:*'
_class
loc:@cnn_model/dense/bias*
valueB*    
˛
cnn_model/dense/bias/Adam_1
VariableV2*
shared_name *'
_class
loc:@cnn_model/dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
đ
"cnn_model/dense/bias/Adam_1/AssignAssigncnn_model/dense/bias/Adam_1-cnn_model/dense/bias/Adam_1/Initializer/zeros*
T0*'
_class
loc:@cnn_model/dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

 cnn_model/dense/bias/Adam_1/readIdentitycnn_model/dense/bias/Adam_1*
T0*'
_class
loc:@cnn_model/dense/bias*
_output_shapes	
:
Ý
Ornn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      
Ç
Ernn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    
Ů
?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:

â
-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:

ż
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam?rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:

Ő
2rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/readIdentity-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:

ß
Qrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB"      *
dtype0*
_output_shapes
:
É
Grnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ß
Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zerosFillQrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorGrnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*

index_type0* 
_output_shapes
:

ä
/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
	container *
shape:

Ĺ
6rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/AssignAssign/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:

Ů
4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/readIdentity/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel* 
_output_shapes
:

Ó
Mrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:*
dtype0*
_output_shapes
:
Ă
Crnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/ConstConst*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
Ě
=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zerosFillMrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorCrnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros/Const*
_output_shapes	
:*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0
Ô
+rnn_model/recurrent/rnn/lstm_cell/bias/Adam
VariableV2*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
˛
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam/AssignAssign+rnn_model/recurrent/rnn/lstm_cell/bias/Adam=rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:
Ę
0rnn_model/recurrent/rnn/lstm_cell/bias/Adam/readIdentity+rnn_model/recurrent/rnn/lstm_cell/bias/Adam*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:
Ő
Ornn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB:
Ĺ
Ernn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
valueB
 *    
Ň
?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zerosFillOrnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorErnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros/Const*
_output_shapes	
:*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*

index_type0
Ö
-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1
VariableV2*
shared_name *9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
¸
4rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/AssignAssign-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1?rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
validate_shape(*
_output_shapes	
:
Î
2rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/readIdentity-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1*
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias*
_output_shapes	
:
ł
:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

0logits/dense/kernel/Adam/Initializer/zeros/ConstConst*&
_class
loc:@logits/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

*logits/dense/kernel/Adam/Initializer/zerosFill:logits/dense/kernel/Adam/Initializer/zeros/shape_as_tensor0logits/dense/kernel/Adam/Initializer/zeros/Const*
T0*&
_class
loc:@logits/dense/kernel*

index_type0*
_output_shapes
:	
ś
logits/dense/kernel/Adam
VariableV2*&
_class
loc:@logits/dense/kernel*
	container *
shape:	*
dtype0*
_output_shapes
:	*
shared_name 
ę
logits/dense/kernel/Adam/AssignAssignlogits/dense/kernel/Adam*logits/dense/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel

logits/dense/kernel/Adam/readIdentitylogits/dense/kernel/Adam*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	
ľ
<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*&
_class
loc:@logits/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

2logits/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *&
_class
loc:@logits/dense/kernel*
valueB
 *    

,logits/dense/kernel/Adam_1/Initializer/zerosFill<logits/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor2logits/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*&
_class
loc:@logits/dense/kernel*

index_type0*
_output_shapes
:	
¸
logits/dense/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes
:	*
shared_name *&
_class
loc:@logits/dense/kernel*
	container *
shape:	
đ
!logits/dense/kernel/Adam_1/AssignAssignlogits/dense/kernel/Adam_1,logits/dense/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:	*
use_locking(*
T0*&
_class
loc:@logits/dense/kernel

logits/dense/kernel/Adam_1/readIdentitylogits/dense/kernel/Adam_1*
T0*&
_class
loc:@logits/dense/kernel*
_output_shapes
:	

(logits/dense/bias/Adam/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
¨
logits/dense/bias/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@logits/dense/bias*
	container 
Ý
logits/dense/bias/Adam/AssignAssignlogits/dense/bias/Adam(logits/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:

logits/dense/bias/Adam/readIdentitylogits/dense/bias/Adam*
T0*$
_class
loc:@logits/dense/bias*
_output_shapes
:

*logits/dense/bias/Adam_1/Initializer/zerosConst*$
_class
loc:@logits/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
Ş
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
ă
logits/dense/bias/Adam_1/AssignAssignlogits/dense/bias/Adam_1*logits/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@logits/dense/bias*
validate_shape(*
_output_shapes
:

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
 *wž?*
dtype0*
_output_shapes
: 
Z
Training/Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
Í
BTraining/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d/kernel(cnn_model/convolution/conv2d/kernel/Adam*cnn_model/convolution/conv2d/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon_Training/gradients/Training/cnn_model/convolution/conv2d/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d/kernel*
use_nesterov( *&
_output_shapes
:
¸
@Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdam	ApplyAdam!cnn_model/convolution/conv2d/bias&cnn_model/convolution/conv2d/bias/Adam(cnn_model/convolution/conv2d/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon`Training/gradients/Training/cnn_model/convolution/conv2d/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Ů
DTraining/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_1/kernel*cnn_model/convolution/conv2d_1/kernel/Adam,cnn_model/convolution/conv2d_1/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_1/kernel*
use_nesterov( *&
_output_shapes
: *
use_locking( 
Ä
BTraining/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_1/bias(cnn_model/convolution/conv2d_1/bias/Adam*cnn_model/convolution/conv2d_1/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_1/bias*
use_nesterov( *
_output_shapes
: 
Ů
DTraining/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_2/kernel*cnn_model/convolution/conv2d_2/kernel/Adam,cnn_model/convolution/conv2d_2/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_2/kernel*
use_nesterov( *&
_output_shapes
: @
Ä
BTraining/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_2/bias(cnn_model/convolution/conv2d_2/bias/Adam*cnn_model/convolution/conv2d_2/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_2/bias*
use_nesterov( *
_output_shapes
:@
Ú
DTraining/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_3/kernel*cnn_model/convolution/conv2d_3/kernel/Adam,cnn_model/convolution/conv2d_3/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_3/kernel*
use_nesterov( *'
_output_shapes
:@*
use_locking( 
Ĺ
BTraining/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_3/bias(cnn_model/convolution/conv2d_3/bias/Adam*cnn_model/convolution/conv2d_3/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_3/bias*
use_nesterov( *
_output_shapes	
:*
use_locking( 
Ű
DTraining/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam	ApplyAdam%cnn_model/convolution/conv2d_4/kernel*cnn_model/convolution/conv2d_4/kernel/Adam,cnn_model/convolution/conv2d_4/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonaTraining/gradients/Training/cnn_model/convolution/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*8
_class.
,*loc:@cnn_model/convolution/conv2d_4/kernel*
use_nesterov( *(
_output_shapes
:
Ĺ
BTraining/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdam	ApplyAdam#cnn_model/convolution/conv2d_4/bias(cnn_model/convolution/conv2d_4/bias/Adam*cnn_model/convolution/conv2d_4/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonbTraining/gradients/Training/cnn_model/convolution/conv2d_4/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@cnn_model/convolution/conv2d_4/bias*
use_nesterov( *
_output_shapes	
:
ů
5Training/Adam/update_cnn_model/dense/kernel/ApplyAdam	ApplyAdamcnn_model/dense/kernelcnn_model/dense/kernel/Adamcnn_model/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonRTraining/gradients/Training/cnn_model/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@cnn_model/dense/kernel*
use_nesterov( * 
_output_shapes
:

ë
3Training/Adam/update_cnn_model/dense/bias/ApplyAdam	ApplyAdamcnn_model/dense/biascnn_model/dense/bias/Adamcnn_model/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonSTraining/gradients/Training/cnn_model/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*'
_class
loc:@cnn_model/dense/bias*
use_nesterov( *
_output_shapes	
:
Ţ
GTraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam	ApplyAdam(rnn_model/recurrent/rnn/lstm_cell/kernel-rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon]Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*;
_class1
/-loc:@rnn_model/recurrent/rnn/lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
*
use_locking( 
Đ
ETraining/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdam	ApplyAdam&rnn_model/recurrent/rnn/lstm_cell/bias+rnn_model/recurrent/rnn/lstm_cell/bias/Adam-rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilon^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0*9
_class/
-+loc:@rnn_model/recurrent/rnn/lstm_cell/bias
ć
2Training/Adam/update_logits/dense/kernel/ApplyAdam	ApplyAdamlogits/dense/kernellogits/dense/kernel/Adamlogits/dense/kernel/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonOTraining/gradients/Training/logits/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@logits/dense/kernel*
use_nesterov( *
_output_shapes
:	
Ř
0Training/Adam/update_logits/dense/bias/ApplyAdam	ApplyAdamlogits/dense/biaslogits/dense/bias/Adamlogits/dense/bias/Adam_1Training/beta1_power/readTraining/beta2_power/readTraining/ExponentialDecayTraining/Adam/beta1Training/Adam/beta2Training/Adam/epsilonPTraining/gradients/Training/logits/dense/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*$
_class
loc:@logits/dense/bias
ż	
Training/Adam/mulMulTraining/beta1_power/readTraining/Adam/beta1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
_output_shapes
: 
Ç
Training/Adam/AssignAssignTraining/beta1_powerTraining/Adam/mul*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
Á	
Training/Adam/mul_1MulTraining/beta2_power/readTraining/Adam/beta2A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam*
_output_shapes
: *
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias
Ë
Training/Adam/Assign_1AssignTraining/beta2_powerTraining/Adam/mul_1*
T0*4
_class*
(&loc:@cnn_model/convolution/conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
ě
Training/Adam/updateNoOp^Training/Adam/Assign^Training/Adam/Assign_1A^Training/Adam/update_cnn_model/convolution/conv2d/bias/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_1/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_1/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_2/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_2/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_3/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_3/kernel/ApplyAdamC^Training/Adam/update_cnn_model/convolution/conv2d_4/bias/ApplyAdamE^Training/Adam/update_cnn_model/convolution/conv2d_4/kernel/ApplyAdam4^Training/Adam/update_cnn_model/dense/bias/ApplyAdam6^Training/Adam/update_cnn_model/dense/kernel/ApplyAdam1^Training/Adam/update_logits/dense/bias/ApplyAdam3^Training/Adam/update_logits/dense/kernel/ApplyAdamF^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/bias/ApplyAdamH^Training/Adam/update_rnn_model/recurrent/rnn/lstm_cell/kernel/ApplyAdam

Training/Adam/valueConst^Training/Adam/update*'
_class
loc:@Training/global_step*
value	B :*
dtype0*
_output_shapes
: 
˘
Training/Adam	AssignAddTraining/global_stepTraining/Adam/value*
use_locking( *
T0*'
_class
loc:@Training/global_step*
_output_shapes
: 
g
Validation/SequenceMask/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ż
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
Validation/SequenceMask/Const_2Const*
value	B :*
dtype0*
_output_shapes
: 
ś
Validation/SequenceMask/RangeRangeValidation/SequenceMask/Const_1Validation/SequenceMask/MaxValidation/SequenceMask/Const_2*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
&Validation/SequenceMask/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
˝
"Validation/SequenceMask/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4&Validation/SequenceMask/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

Validation/SequenceMask/CastCast"Validation/SequenceMask/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0

Validation/SequenceMask/LessLessValidation/SequenceMask/RangeValidation/SequenceMask/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Validation/SequenceMask/Cast_1CastValidation/SequenceMask/Less*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0

d
Validation/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
 
Validation/ExpandDims
ExpandDimsValidation/SequenceMask/Cast_1Validation/ExpandDims/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
"Validation/cnn_model/Reshape/shapeConst*%
valueB"˙˙˙˙P   P      *
dtype0*
_output_shapes
:
Ă
Validation/cnn_model/ReshapeReshape.validation_input_pipeline/batch_join_and_pad:2"Validation/cnn_model/Reshape/shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0*
Tshape0

5Validation/cnn_model/convolution/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¨
.Validation/cnn_model/convolution/conv2d/Conv2DConv2DValidation/cnn_model/Reshape(cnn_model/convolution/conv2d/kernel/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ă
/Validation/cnn_model/convolution/conv2d/BiasAddBiasAdd.Validation/cnn_model/convolution/conv2d/Conv2D&cnn_model/convolution/conv2d/bias/read*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0

,Validation/cnn_model/convolution/conv2d/ReluRelu/Validation/cnn_model/convolution/conv2d/BiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙PP*
T0
ű
6Validation/cnn_model/convolution/max_pooling2d/MaxPoolMaxPool,Validation/cnn_model/convolution/conv2d/Relu*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙((*
T0*
data_formatNHWC*
strides


7Validation/cnn_model/convolution/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ć
0Validation/cnn_model/convolution/conv2d_1/Conv2DConv2D6Validation/cnn_model/convolution/max_pooling2d/MaxPool*cnn_model/convolution/conv2d_1/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( *
	dilations
*
T0
é
1Validation/cnn_model/convolution/conv2d_1/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_1/Conv2D(cnn_model/convolution/conv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( 
Ł
.Validation/cnn_model/convolution/conv2d_1/ReluRelu1Validation/cnn_model/convolution/conv2d_1/BiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙(( *
T0
˙
8Validation/cnn_model/convolution/max_pooling2d_1/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_1/Relu*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC*
strides


7Validation/cnn_model/convolution/conv2d_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Č
0Validation/cnn_model/convolution/conv2d_2/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_1/MaxPool*cnn_model/convolution/conv2d_2/kernel/read*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
é
1Validation/cnn_model/convolution/conv2d_2/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_2/Conv2D(cnn_model/convolution/conv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ł
.Validation/cnn_model/convolution/conv2d_2/ReluRelu1Validation/cnn_model/convolution/conv2d_2/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
˙
8Validation/cnn_model/convolution/max_pooling2d_2/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_2/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

@*
T0

7Validation/cnn_model/convolution/conv2d_3/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
É
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
:˙˙˙˙˙˙˙˙˙


ę
1Validation/cnn_model/convolution/conv2d_3/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_3/Conv2D(cnn_model/convolution/conv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙


¤
.Validation/cnn_model/convolution/conv2d_3/ReluRelu1Validation/cnn_model/convolution/conv2d_3/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙



8Validation/cnn_model/convolution/max_pooling2d_3/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_3/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME

7Validation/cnn_model/convolution/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
É
0Validation/cnn_model/convolution/conv2d_4/Conv2DConv2D8Validation/cnn_model/convolution/max_pooling2d_3/MaxPool*cnn_model/convolution/conv2d_4/kernel/read*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ę
1Validation/cnn_model/convolution/conv2d_4/BiasAddBiasAdd0Validation/cnn_model/convolution/conv2d_4/Conv2D(cnn_model/convolution/conv2d_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
.Validation/cnn_model/convolution/conv2d_4/ReluRelu1Validation/cnn_model/convolution/conv2d_4/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

8Validation/cnn_model/convolution/max_pooling2d_4/MaxPoolMaxPool.Validation/cnn_model/convolution/conv2d_4/Relu*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC*
strides

u
$Validation/cnn_model/Reshape_1/shapeConst*
valueB"˙˙˙˙ 	  *
dtype0*
_output_shapes
:
Ę
Validation/cnn_model/Reshape_1Reshape8Validation/cnn_model/convolution/max_pooling2d_4/MaxPool$Validation/cnn_model/Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
!Validation/cnn_model/dense/MatMulMatMulValidation/cnn_model/Reshape_1cnn_model/dense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
ľ
"Validation/cnn_model/dense/BiasAddBiasAdd!Validation/cnn_model/dense/MatMulcnn_model/dense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
Validation/cnn_model/dense/ReluRelu"Validation/cnn_model/dense/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
y
$Validation/cnn_model/Reshape_2/shapeConst*!
valueB"   ˙˙˙˙   *
dtype0*
_output_shapes
:
ľ
Validation/cnn_model/Reshape_2ReshapeValidation/cnn_model/dense/Relu$Validation/cnn_model/Reshape_2/shape*
T0*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
Validation/SequenceMask_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ł
Validation/SequenceMask_1/MaxMax.validation_input_pipeline/batch_join_and_pad:4Validation/SequenceMask_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
ž
Validation/SequenceMask_1/RangeRange!Validation/SequenceMask_1/Const_1Validation/SequenceMask_1/Max!Validation/SequenceMask_1/Const_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
s
(Validation/SequenceMask_1/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Á
$Validation/SequenceMask_1/ExpandDims
ExpandDims.validation_input_pipeline/batch_join_and_pad:4(Validation/SequenceMask_1/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0

Validation/SequenceMask_1/CastCast$Validation/SequenceMask_1/ExpandDims*

SrcT0*
_output_shapes

:*

DstT0

Validation/SequenceMask_1/LessLessValidation/SequenceMask_1/RangeValidation/SequenceMask_1/Cast*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

 Validation/SequenceMask_1/Cast_1CastValidation/SequenceMask_1/Less*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
f
Validation/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ś
Validation/ExpandDims_1
ExpandDims Validation/SequenceMask_1/Cast_1Validation/ExpandDims_1/dim*

Tdim0*
T0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙
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
â
(Validation/rnn_model/recurrent/rnn/rangeRange.Validation/rnn_model/recurrent/rnn/range/start'Validation/rnn_model/recurrent/rnn/Rank.Validation/rnn_model/recurrent/rnn/range/delta*
_output_shapes
:*

Tidx0

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
ý
)Validation/rnn_model/recurrent/rnn/concatConcatV22Validation/rnn_model/recurrent/rnn/concat/values_0(Validation/rnn_model/recurrent/rnn/range.Validation/rnn_model/recurrent/rnn/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
Č
,Validation/rnn_model/recurrent/rnn/transpose	TransposeValidation/cnn_model/Reshape_2)Validation/rnn_model/recurrent/rnn/concat*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0

2Validation/rnn_model/recurrent/rnn/sequence_lengthIdentity.validation_input_pipeline/batch_join_and_pad:4*
T0*
_output_shapes
:

:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1Const*
valueB:*
dtype0*
_output_shapes
:

@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
˝
;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concatConcatV2:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_1@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:

@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ý
:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zerosFill;Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat@Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros/Const*
_output_shapes
:	*
T0*

index_type0

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_3Const*
dtype0*
_output_shapes
:*
valueB:

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4Const*
dtype0*
_output_shapes
:*
valueB:

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5Const*
valueB:*
dtype0*
_output_shapes
:

BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ă
=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1ConcatV2<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_4<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_5BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:

BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1Fill=Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/concat_1BValidation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_6Const*
valueB:*
dtype0*
_output_shapes
:

<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/Const_7Const*
valueB:*
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
(Validation/rnn_model/recurrent/rnn/stackConst*
dtype0*
_output_shapes
:*
valueB:
Ş
(Validation/rnn_model/recurrent/rnn/EqualEqual(Validation/rnn_model/recurrent/rnn/Shape(Validation/rnn_model/recurrent/rnn/stack*
_output_shapes
:*
T0
r
(Validation/rnn_model/recurrent/rnn/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
ś
&Validation/rnn_model/recurrent/rnn/AllAll(Validation/rnn_model/recurrent/rnn/Equal(Validation/rnn_model/recurrent/rnn/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
Â
/Validation/rnn_model/recurrent/rnn/Assert/ConstConst*
dtype0*
_output_shapes
: *c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is 

1Validation/rnn_model/recurrent/rnn/Assert/Const_1Const*
dtype0*
_output_shapes
: *!
valueB B but saw shape: 
Ę
7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0Const*c
valueZBX BRExpected shape for Tensor Validation/rnn_model/recurrent/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 

7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
Č
0Validation/rnn_model/recurrent/rnn/Assert/AssertAssert&Validation/rnn_model/recurrent/rnn/All7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_0(Validation/rnn_model/recurrent/rnn/stack7Validation/rnn_model/recurrent/rnn/Assert/Assert/data_2(Validation/rnn_model/recurrent/rnn/Shape*
T
2*
	summarize
Ć
.Validation/rnn_model/recurrent/rnn/CheckSeqLenIdentity2Validation/rnn_model/recurrent/rnn/sequence_length1^Validation/rnn_model/recurrent/rnn/Assert/Assert*
_output_shapes
:*
T0

*Validation/rnn_model/recurrent/rnn/Shape_1Shape,Validation/rnn_model/recurrent/rnn/transpose*
T0*
out_type0*
_output_shapes
:

6Validation/rnn_model/recurrent/rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

8Validation/rnn_model/recurrent/rnn/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

8Validation/rnn_model/recurrent/rnn/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ş
0Validation/rnn_model/recurrent/rnn/strided_sliceStridedSlice*Validation/rnn_model/recurrent/rnn/Shape_16Validation/rnn_model/recurrent/rnn/strided_slice/stack8Validation/rnn_model/recurrent/rnn/strided_slice/stack_18Validation/rnn_model/recurrent/rnn/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
t
*Validation/rnn_model/recurrent/rnn/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
u
*Validation/rnn_model/recurrent/rnn/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
r
0Validation/rnn_model/recurrent/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ű
+Validation/rnn_model/recurrent/rnn/concat_1ConcatV2*Validation/rnn_model/recurrent/rnn/Const_1*Validation/rnn_model/recurrent/rnn/Const_20Validation/rnn_model/recurrent/rnn/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
s
.Validation/rnn_model/recurrent/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
É
(Validation/rnn_model/recurrent/rnn/zerosFill+Validation/rnn_model/recurrent/rnn/concat_1.Validation/rnn_model/recurrent/rnn/zeros/Const*
T0*

index_type0*
_output_shapes
:	
t
*Validation/rnn_model/recurrent/rnn/Const_3Const*
dtype0*
_output_shapes
:*
valueB: 
Ç
&Validation/rnn_model/recurrent/rnn/MinMin.Validation/rnn_model/recurrent/rnn/CheckSeqLen*Validation/rnn_model/recurrent/rnn/Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
t
*Validation/rnn_model/recurrent/rnn/Const_4Const*
valueB: *
dtype0*
_output_shapes
:
Ç
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
Ö
.Validation/rnn_model/recurrent/rnn/TensorArrayTensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*N
tensor_array_name97Validation/rnn_model/recurrent/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:	*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
×
0Validation/rnn_model/recurrent/rnn/TensorArray_1TensorArrayV30Validation/rnn_model/recurrent/rnn/strided_slice*M
tensor_array_name86Validation/rnn_model/recurrent/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
§
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/ShapeShape,Validation/rnn_model/recurrent/rnn/transpose*
_output_shapes
:*
T0*
out_type0

IValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

KValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

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

AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 

AValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
;Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/rangeRangeAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/startCValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/strided_sliceAValidation/rnn_model/recurrent/rnn/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
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
Ź
*Validation/rnn_model/recurrent/rnn/MaximumMaximum,Validation/rnn_model/recurrent/rnn/Maximum/x&Validation/rnn_model/recurrent/rnn/Max*
T0*
_output_shapes
: 
´
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

.Validation/rnn_model/recurrent/rnn/while/EnterEnter:Validation/rnn_model/recurrent/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
ů
0Validation/rnn_model/recurrent/rnn/while/Enter_1Enter'Validation/rnn_model/recurrent/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context

0Validation/rnn_model/recurrent/rnn/while/Enter_2Enter0Validation/rnn_model/recurrent/rnn/TensorArray:1*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*
is_constant( 

0Validation/rnn_model/recurrent/rnn/while/Enter_3Enter:Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context

0Validation/rnn_model/recurrent/rnn/while/Enter_4Enter<Validation/rnn_model/recurrent/rnn/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ë
.Validation/rnn_model/recurrent/rnn/while/MergeMerge.Validation/rnn_model/recurrent/rnn/while/Enter6Validation/rnn_model/recurrent/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
Ń
0Validation/rnn_model/recurrent/rnn/while/Merge_1Merge0Validation/rnn_model/recurrent/rnn/while/Enter_18Validation/rnn_model/recurrent/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Ń
0Validation/rnn_model/recurrent/rnn/while/Merge_2Merge0Validation/rnn_model/recurrent/rnn/while/Enter_28Validation/rnn_model/recurrent/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
Ú
0Validation/rnn_model/recurrent/rnn/while/Merge_3Merge0Validation/rnn_model/recurrent/rnn/while/Enter_38Validation/rnn_model/recurrent/rnn/while/NextIteration_3*
T0*
N*!
_output_shapes
:	: 
Ú
0Validation/rnn_model/recurrent/rnn/while/Merge_4Merge0Validation/rnn_model/recurrent/rnn/while/Enter_48Validation/rnn_model/recurrent/rnn/while/NextIteration_4*
N*!
_output_shapes
:	: *
T0
ť
-Validation/rnn_model/recurrent/rnn/while/LessLess.Validation/rnn_model/recurrent/rnn/while/Merge3Validation/rnn_model/recurrent/rnn/while/Less/Enter*
T0*
_output_shapes
: 

3Validation/rnn_model/recurrent/rnn/while/Less/EnterEnter0Validation/rnn_model/recurrent/rnn/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Á
/Validation/rnn_model/recurrent/rnn/while/Less_1Less0Validation/rnn_model/recurrent/rnn/while/Merge_15Validation/rnn_model/recurrent/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 

5Validation/rnn_model/recurrent/rnn/while/Less_1/EnterEnter*Validation/rnn_model/recurrent/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
š
3Validation/rnn_model/recurrent/rnn/while/LogicalAnd
LogicalAnd-Validation/rnn_model/recurrent/rnn/while/Less/Validation/rnn_model/recurrent/rnn/while/Less_1*
_output_shapes
: 

1Validation/rnn_model/recurrent/rnn/while/LoopCondLoopCond3Validation/rnn_model/recurrent/rnn/while/LogicalAnd*
_output_shapes
: 

/Validation/rnn_model/recurrent/rnn/while/SwitchSwitch.Validation/rnn_model/recurrent/rnn/while/Merge1Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/while/Merge*
_output_shapes
: : 

1Validation/rnn_model/recurrent/rnn/while/Switch_1Switch0Validation/rnn_model/recurrent/rnn/while/Merge_11Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_1*
_output_shapes
: : 

1Validation/rnn_model/recurrent/rnn/while/Switch_2Switch0Validation/rnn_model/recurrent/rnn/while/Merge_21Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_2*
_output_shapes
: : 

1Validation/rnn_model/recurrent/rnn/while/Switch_3Switch0Validation/rnn_model/recurrent/rnn/while/Merge_31Validation/rnn_model/recurrent/rnn/while/LoopCond**
_output_shapes
:	:	*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_3

1Validation/rnn_model/recurrent/rnn/while/Switch_4Switch0Validation/rnn_model/recurrent/rnn/while/Merge_41Validation/rnn_model/recurrent/rnn/while/LoopCond*
T0*C
_class9
75loc:@Validation/rnn_model/recurrent/rnn/while/Merge_4**
_output_shapes
:	:	

1Validation/rnn_model/recurrent/rnn/while/IdentityIdentity1Validation/rnn_model/recurrent/rnn/while/Switch:1*
T0*
_output_shapes
: 

3Validation/rnn_model/recurrent/rnn/while/Identity_1Identity3Validation/rnn_model/recurrent/rnn/while/Switch_1:1*
T0*
_output_shapes
: 

3Validation/rnn_model/recurrent/rnn/while/Identity_2Identity3Validation/rnn_model/recurrent/rnn/while/Switch_2:1*
T0*
_output_shapes
: 

3Validation/rnn_model/recurrent/rnn/while/Identity_3Identity3Validation/rnn_model/recurrent/rnn/while/Switch_3:1*
T0*
_output_shapes
:	

3Validation/rnn_model/recurrent/rnn/while/Identity_4Identity3Validation/rnn_model/recurrent/rnn/while/Switch_4:1*
T0*
_output_shapes
:	
¤
.Validation/rnn_model/recurrent/rnn/while/add/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
ˇ
,Validation/rnn_model/recurrent/rnn/while/addAdd1Validation/rnn_model/recurrent/rnn/while/Identity.Validation/rnn_model/recurrent/rnn/while/add/y*
T0*
_output_shapes
: 
¸
:Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3TensorArrayReadV3@Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter3Validation/rnn_model/recurrent/rnn/while/Identity_1BValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	

@Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/EnterEnter0Validation/rnn_model/recurrent/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Á
BValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1Enter]Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ü
5Validation/rnn_model/recurrent/rnn/while/GreaterEqualGreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_1;Validation/rnn_model/recurrent/rnn/while/GreaterEqual/Enter*
_output_shapes
:*
T0

;Validation/rnn_model/recurrent/rnn/while/GreaterEqual/EnterEnter.Validation/rnn_model/recurrent/rnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
´
>Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat/axisConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
ľ
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/concatConcatV2:Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV33Validation/rnn_model/recurrent/rnn/while/Identity_4>Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:	

9Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMulMatMul9Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat?Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter*
T0*
_output_shapes
:	*
transpose_a( *
transpose_b( 

?Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/EnterEnter-rnn_model/recurrent/rnn/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context

:Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAddBiasAdd9Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul@Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	

@Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/EnterEnter+rnn_model/recurrent/rnn/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ž
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/ConstConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
¸
BValidation/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dimConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

8Validation/rnn_model/recurrent/rnn/while/lstm_cell/splitSplitBValidation/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim:Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd*@
_output_shapes.
,:	:	:	:	*
	num_split*
T0
ą
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ý
6Validation/rnn_model/recurrent/rnn/while/lstm_cell/addAdd:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:28Validation/rnn_model/recurrent/rnn/while/lstm_cell/add/y*
T0*
_output_shapes
:	
§
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/SigmoidSigmoid6Validation/rnn_model/recurrent/rnn/while/lstm_cell/add*
T0*
_output_shapes
:	
Ř
6Validation/rnn_model/recurrent/rnn/while/lstm_cell/mulMul:Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid3Validation/rnn_model/recurrent/rnn/while/Identity_3*
T0*
_output_shapes
:	
Ť
<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1Sigmoid8Validation/rnn_model/recurrent/rnn/while/lstm_cell/split*
_output_shapes
:	*
T0
Ľ
7Validation/rnn_model/recurrent/rnn/while/lstm_cell/TanhTanh:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:1*
T0*
_output_shapes
:	
ŕ
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_1Mul<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_17Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh*
T0*
_output_shapes
:	
Ű
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1Add6Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_1*
T0*
_output_shapes
:	
­
<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2Sigmoid:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:3*
T0*
_output_shapes
:	
Ľ
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1Tanh8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*
_output_shapes
:	
â
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2Mul<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_29Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1*
T0*
_output_shapes
:	
Ř
/Validation/rnn_model/recurrent/rnn/while/SelectSelect5Validation/rnn_model/recurrent/rnn/while/GreaterEqual5Validation/rnn_model/recurrent/rnn/while/Select/Enter8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
Ő
5Validation/rnn_model/recurrent/rnn/while/Select/EnterEnter(Validation/rnn_model/recurrent/rnn/zeros*
is_constant(*
_output_shapes
:	*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations 
Ř
1Validation/rnn_model/recurrent/rnn/while/Select_1Select5Validation/rnn_model/recurrent/rnn/while/GreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_38Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1*
_output_shapes
:	
Ř
1Validation/rnn_model/recurrent/rnn/while/Select_2Select5Validation/rnn_model/recurrent/rnn/while/GreaterEqual3Validation/rnn_model/recurrent/rnn/while/Identity_48Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
:	
ż
LValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3RValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter3Validation/rnn_model/recurrent/rnn/while/Identity_1/Validation/rnn_model/recurrent/rnn/while/Select3Validation/rnn_model/recurrent/rnn/while/Identity_2*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
_output_shapes
: 
ó
RValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter.Validation/rnn_model/recurrent/rnn/TensorArray*
T0*K
_classA
?=loc:@Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*F

frame_name86Validation/rnn_model/recurrent/rnn/while/while_context
Ś
0Validation/rnn_model/recurrent/rnn/while/add_1/yConst2^Validation/rnn_model/recurrent/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
˝
.Validation/rnn_model/recurrent/rnn/while/add_1Add3Validation/rnn_model/recurrent/rnn/while/Identity_10Validation/rnn_model/recurrent/rnn/while/add_1/y*
T0*
_output_shapes
: 

6Validation/rnn_model/recurrent/rnn/while/NextIterationNextIteration,Validation/rnn_model/recurrent/rnn/while/add*
_output_shapes
: *
T0

8Validation/rnn_model/recurrent/rnn/while/NextIteration_1NextIteration.Validation/rnn_model/recurrent/rnn/while/add_1*
T0*
_output_shapes
: 
¸
8Validation/rnn_model/recurrent/rnn/while/NextIteration_2NextIterationLValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
Ś
8Validation/rnn_model/recurrent/rnn/while/NextIteration_3NextIteration1Validation/rnn_model/recurrent/rnn/while/Select_1*
T0*
_output_shapes
:	
Ś
8Validation/rnn_model/recurrent/rnn/while/NextIteration_4NextIteration1Validation/rnn_model/recurrent/rnn/while/Select_2*
T0*
_output_shapes
:	

-Validation/rnn_model/recurrent/rnn/while/ExitExit/Validation/rnn_model/recurrent/rnn/while/Switch*
_output_shapes
: *
T0

/Validation/rnn_model/recurrent/rnn/while/Exit_1Exit1Validation/rnn_model/recurrent/rnn/while/Switch_1*
_output_shapes
: *
T0

/Validation/rnn_model/recurrent/rnn/while/Exit_2Exit1Validation/rnn_model/recurrent/rnn/while/Switch_2*
T0*
_output_shapes
: 

/Validation/rnn_model/recurrent/rnn/while/Exit_3Exit1Validation/rnn_model/recurrent/rnn/while/Switch_3*
T0*
_output_shapes
:	

/Validation/rnn_model/recurrent/rnn/while/Exit_4Exit1Validation/rnn_model/recurrent/rnn/while/Switch_4*
T0*
_output_shapes
:	

EValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3.Validation/rnn_model/recurrent/rnn/TensorArray/Validation/rnn_model/recurrent/rnn/while/Exit_2*
_output_shapes
: *A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray
Ä
?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/startConst*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
Ä
?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/deltaConst*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
˙
9Validation/rnn_model/recurrent/rnn/TensorArrayStack/rangeRange?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/startEValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArraySizeV3?Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/delta*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

GValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3.Validation/rnn_model/recurrent/rnn/TensorArray9Validation/rnn_model/recurrent/rnn/TensorArrayStack/range/Validation/rnn_model/recurrent/rnn/while/Exit_2*
element_shape:	*A
_class7
53loc:@Validation/rnn_model/recurrent/rnn/TensorArray*
dtype0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
*Validation/rnn_model/recurrent/rnn/Const_5Const*
valueB:*
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
ę
*Validation/rnn_model/recurrent/rnn/range_1Range0Validation/rnn_model/recurrent/rnn/range_1/start)Validation/rnn_model/recurrent/rnn/Rank_10Validation/rnn_model/recurrent/rnn/range_1/delta*
_output_shapes
:*

Tidx0

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

+Validation/rnn_model/recurrent/rnn/concat_2ConcatV24Validation/rnn_model/recurrent/rnn/concat_2/values_0*Validation/rnn_model/recurrent/rnn/range_10Validation/rnn_model/recurrent/rnn/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
ő
.Validation/rnn_model/recurrent/rnn/transpose_1	TransposeGValidation/rnn_model/recurrent/rnn/TensorArrayStack/TensorArrayGatherV3+Validation/rnn_model/recurrent/rnn/concat_2*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tperm0*
T0
s
"Validation/rnn_model/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
ź
Validation/rnn_model/ReshapeReshape.Validation/rnn_model/recurrent/rnn/transpose_1"Validation/rnn_model/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

"Validation/logits/dropout/IdentityIdentityValidation/rnn_model/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
Validation/logits/dense/MatMulMatMul"Validation/logits/dropout/Identitylogits/dense/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Ť
Validation/logits/dense/BiasAddBiasAddValidation/logits/dense/MatMullogits/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
Validation/logits/Reshape/shapeConst*!
valueB"   ˙˙˙˙   *
dtype0*
_output_shapes
:
Ş
Validation/logits/ReshapeReshapeValidation/logits/dense/BiasAddValidation/logits/Reshape/shape*
T0*
Tshape0*+
_output_shapes
:˙˙˙˙˙˙˙˙˙

 Validation/logits_prediction/mulMulValidation/logits/ReshapeValidation/ExpandDims_1*+
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
u
3Validation/logits_prediction/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ć
!Validation/logits_prediction/MeanMean Validation/logits_prediction/mul3Validation/logits_prediction/Mean/reduction_indices*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0

GValidation/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
valueB:*
dtype0*
_output_shapes
:

eValidation/cross_entropy_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits!Validation/logits_prediction/Mean.validation_input_pipeline/batch_join_and_pad:1*
T0*$
_output_shapes
::*
Tlabels0	
m
#Validation/cross_entropy_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ô
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
˝
 Validation/accuracy_stats/ArgMaxArgMax!Validation/logits_prediction/Mean*Validation/accuracy_stats/ArgMax/dimension*
T0*
output_type0	*
_output_shapes
:*

Tidx0

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
Ł
Validation/accuracy_stats/SumSumValidation/accuracy_stats/CastValidation/accuracy_stats/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
}
 Validation/accuracy_stats/Cast_1CastValidation/accuracy_stats/Equal*
_output_shapes
:*

DstT0*

SrcT0

k
!Validation/accuracy_stats/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Š
Validation/accuracy_stats/MeanMean Validation/accuracy_stats/Cast_1!Validation/accuracy_stats/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
k
)Validation/accuracy/predictions/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
ť
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
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
c
lossScalarSummary	loss/tags Training/cross_entropy_loss/Mean*
T0*
_output_shapes
: 
h
accuracy_training/tagsConst*"
valueB Baccuracy_training*
dtype0*
_output_shapes
: 
y
accuracy_trainingScalarSummaryaccuracy_training/tagsTraining/accuracy_stats/Mean*
_output_shapes
: *
T0
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

initNoOp^Training/beta1_power/Assign^Training/beta2_power/Assign^Training/global_step/Assign.^cnn_model/convolution/conv2d/bias/Adam/Assign0^cnn_model/convolution/conv2d/bias/Adam_1/Assign)^cnn_model/convolution/conv2d/bias/Assign0^cnn_model/convolution/conv2d/kernel/Adam/Assign2^cnn_model/convolution/conv2d/kernel/Adam_1/Assign+^cnn_model/convolution/conv2d/kernel/Assign0^cnn_model/convolution/conv2d_1/bias/Adam/Assign2^cnn_model/convolution/conv2d_1/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_1/bias/Assign2^cnn_model/convolution/conv2d_1/kernel/Adam/Assign4^cnn_model/convolution/conv2d_1/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_1/kernel/Assign0^cnn_model/convolution/conv2d_2/bias/Adam/Assign2^cnn_model/convolution/conv2d_2/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_2/bias/Assign2^cnn_model/convolution/conv2d_2/kernel/Adam/Assign4^cnn_model/convolution/conv2d_2/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_2/kernel/Assign0^cnn_model/convolution/conv2d_3/bias/Adam/Assign2^cnn_model/convolution/conv2d_3/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_3/bias/Assign2^cnn_model/convolution/conv2d_3/kernel/Adam/Assign4^cnn_model/convolution/conv2d_3/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_3/kernel/Assign0^cnn_model/convolution/conv2d_4/bias/Adam/Assign2^cnn_model/convolution/conv2d_4/bias/Adam_1/Assign+^cnn_model/convolution/conv2d_4/bias/Assign2^cnn_model/convolution/conv2d_4/kernel/Adam/Assign4^cnn_model/convolution/conv2d_4/kernel/Adam_1/Assign-^cnn_model/convolution/conv2d_4/kernel/Assign!^cnn_model/dense/bias/Adam/Assign#^cnn_model/dense/bias/Adam_1/Assign^cnn_model/dense/bias/Assign#^cnn_model/dense/kernel/Adam/Assign%^cnn_model/dense/kernel/Adam_1/Assign^cnn_model/dense/kernel/Assign^logits/dense/bias/Adam/Assign ^logits/dense/bias/Adam_1/Assign^logits/dense/bias/Assign ^logits/dense/kernel/Adam/Assign"^logits/dense/kernel/Adam_1/Assign^logits/dense/kernel/Assign3^rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Assign5^rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Assign.^rnn_model/recurrent/rnn/lstm_cell/bias/Assign5^rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Assign7^rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Assign0^rnn_model/recurrent/rnn/lstm_cell/kernel/Assign

init_1NoOpB^training_input_pipeline/input_producer/limit_epochs/epochs/AssignD^validation_input_pipeline/input_producer/limit_epochs/epochs/Assign
"

group_depsNoOp^init^init_1""
train_op

Training/Adam"á
	summariesÓ
Đ
<training_input_pipeline/input_producer/fraction_of_32_full:0
Atraining_input_pipeline/batch_join_and_pad/fraction_of_320_full:0
>validation_input_pipeline/input_producer/fraction_of_32_full:0
Cvalidation_input_pipeline/batch_join_and_pad/fraction_of_320_full:0
loss:0
accuracy_training:0
accuracy_avg:0

loss_avg:0
learning_rate:0"á
trainable_variablesÉĆ
Ă
%cnn_model/convolution/conv2d/kernel:0*cnn_model/convolution/conv2d/kernel/Assign*cnn_model/convolution/conv2d/kernel/read:02Bcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal:0
°
#cnn_model/convolution/conv2d/bias:0(cnn_model/convolution/conv2d/bias/Assign(cnn_model/convolution/conv2d/bias/read:025cnn_model/convolution/conv2d/bias/Initializer/zeros:0
Ë
'cnn_model/convolution/conv2d_1/kernel:0,cnn_model/convolution/conv2d_1/kernel/Assign,cnn_model/convolution/conv2d_1/kernel/read:02Dcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal:0
¸
%cnn_model/convolution/conv2d_1/bias:0*cnn_model/convolution/conv2d_1/bias/Assign*cnn_model/convolution/conv2d_1/bias/read:027cnn_model/convolution/conv2d_1/bias/Initializer/zeros:0
Ë
'cnn_model/convolution/conv2d_2/kernel:0,cnn_model/convolution/conv2d_2/kernel/Assign,cnn_model/convolution/conv2d_2/kernel/read:02Dcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal:0
¸
%cnn_model/convolution/conv2d_2/bias:0*cnn_model/convolution/conv2d_2/bias/Assign*cnn_model/convolution/conv2d_2/bias/read:027cnn_model/convolution/conv2d_2/bias/Initializer/zeros:0
Ë
'cnn_model/convolution/conv2d_3/kernel:0,cnn_model/convolution/conv2d_3/kernel/Assign,cnn_model/convolution/conv2d_3/kernel/read:02Dcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal:0
¸
%cnn_model/convolution/conv2d_3/bias:0*cnn_model/convolution/conv2d_3/bias/Assign*cnn_model/convolution/conv2d_3/bias/read:027cnn_model/convolution/conv2d_3/bias/Initializer/zeros:0
Ë
'cnn_model/convolution/conv2d_4/kernel:0,cnn_model/convolution/conv2d_4/kernel/Assign,cnn_model/convolution/conv2d_4/kernel/read:02Dcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal:0
¸
%cnn_model/convolution/conv2d_4/bias:0*cnn_model/convolution/conv2d_4/bias/Assign*cnn_model/convolution/conv2d_4/bias/read:027cnn_model/convolution/conv2d_4/bias/Initializer/zeros:0

cnn_model/dense/kernel:0cnn_model/dense/kernel/Assigncnn_model/dense/kernel/read:025cnn_model/dense/kernel/Initializer/truncated_normal:0
|
cnn_model/dense/bias:0cnn_model/dense/bias/Assigncnn_model/dense/bias/read:02(cnn_model/dense/bias/Initializer/zeros:0
×
*rnn_model/recurrent/rnn/lstm_cell/kernel:0/rnn_model/recurrent/rnn/lstm_cell/kernel/Assign/rnn_model/recurrent/rnn/lstm_cell/kernel/read:02Grnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal:0
Ä
(rnn_model/recurrent/rnn/lstm_cell/bias:0-rnn_model/recurrent/rnn/lstm_cell/bias/Assign-rnn_model/recurrent/rnn/lstm_cell/bias/read:02:rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros:0

logits/dense/kernel:0logits/dense/kernel/Assignlogits/dense/kernel/read:022logits/dense/kernel/Initializer/truncated_normal:0
p
logits/dense/bias:0logits/dense/bias/Assignlogits/dense/bias/read:02%logits/dense/bias/Initializer/zeros:0"§
local_variables

<training_input_pipeline/input_producer/limit_epochs/epochs:0Atraining_input_pipeline/input_producer/limit_epochs/epochs/AssignAtraining_input_pipeline/input_producer/limit_epochs/epochs/read:02;training_input_pipeline/input_producer/limit_epochs/Const:0

>validation_input_pipeline/input_producer/limit_epochs/epochs:0Cvalidation_input_pipeline/input_producer/limit_epochs/epochs/AssignCvalidation_input_pipeline/input_producer/limit_epochs/epochs/read:02=validation_input_pipeline/input_producer/limit_epochs/Const:0"
while_contextřô
[
4Training/rnn_model/recurrent/rnn/while/while_context  *1Training/rnn_model/recurrent/rnn/while/LoopCond:02.Training/rnn_model/recurrent/rnn/while/Merge:0:1Training/rnn_model/recurrent/rnn/while/Identity:0B-Training/rnn_model/recurrent/rnn/while/Exit:0B/Training/rnn_model/recurrent/rnn/while/Exit_1:0B/Training/rnn_model/recurrent/rnn/while/Exit_2:0B/Training/rnn_model/recurrent/rnn/while/Exit_3:0B/Training/rnn_model/recurrent/rnn/while/Exit_4:0BTraining/gradients/f_count_2:0JŢT
Training/gradients/Add/y:0
Training/gradients/Add:0
Training/gradients/Merge:0
Training/gradients/Merge:1
"Training/gradients/NextIteration:0
Training/gradients/Switch:0
Training/gradients/Switch:1
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Enter:0
\Training/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/StackPushV2:0
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc:0
|Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
|Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Enter:0
fTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc:0
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Enter:0
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/StackPushV2:0
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc:0
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Enter:0
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/StackPushV2:0
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc:0
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Enter:0
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/StackPushV2:0
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc:0
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Enter:0
bTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/StackPushV2:0
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc:0
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Enter:0
^Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/StackPushV2:0
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc:0
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Enter:0
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/StackPushV2:0
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc:0
Training/gradients/f_count:0
Training/gradients/f_count_1:0
Training/gradients/f_count_2:0
.Training/rnn_model/recurrent/rnn/CheckSeqLen:0
*Training/rnn_model/recurrent/rnn/Minimum:0
.Training/rnn_model/recurrent/rnn/TensorArray:0
]Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
0Training/rnn_model/recurrent/rnn/TensorArray_1:0
0Training/rnn_model/recurrent/rnn/strided_slice:0
.Training/rnn_model/recurrent/rnn/while/Enter:0
0Training/rnn_model/recurrent/rnn/while/Enter_1:0
0Training/rnn_model/recurrent/rnn/while/Enter_2:0
0Training/rnn_model/recurrent/rnn/while/Enter_3:0
0Training/rnn_model/recurrent/rnn/while/Enter_4:0
-Training/rnn_model/recurrent/rnn/while/Exit:0
/Training/rnn_model/recurrent/rnn/while/Exit_1:0
/Training/rnn_model/recurrent/rnn/while/Exit_2:0
/Training/rnn_model/recurrent/rnn/while/Exit_3:0
/Training/rnn_model/recurrent/rnn/while/Exit_4:0
;Training/rnn_model/recurrent/rnn/while/GreaterEqual/Enter:0
5Training/rnn_model/recurrent/rnn/while/GreaterEqual:0
1Training/rnn_model/recurrent/rnn/while/Identity:0
3Training/rnn_model/recurrent/rnn/while/Identity_1:0
3Training/rnn_model/recurrent/rnn/while/Identity_2:0
3Training/rnn_model/recurrent/rnn/while/Identity_3:0
3Training/rnn_model/recurrent/rnn/while/Identity_4:0
3Training/rnn_model/recurrent/rnn/while/Less/Enter:0
-Training/rnn_model/recurrent/rnn/while/Less:0
5Training/rnn_model/recurrent/rnn/while/Less_1/Enter:0
/Training/rnn_model/recurrent/rnn/while/Less_1:0
3Training/rnn_model/recurrent/rnn/while/LogicalAnd:0
1Training/rnn_model/recurrent/rnn/while/LoopCond:0
.Training/rnn_model/recurrent/rnn/while/Merge:0
.Training/rnn_model/recurrent/rnn/while/Merge:1
0Training/rnn_model/recurrent/rnn/while/Merge_1:0
0Training/rnn_model/recurrent/rnn/while/Merge_1:1
0Training/rnn_model/recurrent/rnn/while/Merge_2:0
0Training/rnn_model/recurrent/rnn/while/Merge_2:1
0Training/rnn_model/recurrent/rnn/while/Merge_3:0
0Training/rnn_model/recurrent/rnn/while/Merge_3:1
0Training/rnn_model/recurrent/rnn/while/Merge_4:0
0Training/rnn_model/recurrent/rnn/while/Merge_4:1
6Training/rnn_model/recurrent/rnn/while/NextIteration:0
8Training/rnn_model/recurrent/rnn/while/NextIteration_1:0
8Training/rnn_model/recurrent/rnn/while/NextIteration_2:0
8Training/rnn_model/recurrent/rnn/while/NextIteration_3:0
8Training/rnn_model/recurrent/rnn/while/NextIteration_4:0
5Training/rnn_model/recurrent/rnn/while/Select/Enter:0
/Training/rnn_model/recurrent/rnn/while/Select:0
1Training/rnn_model/recurrent/rnn/while/Select_1:0
1Training/rnn_model/recurrent/rnn/while/Select_2:0
/Training/rnn_model/recurrent/rnn/while/Switch:0
/Training/rnn_model/recurrent/rnn/while/Switch:1
1Training/rnn_model/recurrent/rnn/while/Switch_1:0
1Training/rnn_model/recurrent/rnn/while/Switch_1:1
1Training/rnn_model/recurrent/rnn/while/Switch_2:0
1Training/rnn_model/recurrent/rnn/while/Switch_2:1
1Training/rnn_model/recurrent/rnn/while/Switch_3:0
1Training/rnn_model/recurrent/rnn/while/Switch_3:1
1Training/rnn_model/recurrent/rnn/while/Switch_4:0
1Training/rnn_model/recurrent/rnn/while/Switch_4:1
@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter:0
BTraining/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1:0
:Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3:0
RTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
LTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
.Training/rnn_model/recurrent/rnn/while/add/y:0
,Training/rnn_model/recurrent/rnn/while/add:0
0Training/rnn_model/recurrent/rnn/while/add_1/y:0
.Training/rnn_model/recurrent/rnn/while/add_1:0
@Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter:0
:Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd:0
8Training/rnn_model/recurrent/rnn/while/lstm_cell/Const:0
?Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter:0
9Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul:0
:Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid:0
<Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1:0
<Training/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2:0
7Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh:0
9Training/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1:0
8Training/rnn_model/recurrent/rnn/while/lstm_cell/add/y:0
6Training/rnn_model/recurrent/rnn/while/lstm_cell/add:0
8Training/rnn_model/recurrent/rnn/while/lstm_cell/add_1:0
>Training/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis:0
9Training/rnn_model/recurrent/rnn/while/lstm_cell/concat:0
6Training/rnn_model/recurrent/rnn/while/lstm_cell/mul:0
8Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1:0
8Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2:0
BTraining/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim:0
8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:0
8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:1
8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:2
8Training/rnn_model/recurrent/rnn/while/lstm_cell/split:3
(Training/rnn_model/recurrent/rnn/zeros:0
-rnn_model/recurrent/rnn/lstm_cell/bias/read:0
/rnn_model/recurrent/rnn/lstm_cell/kernel/read:0Ł
]Training/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0BTraining/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1:0r
/rnn_model/recurrent/rnn/lstm_cell/kernel/read:0?Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter:0ź
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/f_acc:0\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul_1/Enter:0t
0Training/rnn_model/recurrent/rnn/TensorArray_1:0@Training/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter:0°
VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/f_acc:0VTraining/gradients/Training/rnn_model/recurrent/rnn/while/Select_1_grad/Select/Enter:0ü
|Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0|Training/gradients/Training/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0Ä
`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/f_acc:0`Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/MatMul_grad/MatMul_1/Enter:0q
-rnn_model/recurrent/rnn/lstm_cell/bias/read:0@Training/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter:0¸
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/f_acc:0ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_1_grad/Mul/Enter:0¸
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/f_acc:0ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul_1/Enter:0m
.Training/rnn_model/recurrent/rnn/CheckSeqLen:0;Training/rnn_model/recurrent/rnn/while/GreaterEqual/Enter:0¸
ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/f_acc:0ZTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul/Enter:0g
0Training/rnn_model/recurrent/rnn/strided_slice:03Training/rnn_model/recurrent/rnn/while/Less/Enter:0
.Training/rnn_model/recurrent/rnn/TensorArray:0RTraining/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0´
XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/f_acc:0XTraining/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_grad/Mul/Enter:0c
*Training/rnn_model/recurrent/rnn/Minimum:05Training/rnn_model/recurrent/rnn/while/Less_1/Enter:0a
(Training/rnn_model/recurrent/rnn/zeros:05Training/rnn_model/recurrent/rnn/while/Select/Enter:0ź
\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/f_acc:0\Training/gradients/Training/rnn_model/recurrent/rnn/while/lstm_cell/mul_2_grad/Mul_1/Enter:0R.Training/rnn_model/recurrent/rnn/while/Enter:0R0Training/rnn_model/recurrent/rnn/while/Enter_1:0R0Training/rnn_model/recurrent/rnn/while/Enter_2:0R0Training/rnn_model/recurrent/rnn/while/Enter_3:0R0Training/rnn_model/recurrent/rnn/while/Enter_4:0RTraining/gradients/f_count_1:0Z0Training/rnn_model/recurrent/rnn/strided_slice:0
Ţ7
6Validation/rnn_model/recurrent/rnn/while/while_context  *3Validation/rnn_model/recurrent/rnn/while/LoopCond:020Validation/rnn_model/recurrent/rnn/while/Merge:0:3Validation/rnn_model/recurrent/rnn/while/Identity:0B/Validation/rnn_model/recurrent/rnn/while/Exit:0B1Validation/rnn_model/recurrent/rnn/while/Exit_1:0B1Validation/rnn_model/recurrent/rnn/while/Exit_2:0B1Validation/rnn_model/recurrent/rnn/while/Exit_3:0B1Validation/rnn_model/recurrent/rnn/while/Exit_4:0JÎ1
0Validation/rnn_model/recurrent/rnn/CheckSeqLen:0
,Validation/rnn_model/recurrent/rnn/Minimum:0
0Validation/rnn_model/recurrent/rnn/TensorArray:0
_Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
2Validation/rnn_model/recurrent/rnn/TensorArray_1:0
2Validation/rnn_model/recurrent/rnn/strided_slice:0
0Validation/rnn_model/recurrent/rnn/while/Enter:0
2Validation/rnn_model/recurrent/rnn/while/Enter_1:0
2Validation/rnn_model/recurrent/rnn/while/Enter_2:0
2Validation/rnn_model/recurrent/rnn/while/Enter_3:0
2Validation/rnn_model/recurrent/rnn/while/Enter_4:0
/Validation/rnn_model/recurrent/rnn/while/Exit:0
1Validation/rnn_model/recurrent/rnn/while/Exit_1:0
1Validation/rnn_model/recurrent/rnn/while/Exit_2:0
1Validation/rnn_model/recurrent/rnn/while/Exit_3:0
1Validation/rnn_model/recurrent/rnn/while/Exit_4:0
=Validation/rnn_model/recurrent/rnn/while/GreaterEqual/Enter:0
7Validation/rnn_model/recurrent/rnn/while/GreaterEqual:0
3Validation/rnn_model/recurrent/rnn/while/Identity:0
5Validation/rnn_model/recurrent/rnn/while/Identity_1:0
5Validation/rnn_model/recurrent/rnn/while/Identity_2:0
5Validation/rnn_model/recurrent/rnn/while/Identity_3:0
5Validation/rnn_model/recurrent/rnn/while/Identity_4:0
5Validation/rnn_model/recurrent/rnn/while/Less/Enter:0
/Validation/rnn_model/recurrent/rnn/while/Less:0
7Validation/rnn_model/recurrent/rnn/while/Less_1/Enter:0
1Validation/rnn_model/recurrent/rnn/while/Less_1:0
5Validation/rnn_model/recurrent/rnn/while/LogicalAnd:0
3Validation/rnn_model/recurrent/rnn/while/LoopCond:0
0Validation/rnn_model/recurrent/rnn/while/Merge:0
0Validation/rnn_model/recurrent/rnn/while/Merge:1
2Validation/rnn_model/recurrent/rnn/while/Merge_1:0
2Validation/rnn_model/recurrent/rnn/while/Merge_1:1
2Validation/rnn_model/recurrent/rnn/while/Merge_2:0
2Validation/rnn_model/recurrent/rnn/while/Merge_2:1
2Validation/rnn_model/recurrent/rnn/while/Merge_3:0
2Validation/rnn_model/recurrent/rnn/while/Merge_3:1
2Validation/rnn_model/recurrent/rnn/while/Merge_4:0
2Validation/rnn_model/recurrent/rnn/while/Merge_4:1
8Validation/rnn_model/recurrent/rnn/while/NextIteration:0
:Validation/rnn_model/recurrent/rnn/while/NextIteration_1:0
:Validation/rnn_model/recurrent/rnn/while/NextIteration_2:0
:Validation/rnn_model/recurrent/rnn/while/NextIteration_3:0
:Validation/rnn_model/recurrent/rnn/while/NextIteration_4:0
7Validation/rnn_model/recurrent/rnn/while/Select/Enter:0
1Validation/rnn_model/recurrent/rnn/while/Select:0
3Validation/rnn_model/recurrent/rnn/while/Select_1:0
3Validation/rnn_model/recurrent/rnn/while/Select_2:0
1Validation/rnn_model/recurrent/rnn/while/Switch:0
1Validation/rnn_model/recurrent/rnn/while/Switch:1
3Validation/rnn_model/recurrent/rnn/while/Switch_1:0
3Validation/rnn_model/recurrent/rnn/while/Switch_1:1
3Validation/rnn_model/recurrent/rnn/while/Switch_2:0
3Validation/rnn_model/recurrent/rnn/while/Switch_2:1
3Validation/rnn_model/recurrent/rnn/while/Switch_3:0
3Validation/rnn_model/recurrent/rnn/while/Switch_3:1
3Validation/rnn_model/recurrent/rnn/while/Switch_4:0
3Validation/rnn_model/recurrent/rnn/while/Switch_4:1
BValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter:0
DValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1:0
<Validation/rnn_model/recurrent/rnn/while/TensorArrayReadV3:0
TValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
NValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
0Validation/rnn_model/recurrent/rnn/while/add/y:0
.Validation/rnn_model/recurrent/rnn/while/add:0
2Validation/rnn_model/recurrent/rnn/while/add_1/y:0
0Validation/rnn_model/recurrent/rnn/while/add_1:0
BValidation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter:0
<Validation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd:0
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/Const:0
AValidation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter:0
;Validation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul:0
<Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid:0
>Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_1:0
>Validation/rnn_model/recurrent/rnn/while/lstm_cell/Sigmoid_2:0
9Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh:0
;Validation/rnn_model/recurrent/rnn/while/lstm_cell/Tanh_1:0
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/add/y:0
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/add:0
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/add_1:0
@Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat/axis:0
;Validation/rnn_model/recurrent/rnn/while/lstm_cell/concat:0
8Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul:0
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_1:0
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/mul_2:0
DValidation/rnn_model/recurrent/rnn/while/lstm_cell/split/split_dim:0
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:0
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:1
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:2
:Validation/rnn_model/recurrent/rnn/while/lstm_cell/split:3
*Validation/rnn_model/recurrent/rnn/zeros:0
-rnn_model/recurrent/rnn/lstm_cell/bias/read:0
/rnn_model/recurrent/rnn/lstm_cell/kernel/read:0s
-rnn_model/recurrent/rnn/lstm_cell/bias/read:0BValidation/rnn_model/recurrent/rnn/while/lstm_cell/BiasAdd/Enter:0x
2Validation/rnn_model/recurrent/rnn/TensorArray_1:0BValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter:0k
2Validation/rnn_model/recurrent/rnn/strided_slice:05Validation/rnn_model/recurrent/rnn/while/Less/Enter:0q
0Validation/rnn_model/recurrent/rnn/CheckSeqLen:0=Validation/rnn_model/recurrent/rnn/while/GreaterEqual/Enter:0t
/rnn_model/recurrent/rnn/lstm_cell/kernel/read:0AValidation/rnn_model/recurrent/rnn/while/lstm_cell/MatMul/Enter:0§
_Validation/rnn_model/recurrent/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0DValidation/rnn_model/recurrent/rnn/while/TensorArrayReadV3/Enter_1:0e
*Validation/rnn_model/recurrent/rnn/zeros:07Validation/rnn_model/recurrent/rnn/while/Select/Enter:0
0Validation/rnn_model/recurrent/rnn/TensorArray:0TValidation/rnn_model/recurrent/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0g
,Validation/rnn_model/recurrent/rnn/Minimum:07Validation/rnn_model/recurrent/rnn/while/Less_1/Enter:0R0Validation/rnn_model/recurrent/rnn/while/Enter:0R2Validation/rnn_model/recurrent/rnn/while/Enter_1:0R2Validation/rnn_model/recurrent/rnn/while/Enter_2:0R2Validation/rnn_model/recurrent/rnn/while/Enter_3:0R2Validation/rnn_model/recurrent/rnn/while/Enter_4:0Z2Validation/rnn_model/recurrent/rnn/strided_slice:0"ĽK
	variablesKK
Ă
%cnn_model/convolution/conv2d/kernel:0*cnn_model/convolution/conv2d/kernel/Assign*cnn_model/convolution/conv2d/kernel/read:02Bcnn_model/convolution/conv2d/kernel/Initializer/truncated_normal:0
°
#cnn_model/convolution/conv2d/bias:0(cnn_model/convolution/conv2d/bias/Assign(cnn_model/convolution/conv2d/bias/read:025cnn_model/convolution/conv2d/bias/Initializer/zeros:0
Ë
'cnn_model/convolution/conv2d_1/kernel:0,cnn_model/convolution/conv2d_1/kernel/Assign,cnn_model/convolution/conv2d_1/kernel/read:02Dcnn_model/convolution/conv2d_1/kernel/Initializer/truncated_normal:0
¸
%cnn_model/convolution/conv2d_1/bias:0*cnn_model/convolution/conv2d_1/bias/Assign*cnn_model/convolution/conv2d_1/bias/read:027cnn_model/convolution/conv2d_1/bias/Initializer/zeros:0
Ë
'cnn_model/convolution/conv2d_2/kernel:0,cnn_model/convolution/conv2d_2/kernel/Assign,cnn_model/convolution/conv2d_2/kernel/read:02Dcnn_model/convolution/conv2d_2/kernel/Initializer/truncated_normal:0
¸
%cnn_model/convolution/conv2d_2/bias:0*cnn_model/convolution/conv2d_2/bias/Assign*cnn_model/convolution/conv2d_2/bias/read:027cnn_model/convolution/conv2d_2/bias/Initializer/zeros:0
Ë
'cnn_model/convolution/conv2d_3/kernel:0,cnn_model/convolution/conv2d_3/kernel/Assign,cnn_model/convolution/conv2d_3/kernel/read:02Dcnn_model/convolution/conv2d_3/kernel/Initializer/truncated_normal:0
¸
%cnn_model/convolution/conv2d_3/bias:0*cnn_model/convolution/conv2d_3/bias/Assign*cnn_model/convolution/conv2d_3/bias/read:027cnn_model/convolution/conv2d_3/bias/Initializer/zeros:0
Ë
'cnn_model/convolution/conv2d_4/kernel:0,cnn_model/convolution/conv2d_4/kernel/Assign,cnn_model/convolution/conv2d_4/kernel/read:02Dcnn_model/convolution/conv2d_4/kernel/Initializer/truncated_normal:0
¸
%cnn_model/convolution/conv2d_4/bias:0*cnn_model/convolution/conv2d_4/bias/Assign*cnn_model/convolution/conv2d_4/bias/read:027cnn_model/convolution/conv2d_4/bias/Initializer/zeros:0

cnn_model/dense/kernel:0cnn_model/dense/kernel/Assigncnn_model/dense/kernel/read:025cnn_model/dense/kernel/Initializer/truncated_normal:0
|
cnn_model/dense/bias:0cnn_model/dense/bias/Assigncnn_model/dense/bias/read:02(cnn_model/dense/bias/Initializer/zeros:0
×
*rnn_model/recurrent/rnn/lstm_cell/kernel:0/rnn_model/recurrent/rnn/lstm_cell/kernel/Assign/rnn_model/recurrent/rnn/lstm_cell/kernel/read:02Grnn_model/recurrent/rnn/lstm_cell/kernel/Initializer/truncated_normal:0
Ä
(rnn_model/recurrent/rnn/lstm_cell/bias:0-rnn_model/recurrent/rnn/lstm_cell/bias/Assign-rnn_model/recurrent/rnn/lstm_cell/bias/read:02:rnn_model/recurrent/rnn/lstm_cell/bias/Initializer/zeros:0

logits/dense/kernel:0logits/dense/kernel/Assignlogits/dense/kernel/read:022logits/dense/kernel/Initializer/truncated_normal:0
p
logits/dense/bias:0logits/dense/bias/Assignlogits/dense/bias/read:02%logits/dense/bias/Initializer/zeros:0
x
Training/global_step:0Training/global_step/AssignTraining/global_step/read:02$Training/global_step/initial_value:0
x
Training/beta1_power:0Training/beta1_power/AssignTraining/beta1_power/read:02$Training/beta1_power/initial_value:0
x
Training/beta2_power:0Training/beta2_power/AssignTraining/beta2_power/read:02$Training/beta2_power/initial_value:0
Ě
*cnn_model/convolution/conv2d/kernel/Adam:0/cnn_model/convolution/conv2d/kernel/Adam/Assign/cnn_model/convolution/conv2d/kernel/Adam/read:02<cnn_model/convolution/conv2d/kernel/Adam/Initializer/zeros:0
Ô
,cnn_model/convolution/conv2d/kernel/Adam_1:01cnn_model/convolution/conv2d/kernel/Adam_1/Assign1cnn_model/convolution/conv2d/kernel/Adam_1/read:02>cnn_model/convolution/conv2d/kernel/Adam_1/Initializer/zeros:0
Ä
(cnn_model/convolution/conv2d/bias/Adam:0-cnn_model/convolution/conv2d/bias/Adam/Assign-cnn_model/convolution/conv2d/bias/Adam/read:02:cnn_model/convolution/conv2d/bias/Adam/Initializer/zeros:0
Ě
*cnn_model/convolution/conv2d/bias/Adam_1:0/cnn_model/convolution/conv2d/bias/Adam_1/Assign/cnn_model/convolution/conv2d/bias/Adam_1/read:02<cnn_model/convolution/conv2d/bias/Adam_1/Initializer/zeros:0
Ô
,cnn_model/convolution/conv2d_1/kernel/Adam:01cnn_model/convolution/conv2d_1/kernel/Adam/Assign1cnn_model/convolution/conv2d_1/kernel/Adam/read:02>cnn_model/convolution/conv2d_1/kernel/Adam/Initializer/zeros:0
Ü
.cnn_model/convolution/conv2d_1/kernel/Adam_1:03cnn_model/convolution/conv2d_1/kernel/Adam_1/Assign3cnn_model/convolution/conv2d_1/kernel/Adam_1/read:02@cnn_model/convolution/conv2d_1/kernel/Adam_1/Initializer/zeros:0
Ě
*cnn_model/convolution/conv2d_1/bias/Adam:0/cnn_model/convolution/conv2d_1/bias/Adam/Assign/cnn_model/convolution/conv2d_1/bias/Adam/read:02<cnn_model/convolution/conv2d_1/bias/Adam/Initializer/zeros:0
Ô
,cnn_model/convolution/conv2d_1/bias/Adam_1:01cnn_model/convolution/conv2d_1/bias/Adam_1/Assign1cnn_model/convolution/conv2d_1/bias/Adam_1/read:02>cnn_model/convolution/conv2d_1/bias/Adam_1/Initializer/zeros:0
Ô
,cnn_model/convolution/conv2d_2/kernel/Adam:01cnn_model/convolution/conv2d_2/kernel/Adam/Assign1cnn_model/convolution/conv2d_2/kernel/Adam/read:02>cnn_model/convolution/conv2d_2/kernel/Adam/Initializer/zeros:0
Ü
.cnn_model/convolution/conv2d_2/kernel/Adam_1:03cnn_model/convolution/conv2d_2/kernel/Adam_1/Assign3cnn_model/convolution/conv2d_2/kernel/Adam_1/read:02@cnn_model/convolution/conv2d_2/kernel/Adam_1/Initializer/zeros:0
Ě
*cnn_model/convolution/conv2d_2/bias/Adam:0/cnn_model/convolution/conv2d_2/bias/Adam/Assign/cnn_model/convolution/conv2d_2/bias/Adam/read:02<cnn_model/convolution/conv2d_2/bias/Adam/Initializer/zeros:0
Ô
,cnn_model/convolution/conv2d_2/bias/Adam_1:01cnn_model/convolution/conv2d_2/bias/Adam_1/Assign1cnn_model/convolution/conv2d_2/bias/Adam_1/read:02>cnn_model/convolution/conv2d_2/bias/Adam_1/Initializer/zeros:0
Ô
,cnn_model/convolution/conv2d_3/kernel/Adam:01cnn_model/convolution/conv2d_3/kernel/Adam/Assign1cnn_model/convolution/conv2d_3/kernel/Adam/read:02>cnn_model/convolution/conv2d_3/kernel/Adam/Initializer/zeros:0
Ü
.cnn_model/convolution/conv2d_3/kernel/Adam_1:03cnn_model/convolution/conv2d_3/kernel/Adam_1/Assign3cnn_model/convolution/conv2d_3/kernel/Adam_1/read:02@cnn_model/convolution/conv2d_3/kernel/Adam_1/Initializer/zeros:0
Ě
*cnn_model/convolution/conv2d_3/bias/Adam:0/cnn_model/convolution/conv2d_3/bias/Adam/Assign/cnn_model/convolution/conv2d_3/bias/Adam/read:02<cnn_model/convolution/conv2d_3/bias/Adam/Initializer/zeros:0
Ô
,cnn_model/convolution/conv2d_3/bias/Adam_1:01cnn_model/convolution/conv2d_3/bias/Adam_1/Assign1cnn_model/convolution/conv2d_3/bias/Adam_1/read:02>cnn_model/convolution/conv2d_3/bias/Adam_1/Initializer/zeros:0
Ô
,cnn_model/convolution/conv2d_4/kernel/Adam:01cnn_model/convolution/conv2d_4/kernel/Adam/Assign1cnn_model/convolution/conv2d_4/kernel/Adam/read:02>cnn_model/convolution/conv2d_4/kernel/Adam/Initializer/zeros:0
Ü
.cnn_model/convolution/conv2d_4/kernel/Adam_1:03cnn_model/convolution/conv2d_4/kernel/Adam_1/Assign3cnn_model/convolution/conv2d_4/kernel/Adam_1/read:02@cnn_model/convolution/conv2d_4/kernel/Adam_1/Initializer/zeros:0
Ě
*cnn_model/convolution/conv2d_4/bias/Adam:0/cnn_model/convolution/conv2d_4/bias/Adam/Assign/cnn_model/convolution/conv2d_4/bias/Adam/read:02<cnn_model/convolution/conv2d_4/bias/Adam/Initializer/zeros:0
Ô
,cnn_model/convolution/conv2d_4/bias/Adam_1:01cnn_model/convolution/conv2d_4/bias/Adam_1/Assign1cnn_model/convolution/conv2d_4/bias/Adam_1/read:02>cnn_model/convolution/conv2d_4/bias/Adam_1/Initializer/zeros:0

cnn_model/dense/kernel/Adam:0"cnn_model/dense/kernel/Adam/Assign"cnn_model/dense/kernel/Adam/read:02/cnn_model/dense/kernel/Adam/Initializer/zeros:0
 
cnn_model/dense/kernel/Adam_1:0$cnn_model/dense/kernel/Adam_1/Assign$cnn_model/dense/kernel/Adam_1/read:021cnn_model/dense/kernel/Adam_1/Initializer/zeros:0

cnn_model/dense/bias/Adam:0 cnn_model/dense/bias/Adam/Assign cnn_model/dense/bias/Adam/read:02-cnn_model/dense/bias/Adam/Initializer/zeros:0

cnn_model/dense/bias/Adam_1:0"cnn_model/dense/bias/Adam_1/Assign"cnn_model/dense/bias/Adam_1/read:02/cnn_model/dense/bias/Adam_1/Initializer/zeros:0
ŕ
/rnn_model/recurrent/rnn/lstm_cell/kernel/Adam:04rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Assign4rnn_model/recurrent/rnn/lstm_cell/kernel/Adam/read:02Arnn_model/recurrent/rnn/lstm_cell/kernel/Adam/Initializer/zeros:0
č
1rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1:06rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Assign6rnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/read:02Crnn_model/recurrent/rnn/lstm_cell/kernel/Adam_1/Initializer/zeros:0
Ř
-rnn_model/recurrent/rnn/lstm_cell/bias/Adam:02rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Assign2rnn_model/recurrent/rnn/lstm_cell/bias/Adam/read:02?rnn_model/recurrent/rnn/lstm_cell/bias/Adam/Initializer/zeros:0
ŕ
/rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1:04rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Assign4rnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/read:02Arnn_model/recurrent/rnn/lstm_cell/bias/Adam_1/Initializer/zeros:0

logits/dense/kernel/Adam:0logits/dense/kernel/Adam/Assignlogits/dense/kernel/Adam/read:02,logits/dense/kernel/Adam/Initializer/zeros:0

logits/dense/kernel/Adam_1:0!logits/dense/kernel/Adam_1/Assign!logits/dense/kernel/Adam_1/read:02.logits/dense/kernel/Adam_1/Initializer/zeros:0

logits/dense/bias/Adam:0logits/dense/bias/Adam/Assignlogits/dense/bias/Adam/read:02*logits/dense/bias/Adam/Initializer/zeros:0

logits/dense/bias/Adam_1:0logits/dense/bias/Adam_1/Assignlogits/dense/bias/Adam_1/read:02,logits/dense/bias/Adam_1/Initializer/zeros:0"ë
queue_runnersŮÖ
ę
&training_input_pipeline/input_producerAtraining_input_pipeline/input_producer/input_producer_EnqueueMany;training_input_pipeline/input_producer/input_producer_Close"=training_input_pipeline/input_producer/input_producer_Close_1*
đ
=training_input_pipeline/batch_join_and_pad/padding_fifo_queueEtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueGtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2Gtraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3Ctraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close"Etraining_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1*
ň
(validation_input_pipeline/input_producerCvalidation_input_pipeline/input_producer/input_producer_EnqueueMany=validation_input_pipeline/input_producer/input_producer_Close"?validation_input_pipeline/input_producer/input_producer_Close_1*
ţ
?validation_input_pipeline/batch_join_and_pad/padding_fifo_queueGvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueueIvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_1Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_2Ivalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_enqueue_3Evalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close"Gvalidation_input_pipeline/batch_join_and_pad/padding_fifo_queue_Close_1*Ełęt