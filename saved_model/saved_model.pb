ä
ŕ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeíout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.12.02v2.12.0-rc1-12-g0db597d0d758äş
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0

Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
y
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes

:*
dtype0

Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
y
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes

:*
dtype0

Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*!
_output_shapes
:*
dtype0

Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*!
_output_shapes
:*
dtype0
{
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/v/dense/bias
t
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes	
:*
dtype0
{
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/m/dense/bias
t
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes	
:*
dtype0

Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense/kernel
~
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*!
_output_shapes
:*
dtype0

Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense/kernel
~
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*!
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
k
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes

:*
dtype0
{
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/kernel
t
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_output_shapes
:*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0
w
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense/kernel
p
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:*
dtype0

serving_default_input_1Placeholder*1
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*&
shape:˙˙˙˙˙˙˙˙˙
ú
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1dense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_3730

NoOpNoOp
ŕ0
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*0
value0B0 B0
ć
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

	optimizer

signatures*
 
0
1
2
3*
 
0
1
2
3*
* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
trace_2
trace_3* 
* 
Ä
layer-0
layer_with_weights-0
layer-1
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses*
Ä
%layer_with_weights-0
%layer-0
&layer-1
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses*

-
_variables
._iterations
/_learning_rate
0_index_dict
1
_momentums
2_velocities
3_update_step_xla*

4serving_default* 
LF
VARIABLE_VALUEdense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1*

50*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
Ś
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias*

0
1*

0
1*
* 

Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
6
Gtrace_0
Htrace_1
Itrace_2
Jtrace_3* 
6
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_3* 
Ś
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

kernel
bias*

U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses* 

0
1*

0
1*
* 

[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
6
`trace_0
atrace_1
btrace_2
ctrace_3* 
6
dtrace_0
etrace_1
ftrace_2
gtrace_3* 
C
.0
h1
i2
j3
k4
l5
m6
n7
o8*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
h0
j1
l2
n3*
 
i0
k1
m2
o3*
* 
* 
8
p	variables
q	keras_api
	rtotal
	scount*
* 
* 
* 

tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

ytrace_0* 

ztrace_0* 

0
1*

0
1*
* 

{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 

%0
&1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
^X
VARIABLE_VALUEAdam/m/dense/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/dense/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/dense/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*

r0
s1*

p	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ą
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rateAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotalcountConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_4109
Ź
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rateAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_4167čŢ

Č
F__inference_sequential_1_layer_call_and_return_conditional_losses_3562

inputs!
dense_1_3555:
dense_1_3557:

identity˘dense_1/StatefulPartitionedCallč
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_3555dense_1_3557*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_3497ŕ
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_3517y
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙h
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Â

$__inference_dense_layer_call_fn_3940

inputs
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallŐ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_3392p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ľ

D__inference_sequential_layer_call_and_return_conditional_losses_3860

inputs9
$dense_matmul_readvariableop_resource:4
%dense_biasadd_readvariableop_resource:	
identity˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOp^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  n
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense/Relu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
É
]
A__inference_flatten_layer_call_and_return_conditional_losses_3379

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ü

)__inference_sequential_layer_call_fn_3834

inputs
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_3441p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ă,
ä
__inference__wrapped_model_3369
input_1P
;autoencoder_sequential_dense_matmul_readvariableop_resource:K
<autoencoder_sequential_dense_biasadd_readvariableop_resource:	T
?autoencoder_sequential_1_dense_1_matmul_readvariableop_resource:P
@autoencoder_sequential_1_dense_1_biasadd_readvariableop_resource:

identity˘3autoencoder/sequential/dense/BiasAdd/ReadVariableOp˘2autoencoder/sequential/dense/MatMul/ReadVariableOp˘7autoencoder/sequential_1/dense_1/BiasAdd/ReadVariableOp˘6autoencoder/sequential_1/dense_1/MatMul/ReadVariableOpu
$autoencoder/sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  
&autoencoder/sequential/flatten/ReshapeReshapeinput_1-autoencoder/sequential/flatten/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ą
2autoencoder/sequential/dense/MatMul/ReadVariableOpReadVariableOp;autoencoder_sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0Í
#autoencoder/sequential/dense/MatMulMatMul/autoencoder/sequential/flatten/Reshape:output:0:autoencoder/sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙­
3autoencoder/sequential/dense/BiasAdd/ReadVariableOpReadVariableOp<autoencoder_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Î
$autoencoder/sequential/dense/BiasAddBiasAdd-autoencoder/sequential/dense/MatMul:product:0;autoencoder/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!autoencoder/sequential/dense/ReluRelu-autoencoder/sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙š
6autoencoder/sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp?autoencoder_sequential_1_dense_1_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0Ö
'autoencoder/sequential_1/dense_1/MatMulMatMul/autoencoder/sequential/dense/Relu:activations:0>autoencoder/sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ś
7autoencoder/sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp@autoencoder_sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0Ű
(autoencoder/sequential_1/dense_1/BiasAddBiasAdd1autoencoder/sequential_1/dense_1/MatMul:product:0?autoencoder/sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
(autoencoder/sequential_1/dense_1/SigmoidSigmoid1autoencoder/sequential_1/dense_1/BiasAdd:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
&autoencoder/sequential_1/reshape/ShapeShape,autoencoder/sequential_1/dense_1/Sigmoid:y:0*
T0*
_output_shapes
::íĎ~
4autoencoder/sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6autoencoder/sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6autoencoder/sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.autoencoder/sequential_1/reshape/strided_sliceStridedSlice/autoencoder/sequential_1/reshape/Shape:output:0=autoencoder/sequential_1/reshape/strided_slice/stack:output:0?autoencoder/sequential_1/reshape/strided_slice/stack_1:output:0?autoencoder/sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
0autoencoder/sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :s
0autoencoder/sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :r
0autoencoder/sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Î
.autoencoder/sequential_1/reshape/Reshape/shapePack7autoencoder/sequential_1/reshape/strided_slice:output:09autoencoder/sequential_1/reshape/Reshape/shape/1:output:09autoencoder/sequential_1/reshape/Reshape/shape/2:output:09autoencoder/sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ö
(autoencoder/sequential_1/reshape/ReshapeReshape,autoencoder/sequential_1/dense_1/Sigmoid:y:07autoencoder/sequential_1/reshape/Reshape/shape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
IdentityIdentity1autoencoder/sequential_1/reshape/Reshape:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
NoOpNoOp4^autoencoder/sequential/dense/BiasAdd/ReadVariableOp3^autoencoder/sequential/dense/MatMul/ReadVariableOp8^autoencoder/sequential_1/dense_1/BiasAdd/ReadVariableOp7^autoencoder/sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 2j
3autoencoder/sequential/dense/BiasAdd/ReadVariableOp3autoencoder/sequential/dense/BiasAdd/ReadVariableOp2h
2autoencoder/sequential/dense/MatMul/ReadVariableOp2autoencoder/sequential/dense/MatMul/ReadVariableOp2r
7autoencoder/sequential_1/dense_1/BiasAdd/ReadVariableOp7autoencoder/sequential_1/dense_1/BiasAdd/ReadVariableOp2p
6autoencoder/sequential_1/dense_1/MatMul/ReadVariableOp6autoencoder/sequential_1/dense_1/MatMul/ReadVariableOp:Z V
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
&
¤
E__inference_autoencoder_layer_call_and_return_conditional_losses_3816
xD
/sequential_dense_matmul_readvariableop_resource:?
0sequential_dense_biasadd_readvariableop_resource:	H
3sequential_1_dense_1_matmul_readvariableop_resource:D
4sequential_1_dense_1_biasadd_readvariableop_resource:

identity˘'sequential/dense/BiasAdd/ReadVariableOp˘&sequential/dense/MatMul/ReadVariableOp˘+sequential_1/dense_1/BiasAdd/ReadVariableOp˘*sequential_1/dense_1/MatMul/ReadVariableOpi
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  
sequential/flatten/ReshapeReshapex!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0Š
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ş
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ą
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0˛
sequential_1/dense_1/MatMulMatMul#sequential/dense/Relu:activations:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0ˇ
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
sequential_1/dense_1/SigmoidSigmoid%sequential_1/dense_1/BiasAdd:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙x
sequential_1/reshape/ShapeShape sequential_1/dense_1/Sigmoid:y:0*
T0*
_output_shapes
::íĎr
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ş
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :g
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :f
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:˛
sequential_1/reshape/ReshapeReshape sequential_1/dense_1/Sigmoid:y:0+sequential_1/reshape/Reshape/shape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙~
IdentityIdentity%sequential_1/reshape/Reshape:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ô
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:T P
1
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex

Ď
F__inference_sequential_1_layer_call_and_return_conditional_losses_3520
dense_1_input!
dense_1_3498:
dense_1_3500:

identity˘dense_1/StatefulPartitionedCallď
dense_1/StatefulPartitionedCallStatefulPartitionedCalldense_1_inputdense_1_3498dense_1_3500*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_3497ŕ
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_3517y
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙h
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_namedense_1_input

Č
F__inference_sequential_1_layer_call_and_return_conditional_losses_3543

inputs!
dense_1_3536:
dense_1_3538:

identity˘dense_1/StatefulPartitionedCallč
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_3536dense_1_3538*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_3497ŕ
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_3517y
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙h
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ť

÷
A__inference_dense_1_layer_call_and_return_conditional_losses_3971

inputs3
matmul_readvariableop_resource:/
biasadd_readvariableop_resource:

identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:*
dtype0k
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙t
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:*
dtype0x
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙X
SigmoidSigmoidBiasAdd:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙\
IdentityIdentitySigmoid:y:0^NoOp*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ď
"__inference_signature_wrapper_3730
input_1
unknown:
	unknown_0:	
	unknown_1:
	unknown_2:

identity˘StatefulPartitionedCallŮ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_3369y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
ý
Â
E__inference_autoencoder_layer_call_and_return_conditional_losses_3618
input_1$
sequential_3607:
sequential_3609:	&
sequential_1_3612:!
sequential_1_3614:

identity˘"sequential/StatefulPartitionedCall˘$sequential_1/StatefulPartitionedCallô
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_3607sequential_3609*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_3422Š
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_3612sequential_1_3614*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_3543
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Z V
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
Ě
×
*__inference_autoencoder_layer_call_fn_3660
input_1
unknown:
	unknown_0:	
	unknown_1:
	unknown_2:

identity˘StatefulPartitionedCall˙
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_autoencoder_layer_call_and_return_conditional_losses_3649y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
Ĺ{
Â
__inference__traced_save_4109
file_prefix8
#read_disablecopyonread_dense_kernel:2
#read_1_disablecopyonread_dense_bias:	<
'read_2_disablecopyonread_dense_1_kernel:5
%read_3_disablecopyonread_dense_1_bias:
,
"read_4_disablecopyonread_iteration:	 0
&read_5_disablecopyonread_learning_rate: A
,read_6_disablecopyonread_adam_m_dense_kernel:A
,read_7_disablecopyonread_adam_v_dense_kernel:9
*read_8_disablecopyonread_adam_m_dense_bias:	9
*read_9_disablecopyonread_adam_v_dense_bias:	D
/read_10_disablecopyonread_adam_m_dense_1_kernel:D
/read_11_disablecopyonread_adam_v_dense_1_kernel:=
-read_12_disablecopyonread_adam_m_dense_1_bias:
=
-read_13_disablecopyonread_adam_v_dense_1_bias:
)
read_14_disablecopyonread_total: )
read_15_disablecopyonread_count: 
savev2_const
identity_33˘MergeV2Checkpoints˘Read/DisableCopyOnRead˘Read/ReadVariableOp˘Read_1/DisableCopyOnRead˘Read_1/ReadVariableOp˘Read_10/DisableCopyOnRead˘Read_10/ReadVariableOp˘Read_11/DisableCopyOnRead˘Read_11/ReadVariableOp˘Read_12/DisableCopyOnRead˘Read_12/ReadVariableOp˘Read_13/DisableCopyOnRead˘Read_13/ReadVariableOp˘Read_14/DisableCopyOnRead˘Read_14/ReadVariableOp˘Read_15/DisableCopyOnRead˘Read_15/ReadVariableOp˘Read_2/DisableCopyOnRead˘Read_2/ReadVariableOp˘Read_3/DisableCopyOnRead˘Read_3/ReadVariableOp˘Read_4/DisableCopyOnRead˘Read_4/ReadVariableOp˘Read_5/DisableCopyOnRead˘Read_5/ReadVariableOp˘Read_6/DisableCopyOnRead˘Read_6/ReadVariableOp˘Read_7/DisableCopyOnRead˘Read_7/ReadVariableOp˘Read_8/DisableCopyOnRead˘Read_8/ReadVariableOp˘Read_9/DisableCopyOnRead˘Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 ˘
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:*
dtype0l
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:d

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*!
_output_shapes
:w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
  
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_dense_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 Ş
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:*
dtype0p

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:f

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*!
_output_shapes
:y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 Ł
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0k

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:v
Read_4/DisableCopyOnReadDisableCopyOnRead"read_4_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_4/ReadVariableOpReadVariableOp"read_4_disablecopyonread_iteration^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_learning_rate^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_6/DisableCopyOnReadDisableCopyOnRead,read_6_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 Ż
Read_6/ReadVariableOpReadVariableOp,read_6_disablecopyonread_adam_m_dense_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:*
dtype0q
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:h
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*!
_output_shapes
:
Read_7/DisableCopyOnReadDisableCopyOnRead,read_7_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 Ż
Read_7/ReadVariableOpReadVariableOp,read_7_disablecopyonread_adam_v_dense_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:*
dtype0q
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:h
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*!
_output_shapes
:~
Read_8/DisableCopyOnReadDisableCopyOnRead*read_8_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 §
Read_8/ReadVariableOpReadVariableOp*read_8_disablecopyonread_adam_m_dense_bias^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0k
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:~
Read_9/DisableCopyOnReadDisableCopyOnRead*read_9_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 §
Read_9/ReadVariableOpReadVariableOp*read_9_disablecopyonread_adam_v_dense_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_10/DisableCopyOnReadDisableCopyOnRead/read_10_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 ´
Read_10/ReadVariableOpReadVariableOp/read_10_disablecopyonread_adam_m_dense_1_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:*
dtype0r
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:h
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*!
_output_shapes
:
Read_11/DisableCopyOnReadDisableCopyOnRead/read_11_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 ´
Read_11/ReadVariableOpReadVariableOp/read_11_disablecopyonread_adam_v_dense_1_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*!
_output_shapes
:*
dtype0r
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*!
_output_shapes
:h
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*!
_output_shapes
:
Read_12/DisableCopyOnReadDisableCopyOnRead-read_12_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 ­
Read_12/ReadVariableOpReadVariableOp-read_12_disablecopyonread_adam_m_dense_1_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:
Read_13/DisableCopyOnReadDisableCopyOnRead-read_13_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 ­
Read_13/ReadVariableOpReadVariableOp-read_13_disablecopyonread_adam_v_dense_1_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:t
Read_14/DisableCopyOnReadDisableCopyOnReadread_14_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_14/ReadVariableOpReadVariableOpread_14_disablecopyonread_total^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_15/DisableCopyOnReadDisableCopyOnReadread_15_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_15/ReadVariableOpReadVariableOpread_15_disablecopyonread_count^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ž
value´BąB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B Ă
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_32Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_33IdentityIdentity_32:output:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_33Identity_33:output:0*7
_input_shapes&
$: : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ý
Â
E__inference_autoencoder_layer_call_and_return_conditional_losses_3632
input_1$
sequential_3621:
sequential_3623:	&
sequential_1_3626:!
sequential_1_3628:

identity˘"sequential/StatefulPartitionedCall˘$sequential_1/StatefulPartitionedCallô
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_3621sequential_3623*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_3441Š
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_3626sequential_1_3628*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_3562
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Z V
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
Ě
×
*__inference_autoencoder_layer_call_fn_3687
input_1
unknown:
	unknown_0:	
	unknown_1:
	unknown_2:

identity˘StatefulPartitionedCall˙
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_autoencoder_layer_call_and_return_conditional_losses_3676y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
ë
ź
E__inference_autoencoder_layer_call_and_return_conditional_losses_3676
x$
sequential_3665:
sequential_3667:	&
sequential_1_3670:!
sequential_1_3672:

identity˘"sequential/StatefulPartitionedCall˘$sequential_1/StatefulPartitionedCallî
"sequential/StatefulPartitionedCallStatefulPartitionedCallxsequential_3665sequential_3667*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_3441Š
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_3670sequential_1_3672*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_3562
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:T P
1
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
ş
Ń
*__inference_autoencoder_layer_call_fn_3743
x
unknown:
	unknown_0:	
	unknown_1:
	unknown_2:

identity˘StatefulPartitionedCallů
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_autoencoder_layer_call_and_return_conditional_losses_3649y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
ń
Ą
)__inference_sequential_layer_call_fn_3448
flatten_input
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_3441p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_nameflatten_input
Ľ

D__inference_sequential_layer_call_and_return_conditional_losses_3847

inputs9
$dense_matmul_readvariableop_resource:4
%dense_biasadd_readvariableop_resource:	
identity˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOp^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  n
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense/Relu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ś

ô
?__inference_dense_layer_call_and_return_conditional_losses_3951

inputs3
matmul_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ű

F__inference_sequential_1_layer_call_and_return_conditional_losses_3920

inputs;
&dense_1_matmul_readvariableop_resource:7
'dense_1_biasadd_readvariableop_resource:

identity˘dense_1/BiasAdd/ReadVariableOp˘dense_1/MatMul/ReadVariableOp
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0{
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙h
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙^
reshape/ShapeShapedense_1/Sigmoid:y:0*
T0*
_output_shapes
::íĎe
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ů
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :Z
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :Y
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ń
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape/ReshapeReshapedense_1/Sigmoid:y:0reshape/Reshape/shape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙q
IdentityIdentityreshape/Reshape:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ű

F__inference_sequential_1_layer_call_and_return_conditional_losses_3899

inputs;
&dense_1_matmul_readvariableop_resource:7
'dense_1_biasadd_readvariableop_resource:

identity˘dense_1/BiasAdd/ReadVariableOp˘dense_1/MatMul/ReadVariableOp
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0{
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙h
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙^
reshape/ShapeShapedense_1/Sigmoid:y:0*
T0*
_output_shapes
::íĎe
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ů
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :Z
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :Y
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ń
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape/ReshapeReshapedense_1/Sigmoid:y:0reshape/Reshape/shape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙q
IdentityIdentityreshape/Reshape:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ć
D__inference_sequential_layer_call_and_return_conditional_losses_3399
flatten_input

dense_3393:

dense_3395:	
identity˘dense/StatefulPartitionedCall˝
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_3379ů
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_3393
dense_3395*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_3392v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:` \
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_nameflatten_input
Ç

&__inference_dense_1_layer_call_fn_3960

inputs
unknown:
	unknown_0:

identity˘StatefulPartitionedCallŘ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_3497q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ŕ
]
A__inference_reshape_layer_call_and_return_conditional_losses_3517

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Š
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:n
ReshapeReshapeinputsReshape/shape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityReshape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
á

+__inference_sequential_1_layer_call_fn_3869

inputs
unknown:
	unknown_0:

identity˘StatefulPartitionedCallĺ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_3543y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ö
¤
+__inference_sequential_1_layer_call_fn_3550
dense_1_input
unknown:
	unknown_0:

identity˘StatefulPartitionedCallě
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_3543y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_namedense_1_input
ń

ż
D__inference_sequential_layer_call_and_return_conditional_losses_3422

inputs

dense_3416:

dense_3418:	
identity˘dense/StatefulPartitionedCallś
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_3379ů
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_3416
dense_3418*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_3392v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ń

ż
D__inference_sequential_layer_call_and_return_conditional_losses_3441

inputs

dense_3435:

dense_3437:	
identity˘dense/StatefulPartitionedCallś
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_3379ů
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_3435
dense_3437*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_3392v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ü

)__inference_sequential_layer_call_fn_3825

inputs
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_3422p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ś

ô
?__inference_dense_layer_call_and_return_conditional_losses_3392

inputs3
matmul_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
á

+__inference_sequential_1_layer_call_fn_3878

inputs
unknown:
	unknown_0:

identity˘StatefulPartitionedCallĺ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_3562y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ż
B
&__inference_reshape_layer_call_fn_3976

inputs
identityś
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_3517j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ż
B
&__inference_flatten_layer_call_fn_3925

inputs
identityŽ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_3379b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
É
]
A__inference_flatten_layer_call_and_return_conditional_losses_3931

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:˙˙˙˙˙˙˙˙˙:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ť

÷
A__inference_dense_1_layer_call_and_return_conditional_losses_3497

inputs3
matmul_readvariableop_resource:/
biasadd_readvariableop_resource:

identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:*
dtype0k
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙t
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:*
dtype0x
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙X
SigmoidSigmoidBiasAdd:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙\
IdentityIdentitySigmoid:y:0^NoOp*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

Ć
D__inference_sequential_layer_call_and_return_conditional_losses_3409
flatten_input

dense_3403:

dense_3405:	
identity˘dense/StatefulPartitionedCall˝
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_3379ů
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_3403
dense_3405*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_3392v
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:` \
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_nameflatten_input
F
Ú	
 __inference__traced_restore_4167
file_prefix2
assignvariableop_dense_kernel:,
assignvariableop_1_dense_bias:	6
!assignvariableop_2_dense_1_kernel:/
assignvariableop_3_dense_1_bias:
&
assignvariableop_4_iteration:	 *
 assignvariableop_5_learning_rate: ;
&assignvariableop_6_adam_m_dense_kernel:;
&assignvariableop_7_adam_v_dense_kernel:3
$assignvariableop_8_adam_m_dense_bias:	3
$assignvariableop_9_adam_v_dense_bias:	>
)assignvariableop_10_adam_m_dense_1_kernel:>
)assignvariableop_11_adam_v_dense_1_kernel:7
'assignvariableop_12_adam_m_dense_1_bias:
7
'assignvariableop_13_adam_v_dense_1_bias:
#
assignvariableop_14_total: #
assignvariableop_15_count: 
identity_17˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_2˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ž
value´BąB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ó
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:ł
AssignVariableOp_4AssignVariableOpassignvariableop_4_iterationIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_5AssignVariableOp assignvariableop_5_learning_rateIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_6AssignVariableOp&assignvariableop_6_adam_m_dense_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_7AssignVariableOp&assignvariableop_7_adam_v_dense_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ť
AssignVariableOp_8AssignVariableOp$assignvariableop_8_adam_m_dense_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ť
AssignVariableOp_9AssignVariableOp$assignvariableop_9_adam_v_dense_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_10AssignVariableOp)assignvariableop_10_adam_m_dense_1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_11AssignVariableOp)assignvariableop_11_adam_v_dense_1_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_12AssignVariableOp'assignvariableop_12_adam_m_dense_1_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_v_dense_1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ż
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ö
¤
+__inference_sequential_1_layer_call_fn_3569
dense_1_input
unknown:
	unknown_0:

identity˘StatefulPartitionedCallě
StatefulPartitionedCallStatefulPartitionedCalldense_1_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_3562y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_namedense_1_input
ë
ź
E__inference_autoencoder_layer_call_and_return_conditional_losses_3649
x$
sequential_3638:
sequential_3640:	&
sequential_1_3643:!
sequential_1_3645:

identity˘"sequential/StatefulPartitionedCall˘$sequential_1/StatefulPartitionedCallî
"sequential/StatefulPartitionedCallStatefulPartitionedCallxsequential_3638sequential_3640*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_3422Š
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall+sequential/StatefulPartitionedCall:output:0sequential_1_3643sequential_1_3645*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_3543
IdentityIdentity-sequential_1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:T P
1
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
ş
Ń
*__inference_autoencoder_layer_call_fn_3756
x
unknown:
	unknown_0:	
	unknown_1:
	unknown_2:

identity˘StatefulPartitionedCallů
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_autoencoder_layer_call_and_return_conditional_losses_3676y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
ń
Ą
)__inference_sequential_layer_call_fn_3429
flatten_input
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_3422p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
1
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_nameflatten_input

Ď
F__inference_sequential_1_layer_call_and_return_conditional_losses_3530
dense_1_input!
dense_1_3523:
dense_1_3525:

identity˘dense_1/StatefulPartitionedCallď
dense_1/StatefulPartitionedCallStatefulPartitionedCalldense_1_inputdense_1_3523dense_1_3525*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_3497ŕ
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_reshape_layer_call_and_return_conditional_losses_3517y
IdentityIdentity reshape/PartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙h
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_namedense_1_input
&
¤
E__inference_autoencoder_layer_call_and_return_conditional_losses_3786
xD
/sequential_dense_matmul_readvariableop_resource:?
0sequential_dense_biasadd_readvariableop_resource:	H
3sequential_1_dense_1_matmul_readvariableop_resource:D
4sequential_1_dense_1_biasadd_readvariableop_resource:

identity˘'sequential/dense/BiasAdd/ReadVariableOp˘&sequential/dense/MatMul/ReadVariableOp˘+sequential_1/dense_1/BiasAdd/ReadVariableOp˘*sequential_1/dense_1/MatMul/ReadVariableOpi
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ @  
sequential/flatten/ReshapeReshapex!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0Š
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ş
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ą
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*!
_output_shapes
:*
dtype0˛
sequential_1/dense_1/MatMulMatMul#sequential/dense/Relu:activations:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes

:*
dtype0ˇ
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙
sequential_1/dense_1/SigmoidSigmoid%sequential_1/dense_1/BiasAdd:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙x
sequential_1/reshape/ShapeShape sequential_1/dense_1/Sigmoid:y:0*
T0*
_output_shapes
::íĎr
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ş
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :g
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :f
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:˛
sequential_1/reshape/ReshapeReshape sequential_1/dense_1/Sigmoid:y:0+sequential_1/reshape/Reshape/shape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙~
IdentityIdentity%sequential_1/reshape/Reshape:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ô
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:˙˙˙˙˙˙˙˙˙: : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:T P
1
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
ŕ
]
A__inference_reshape_layer_call_and_return_conditional_losses_3990

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::íĎ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Š
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:n
ReshapeReshapeinputsReshape/shape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityReshape:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:˙˙˙˙˙˙˙˙˙:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs"ó
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ż
serving_defaultŤ
E
input_1:
serving_default_input_1:0˙˙˙˙˙˙˙˙˙F
output_1:
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:óÎ
ű
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

	optimizer

signatures"
_tf_keras_model
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Î
trace_0
trace_1
trace_2
trace_32ă
*__inference_autoencoder_layer_call_fn_3660
*__inference_autoencoder_layer_call_fn_3687
*__inference_autoencoder_layer_call_fn_3743
*__inference_autoencoder_layer_call_fn_3756°
Š˛Ľ
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 ztrace_0ztrace_1ztrace_2ztrace_3
ş
trace_0
trace_1
trace_2
trace_32Ď
E__inference_autoencoder_layer_call_and_return_conditional_losses_3618
E__inference_autoencoder_layer_call_and_return_conditional_losses_3632
E__inference_autoencoder_layer_call_and_return_conditional_losses_3786
E__inference_autoencoder_layer_call_and_return_conditional_losses_3816°
Š˛Ľ
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 ztrace_0ztrace_1ztrace_2ztrace_3
ĘBÇ
__inference__wrapped_model_3369input_1"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ţ
layer-0
layer_with_weights-0
layer-1
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ţ
%layer_with_weights-0
%layer-0
&layer-1
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_sequential

-
_variables
._iterations
/_learning_rate
0_index_dict
1
_momentums
2_velocities
3_update_step_xla"
experimentalOptimizer
,
4serving_default"
signature_map
!:2dense/kernel
:2
dense/bias
#:!2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
'
50"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
íBę
*__inference_autoencoder_layer_call_fn_3660input_1"°
Š˛Ľ
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
íBę
*__inference_autoencoder_layer_call_fn_3687input_1"°
Š˛Ľ
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
çBä
*__inference_autoencoder_layer_call_fn_3743x"°
Š˛Ľ
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
çBä
*__inference_autoencoder_layer_call_fn_3756x"°
Š˛Ľ
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
E__inference_autoencoder_layer_call_and_return_conditional_losses_3618input_1"°
Š˛Ľ
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B
E__inference_autoencoder_layer_call_and_return_conditional_losses_3632input_1"°
Š˛Ľ
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B˙
E__inference_autoencoder_layer_call_and_return_conditional_losses_3786x"°
Š˛Ľ
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
B˙
E__inference_autoencoder_layer_call_and_return_conditional_losses_3816x"°
Š˛Ľ
FullArgSpec
args
jx
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsŞ

trainingp 
annotationsŞ *
 
Ľ
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
ť
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
Ď
Gtrace_0
Htrace_1
Itrace_2
Jtrace_32ä
)__inference_sequential_layer_call_fn_3429
)__inference_sequential_layer_call_fn_3448
)__inference_sequential_layer_call_fn_3825
)__inference_sequential_layer_call_fn_3834ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zGtrace_0zHtrace_1zItrace_2zJtrace_3
ť
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_32Đ
D__inference_sequential_layer_call_and_return_conditional_losses_3399
D__inference_sequential_layer_call_and_return_conditional_losses_3409
D__inference_sequential_layer_call_and_return_conditional_losses_3847
D__inference_sequential_layer_call_and_return_conditional_losses_3860ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zKtrace_0zLtrace_1zMtrace_2zNtrace_3
ť
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Ľ
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
×
`trace_0
atrace_1
btrace_2
ctrace_32ě
+__inference_sequential_1_layer_call_fn_3550
+__inference_sequential_1_layer_call_fn_3569
+__inference_sequential_1_layer_call_fn_3869
+__inference_sequential_1_layer_call_fn_3878ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z`trace_0zatrace_1zbtrace_2zctrace_3
Ă
dtrace_0
etrace_1
ftrace_2
gtrace_32Ř
F__inference_sequential_1_layer_call_and_return_conditional_losses_3520
F__inference_sequential_1_layer_call_and_return_conditional_losses_3530
F__inference_sequential_1_layer_call_and_return_conditional_losses_3899
F__inference_sequential_1_layer_call_and_return_conditional_losses_3920ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zdtrace_0zetrace_1zftrace_2zgtrace_3
_
.0
h1
i2
j3
k4
l5
m6
n7
o8"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
<
h0
j1
l2
n3"
trackable_list_wrapper
<
i0
k1
m2
o3"
trackable_list_wrapper
ľ2˛Ż
Ś˛˘
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
ÉBĆ
"__inference_signature_wrapper_3730input_1"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
N
p	variables
q	keras_api
	rtotal
	scount"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ŕ
ytrace_02Ă
&__inference_flatten_layer_call_fn_3925
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zytrace_0
ű
ztrace_02Ţ
A__inference_flatten_layer_call_and_return_conditional_losses_3931
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zztrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
ŕ
trace_02Á
$__inference_dense_layer_call_fn_3940
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
ű
trace_02Ü
?__inference_dense_layer_call_and_return_conditional_losses_3951
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷Bô
)__inference_sequential_layer_call_fn_3429flatten_input"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
÷Bô
)__inference_sequential_layer_call_fn_3448flatten_input"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
đBí
)__inference_sequential_layer_call_fn_3825inputs"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
đBí
)__inference_sequential_layer_call_fn_3834inputs"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_3399flatten_input"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_3409flatten_input"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_3847inputs"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_3860inputs"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
â
trace_02Ă
&__inference_dense_1_layer_call_fn_3960
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
ý
trace_02Ţ
A__inference_dense_1_layer_call_and_return_conditional_losses_3971
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
â
trace_02Ă
&__inference_reshape_layer_call_fn_3976
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
ý
trace_02Ţ
A__inference_reshape_layer_call_and_return_conditional_losses_3990
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ůBö
+__inference_sequential_1_layer_call_fn_3550dense_1_input"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
+__inference_sequential_1_layer_call_fn_3569dense_1_input"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ňBď
+__inference_sequential_1_layer_call_fn_3869inputs"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ňBď
+__inference_sequential_1_layer_call_fn_3878inputs"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
F__inference_sequential_1_layer_call_and_return_conditional_losses_3520dense_1_input"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
F__inference_sequential_1_layer_call_and_return_conditional_losses_3530dense_1_input"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
F__inference_sequential_1_layer_call_and_return_conditional_losses_3899inputs"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
F__inference_sequential_1_layer_call_and_return_conditional_losses_3920inputs"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
&:$2Adam/m/dense/kernel
&:$2Adam/v/dense/kernel
:2Adam/m/dense/bias
:2Adam/v/dense/bias
(:&2Adam/m/dense_1/kernel
(:&2Adam/v/dense_1/kernel
!:2Adam/m/dense_1/bias
!:2Adam/v/dense_1/bias
.
r0
s1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ĐBÍ
&__inference_flatten_layer_call_fn_3925inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ëBč
A__inference_flatten_layer_call_and_return_conditional_losses_3931inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÎBË
$__inference_dense_layer_call_fn_3940inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
éBć
?__inference_dense_layer_call_and_return_conditional_losses_3951inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ĐBÍ
&__inference_dense_1_layer_call_fn_3960inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ëBč
A__inference_dense_1_layer_call_and_return_conditional_losses_3971inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ĐBÍ
&__inference_reshape_layer_call_fn_3976inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ëBč
A__inference_reshape_layer_call_and_return_conditional_losses_3990inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 Ľ
__inference__wrapped_model_3369:˘7
0˘-
+(
input_1˙˙˙˙˙˙˙˙˙
Ş "=Ş:
8
output_1,)
output_1˙˙˙˙˙˙˙˙˙Ô
E__inference_autoencoder_layer_call_and_return_conditional_losses_3618J˘G
0˘-
+(
input_1˙˙˙˙˙˙˙˙˙
Ş

trainingp"6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙
 Ô
E__inference_autoencoder_layer_call_and_return_conditional_losses_3632J˘G
0˘-
+(
input_1˙˙˙˙˙˙˙˙˙
Ş

trainingp "6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙
 Î
E__inference_autoencoder_layer_call_and_return_conditional_losses_3786D˘A
*˘'
%"
x˙˙˙˙˙˙˙˙˙
Ş

trainingp"6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙
 Î
E__inference_autoencoder_layer_call_and_return_conditional_losses_3816D˘A
*˘'
%"
x˙˙˙˙˙˙˙˙˙
Ş

trainingp "6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙
 ­
*__inference_autoencoder_layer_call_fn_3660J˘G
0˘-
+(
input_1˙˙˙˙˙˙˙˙˙
Ş

trainingp"+(
unknown˙˙˙˙˙˙˙˙˙­
*__inference_autoencoder_layer_call_fn_3687J˘G
0˘-
+(
input_1˙˙˙˙˙˙˙˙˙
Ş

trainingp "+(
unknown˙˙˙˙˙˙˙˙˙§
*__inference_autoencoder_layer_call_fn_3743yD˘A
*˘'
%"
x˙˙˙˙˙˙˙˙˙
Ş

trainingp"+(
unknown˙˙˙˙˙˙˙˙˙§
*__inference_autoencoder_layer_call_fn_3756yD˘A
*˘'
%"
x˙˙˙˙˙˙˙˙˙
Ş

trainingp "+(
unknown˙˙˙˙˙˙˙˙˙Ť
A__inference_dense_1_layer_call_and_return_conditional_losses_3971f0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş ".˘+
$!
tensor_0˙˙˙˙˙˙˙˙˙
 
&__inference_dense_1_layer_call_fn_3960[0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "# 
unknown˙˙˙˙˙˙˙˙˙Š
?__inference_dense_layer_call_and_return_conditional_losses_3951f1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 
$__inference_dense_layer_call_fn_3940[1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş ""
unknown˙˙˙˙˙˙˙˙˙°
A__inference_flatten_layer_call_and_return_conditional_losses_3931k9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş ".˘+
$!
tensor_0˙˙˙˙˙˙˙˙˙
 
&__inference_flatten_layer_call_fn_3925`9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙
Ş "# 
unknown˙˙˙˙˙˙˙˙˙°
A__inference_reshape_layer_call_and_return_conditional_losses_3990k1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş "6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙
 
&__inference_reshape_layer_call_fn_3976`1˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙
Ş "+(
unknown˙˙˙˙˙˙˙˙˙Ç
F__inference_sequential_1_layer_call_and_return_conditional_losses_3520}?˘<
5˘2
(%
dense_1_input˙˙˙˙˙˙˙˙˙
p

 
Ş "6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙
 Ç
F__inference_sequential_1_layer_call_and_return_conditional_losses_3530}?˘<
5˘2
(%
dense_1_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙
 Ŕ
F__inference_sequential_1_layer_call_and_return_conditional_losses_3899v8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙
 Ŕ
F__inference_sequential_1_layer_call_and_return_conditional_losses_3920v8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙
 Ą
+__inference_sequential_1_layer_call_fn_3550r?˘<
5˘2
(%
dense_1_input˙˙˙˙˙˙˙˙˙
p

 
Ş "+(
unknown˙˙˙˙˙˙˙˙˙Ą
+__inference_sequential_1_layer_call_fn_3569r?˘<
5˘2
(%
dense_1_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "+(
unknown˙˙˙˙˙˙˙˙˙
+__inference_sequential_1_layer_call_fn_3869k8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "+(
unknown˙˙˙˙˙˙˙˙˙
+__inference_sequential_1_layer_call_fn_3878k8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "+(
unknown˙˙˙˙˙˙˙˙˙Ĺ
D__inference_sequential_layer_call_and_return_conditional_losses_3399}H˘E
>˘;
1.
flatten_input˙˙˙˙˙˙˙˙˙
p

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ĺ
D__inference_sequential_layer_call_and_return_conditional_losses_3409}H˘E
>˘;
1.
flatten_input˙˙˙˙˙˙˙˙˙
p 

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 ž
D__inference_sequential_layer_call_and_return_conditional_losses_3847vA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 ž
D__inference_sequential_layer_call_and_return_conditional_losses_3860vA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 
)__inference_sequential_layer_call_fn_3429rH˘E
>˘;
1.
flatten_input˙˙˙˙˙˙˙˙˙
p

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙
)__inference_sequential_layer_call_fn_3448rH˘E
>˘;
1.
flatten_input˙˙˙˙˙˙˙˙˙
p 

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙
)__inference_sequential_layer_call_fn_3825kA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙
)__inference_sequential_layer_call_fn_3834kA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙ł
"__inference_signature_wrapper_3730E˘B
˘ 
;Ş8
6
input_1+(
input_1˙˙˙˙˙˙˙˙˙"=Ş:
8
output_1,)
output_1˙˙˙˙˙˙˙˙˙