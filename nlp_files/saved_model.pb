??
?'?&
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Greater
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
Less
x"T
y"T
z
"
Ttype:
2	
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ?
?
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-0-g582c8d236cb8??
?
embedding_8/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?N@*'
shared_nameembedding_8/embeddings
?
*embedding_8/embeddings/Read/ReadVariableOpReadVariableOpembedding_8/embeddings*
_output_shapes
:	?N@*
dtype0
{
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?F#* 
shared_namedense_24/kernel
t
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes
:	?F#*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:#*
dtype0
z
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:##* 
shared_namedense_25/kernel
s
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes

:##*
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:#*
dtype0
z
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:#* 
shared_namedense_26/kernel
s
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes

:#*
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
string_lookup_5_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_23853*
value_dtype0	
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/embedding_8/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?N@*.
shared_nameAdam/embedding_8/embeddings/m
?
1Adam/embedding_8/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_8/embeddings/m*
_output_shapes
:	?N@*
dtype0
?
Adam/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?F#*'
shared_nameAdam/dense_24/kernel/m
?
*Adam/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/m*
_output_shapes
:	?F#*
dtype0
?
Adam/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*%
shared_nameAdam/dense_24/bias/m
y
(Adam/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/m*
_output_shapes
:#*
dtype0
?
Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:##*'
shared_nameAdam/dense_25/kernel/m
?
*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m*
_output_shapes

:##*
dtype0
?
Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:#*
dtype0
?
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:#*'
shared_nameAdam/dense_26/kernel/m
?
*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
_output_shapes

:#*
dtype0
?
Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding_8/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?N@*.
shared_nameAdam/embedding_8/embeddings/v
?
1Adam/embedding_8/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_8/embeddings/v*
_output_shapes
:	?N@*
dtype0
?
Adam/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?F#*'
shared_nameAdam/dense_24/kernel/v
?
*Adam/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/v*
_output_shapes
:	?F#*
dtype0
?
Adam/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*%
shared_nameAdam/dense_24/bias/v
y
(Adam/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/v*
_output_shapes
:#*
dtype0
?
Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:##*'
shared_nameAdam/dense_25/kernel/v
?
*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v*
_output_shapes

:##*
dtype0
?
Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:#*
dtype0
?
Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:#*'
shared_nameAdam/dense_26/kernel/v
?
*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes

:#*
dtype0
?
Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? *$
fR
__inference_<lambda>_331331

NoOpNoOp^PartitionedCall
?
Jstring_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2string_lookup_5_index_table*
Tkeys0*
Tvalues0	*.
_class$
" loc:@string_lookup_5_index_table*
_output_shapes

::
?/
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*?/
value?/B?. B?.
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	optimizer
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
 
=
state_variables
_index_lookup_layer
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

 kernel
!bias
"trainable_variables
#regularization_losses
$	variables
%	keras_api
h

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
?
,iter

-beta_1

.beta_2
	/decay
0learning_ratem]m^m_ m`!ma&mb'mcvdvevf vg!vh&vi'vj
1
0
1
2
 3
!4
&5
'6
 
1
1
2
3
 4
!5
&6
'7
?
1layer_regularization_losses
2non_trainable_variables

3layers
4layer_metrics
	trainable_variables

regularization_losses
	variables
5metrics
 
 
0
6state_variables

7_table
8	keras_api
 
fd
VARIABLE_VALUEembedding_8/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
9layer_regularization_losses

:layers
;non_trainable_variables
<layer_metrics
trainable_variables
regularization_losses
	variables
=metrics
 
 
 
?
>layer_regularization_losses

?layers
@non_trainable_variables
Alayer_metrics
trainable_variables
regularization_losses
	variables
Bmetrics
[Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_24/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Clayer_regularization_losses

Dlayers
Enon_trainable_variables
Flayer_metrics
trainable_variables
regularization_losses
	variables
Gmetrics
[Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_25/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1
 

 0
!1
?
Hlayer_regularization_losses

Ilayers
Jnon_trainable_variables
Klayer_metrics
"trainable_variables
#regularization_losses
$	variables
Lmetrics
[Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_26/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1
 

&0
'1
?
Mlayer_regularization_losses

Nlayers
Onon_trainable_variables
Player_metrics
(trainable_variables
)regularization_losses
*	variables
Qmetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
1
0
1
2
3
4
5
6
 

R0
S1
 
LJ
tableAlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ttotal
	Ucount
V	variables
W	keras_api
D
	Xtotal
	Ycount
Z
_fn_kwargs
[	variables
\	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

T0
U1

V	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

X0
Y1

[	variables
??
VARIABLE_VALUEAdam/embedding_8/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_24/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_24/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_25/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_8/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_24/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_24/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_25/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_25/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_9Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_9string_lookup_5_index_tableConstembedding_8/embeddingsdense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/bias*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_330910
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_8/embeddings/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpJstring_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2Lstring_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_8/embeddings/m/Read/ReadVariableOp*Adam/dense_24/kernel/m/Read/ReadVariableOp(Adam/dense_24/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp1Adam/embedding_8/embeddings/v/Read/ReadVariableOp*Adam/dense_24/kernel/v/Read/ReadVariableOp(Adam/dense_24/bias/v/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOpConst_1*-
Tin&
$2"		*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_331451
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_8/embeddingsdense_24/kerneldense_24/biasdense_25/kerneldense_25/biasdense_26/kerneldense_26/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratestring_lookup_5_index_tabletotalcounttotal_1count_1Adam/embedding_8/embeddings/mAdam/dense_24/kernel/mAdam/dense_24/bias/mAdam/dense_25/kernel/mAdam/dense_25/bias/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/embedding_8/embeddings/vAdam/dense_24/kernel/vAdam/dense_24/bias/vAdam/dense_25/kernel/vAdam/dense_25/bias/vAdam/dense_26/kernel/vAdam/dense_26/bias/v*+
Tin$
"2 *
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_331554??
?	
?
G__inference_embedding_8_layer_call_and_return_conditional_losses_331206

inputs	
embedding_lookup_331200
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_331200inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/331200*,
_output_shapes
:??????????@*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/331200*,
_output_shapes
:??????????@2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-model_7_text_vectorization_5_cond_true_330290U
Qmodel_7_text_vectorization_5_cond_pad_paddings_1_model_7_text_vectorization_5_subj
fmodel_7_text_vectorization_5_cond_pad_model_7_text_vectorization_5_raggedtotensor_raggedtensortotensor	.
*model_7_text_vectorization_5_cond_identity	?
2model_7/text_vectorization_5/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 24
2model_7/text_vectorization_5/cond/Pad/paddings/1/0?
0model_7/text_vectorization_5/cond/Pad/paddings/1Pack;model_7/text_vectorization_5/cond/Pad/paddings/1/0:output:0Qmodel_7_text_vectorization_5_cond_pad_paddings_1_model_7_text_vectorization_5_sub*
N*
T0*
_output_shapes
:22
0model_7/text_vectorization_5/cond/Pad/paddings/1?
2model_7/text_vectorization_5/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2model_7/text_vectorization_5/cond/Pad/paddings/0_1?
.model_7/text_vectorization_5/cond/Pad/paddingsPack;model_7/text_vectorization_5/cond/Pad/paddings/0_1:output:09model_7/text_vectorization_5/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:20
.model_7/text_vectorization_5/cond/Pad/paddings?
%model_7/text_vectorization_5/cond/PadPadfmodel_7_text_vectorization_5_cond_pad_model_7_text_vectorization_5_raggedtotensor_raggedtensortotensor7model_7/text_vectorization_5/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2'
%model_7/text_vectorization_5/cond/Pad?
*model_7/text_vectorization_5/cond/IdentityIdentity.model_7/text_vectorization_5/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2,
*model_7/text_vectorization_5/cond/Identity"a
*model_7_text_vectorization_5_cond_identity3model_7/text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?	
?
D__inference_dense_24_layer_call_and_return_conditional_losses_330465

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?F#*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????#2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????#2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????F::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????F
 
_user_specified_nameinputs
?
?
(__inference_model_7_layer_call_fn_331174

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_3307352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
D__inference_dense_26_layer_call_and_return_conditional_losses_330519

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:#*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????#::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????#
 
_user_specified_nameinputs
?
?
&text_vectorization_5_cond_false_330816)
%text_vectorization_5_cond_placeholderd
`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
-text_vectorization_5/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_5/cond/strided_slice/stack?
/text_vectorization_5/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_5/cond/strided_slice/stack_1?
/text_vectorization_5/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_5/cond/strided_slice/stack_2?
'text_vectorization_5/cond/strided_sliceStridedSlice`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor6text_vectorization_5/cond/strided_slice/stack:output:08text_vectorization_5/cond/strided_slice/stack_1:output:08text_vectorization_5/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_5/cond/strided_slice?
"text_vectorization_5/cond/IdentityIdentity0text_vectorization_5/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?	
?
G__inference_embedding_8_layer_call_and_return_conditional_losses_330428

inputs	
embedding_lookup_330422
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_330422inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/330422*,
_output_shapes
:??????????@*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/330422*,
_output_shapes
:??????????@2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
__inference_restore_fn_331326
restored_tensors_0
restored_tensors_1	N
Jstring_lookup_5_index_table_table_restore_lookuptableimportv2_table_handle
identity??=string_lookup_5_index_table_table_restore/LookupTableImportV2?
=string_lookup_5_index_table_table_restore/LookupTableImportV2LookupTableImportV2Jstring_lookup_5_index_table_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 2?
=string_lookup_5_index_table_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Const?
IdentityIdentityConst:output:0>^string_lookup_5_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:::2~
=string_lookup_5_index_table_table_restore/LookupTableImportV2=string_lookup_5_index_table_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
??
?
C__inference_model_7_layer_call_and_return_conditional_losses_331151

inputs^
Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value	'
#embedding_8_embedding_lookup_331122+
'dense_24_matmul_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource+
'dense_25_matmul_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity??dense_24/BiasAdd/ReadVariableOp?dense_24/MatMul/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?embedding_8/embedding_lookup?Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_5/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_5/StringLower?
'text_vectorization_5/StaticRegexReplaceStaticRegexReplace)text_vectorization_5/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_5/StaticRegexReplace?
text_vectorization_5/SqueezeSqueeze0text_vectorization_5/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_5/Squeeze?
&text_vectorization_5/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_5/StringSplit/Const?
.text_vectorization_5/StringSplit/StringSplitV2StringSplitV2%text_vectorization_5/Squeeze:output:0/text_vectorization_5/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_5/StringSplit/StringSplitV2?
4text_vectorization_5/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_5/StringSplit/strided_slice/stack?
6text_vectorization_5/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_5/StringSplit/strided_slice/stack_1?
6text_vectorization_5/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_5/StringSplit/strided_slice/stack_2?
.text_vectorization_5/StringSplit/strided_sliceStridedSlice8text_vectorization_5/StringSplit/StringSplitV2:indices:0=text_vectorization_5/StringSplit/strided_slice/stack:output:0?text_vectorization_5/StringSplit/strided_slice/stack_1:output:0?text_vectorization_5/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_5/StringSplit/strided_slice?
6text_vectorization_5/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_5/StringSplit/strided_slice_1/stack?
8text_vectorization_5/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_1?
8text_vectorization_5/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_2?
0text_vectorization_5/StringSplit/strided_slice_1StridedSlice6text_vectorization_5/StringSplit/StringSplitV2:shape:0?text_vectorization_5/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_5/StringSplit/strided_slice_1?
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_5/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_5/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_5/StringSplit/StringSplitV2:values:0[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_5/string_lookup_5/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_5/string_lookup_5/assert_equal/NoOp?
-text_vectorization_5/string_lookup_5/IdentityIdentityVtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_5/string_lookup_5/Identity?
/text_vectorization_5/string_lookup_5/Identity_1Identitybtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_5/string_lookup_5/Identity_1?
1text_vectorization_5/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_5/RaggedToTensor/default_value?
)text_vectorization_5/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_5/RaggedToTensor/Const?
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_5/RaggedToTensor/Const:output:06text_vectorization_5/string_lookup_5/Identity:output:0:text_vectorization_5/RaggedToTensor/default_value:output:08text_vectorization_5/string_lookup_5/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_5/ShapeShapeAtext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_5/Shape?
(text_vectorization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_5/strided_slice/stack?
*text_vectorization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_1?
*text_vectorization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_2?
"text_vectorization_5/strided_sliceStridedSlice#text_vectorization_5/Shape:output:01text_vectorization_5/strided_slice/stack:output:03text_vectorization_5/strided_slice/stack_1:output:03text_vectorization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_5/strided_slice{
text_vectorization_5/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/sub/x?
text_vectorization_5/subSub#text_vectorization_5/sub/x:output:0+text_vectorization_5/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/sub}
text_vectorization_5/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/Less/y?
text_vectorization_5/LessLess+text_vectorization_5/strided_slice:output:0$text_vectorization_5/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/Less?
text_vectorization_5/condStatelessIftext_vectorization_5/Less:z:0text_vectorization_5/sub:z:0Atext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *9
else_branch*R(
&text_vectorization_5_cond_false_331102*/
output_shapes
:??????????????????*8
then_branch)R'
%text_vectorization_5_cond_true_3311012
text_vectorization_5/cond?
"text_vectorization_5/cond/IdentityIdentity"text_vectorization_5/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_5/cond/Identity?
embedding_8/embedding_lookupResourceGather#embedding_8_embedding_lookup_331122+text_vectorization_5/cond/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*6
_class,
*(loc:@embedding_8/embedding_lookup/331122*,
_output_shapes
:??????????@*
dtype02
embedding_8/embedding_lookup?
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_8/embedding_lookup/331122*,
_output_shapes
:??????????@2'
%embedding_8/embedding_lookup/Identity?
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@2)
'embedding_8/embedding_lookup/Identity_1s
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? #  2
flatten_8/Const?
flatten_8/ReshapeReshape0embedding_8/embedding_lookup/Identity_1:output:0flatten_8/Const:output:0*
T0*(
_output_shapes
:??????????F2
flatten_8/Reshape?
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes
:	?F#*
dtype02 
dense_24/MatMul/ReadVariableOp?
dense_24/MatMulMatMulflatten_8/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
dense_24/MatMul?
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype02!
dense_24/BiasAdd/ReadVariableOp?
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
dense_24/BiasAdds
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:?????????#2
dense_24/Relu?
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:##*
dtype02 
dense_25/MatMul/ReadVariableOp?
dense_25/MatMulMatMuldense_24/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
dense_25/MatMul?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype02!
dense_25/BiasAdd/ReadVariableOp?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
dense_25/BiasAdds
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:?????????#2
dense_25/Relu?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:#*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMuldense_25/Relu:activations:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/BiasAdd|
dense_26/SigmoidSigmoiddense_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_26/Sigmoid?
IdentityIdentitydense_26/Sigmoid:y:0 ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp^embedding_8/embedding_lookupN^text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_331219

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? #  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????F2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????F2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
%text_vectorization_5_cond_true_330593E
Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_subZ
Vtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
*text_vectorization_5/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_5/cond/Pad/paddings/1/0?
(text_vectorization_5/cond/Pad/paddings/1Pack3text_vectorization_5/cond/Pad/paddings/1/0:output:0Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_5/cond/Pad/paddings/1?
*text_vectorization_5/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_5/cond/Pad/paddings/0_1?
&text_vectorization_5/cond/Pad/paddingsPack3text_vectorization_5/cond/Pad/paddings/0_1:output:01text_vectorization_5/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_5/cond/Pad/paddings?
text_vectorization_5/cond/PadPadVtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor/text_vectorization_5/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_5/cond/Pad?
"text_vectorization_5/cond/IdentityIdentity&text_vectorization_5/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
(__inference_model_7_layer_call_fn_330756
input_9
unknown
	unknown_0	
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_3307352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9:

_output_shapes
: 
?	
?
D__inference_dense_26_layer_call_and_return_conditional_losses_331275

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:#*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????#::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????#
 
_user_specified_nameinputs
??
?
C__inference_model_7_layer_call_and_return_conditional_losses_330856

inputs^
Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value	
embedding_8_330836
dense_24_330840
dense_24_330842
dense_25_330845
dense_25_330847
dense_26_330850
dense_26_330852
identity?? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?#embedding_8/StatefulPartitionedCall?Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_5/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_5/StringLower?
'text_vectorization_5/StaticRegexReplaceStaticRegexReplace)text_vectorization_5/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_5/StaticRegexReplace?
text_vectorization_5/SqueezeSqueeze0text_vectorization_5/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_5/Squeeze?
&text_vectorization_5/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_5/StringSplit/Const?
.text_vectorization_5/StringSplit/StringSplitV2StringSplitV2%text_vectorization_5/Squeeze:output:0/text_vectorization_5/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_5/StringSplit/StringSplitV2?
4text_vectorization_5/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_5/StringSplit/strided_slice/stack?
6text_vectorization_5/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_5/StringSplit/strided_slice/stack_1?
6text_vectorization_5/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_5/StringSplit/strided_slice/stack_2?
.text_vectorization_5/StringSplit/strided_sliceStridedSlice8text_vectorization_5/StringSplit/StringSplitV2:indices:0=text_vectorization_5/StringSplit/strided_slice/stack:output:0?text_vectorization_5/StringSplit/strided_slice/stack_1:output:0?text_vectorization_5/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_5/StringSplit/strided_slice?
6text_vectorization_5/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_5/StringSplit/strided_slice_1/stack?
8text_vectorization_5/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_1?
8text_vectorization_5/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_2?
0text_vectorization_5/StringSplit/strided_slice_1StridedSlice6text_vectorization_5/StringSplit/StringSplitV2:shape:0?text_vectorization_5/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_5/StringSplit/strided_slice_1?
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_5/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_5/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_5/StringSplit/StringSplitV2:values:0[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_5/string_lookup_5/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_5/string_lookup_5/assert_equal/NoOp?
-text_vectorization_5/string_lookup_5/IdentityIdentityVtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_5/string_lookup_5/Identity?
/text_vectorization_5/string_lookup_5/Identity_1Identitybtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_5/string_lookup_5/Identity_1?
1text_vectorization_5/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_5/RaggedToTensor/default_value?
)text_vectorization_5/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_5/RaggedToTensor/Const?
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_5/RaggedToTensor/Const:output:06text_vectorization_5/string_lookup_5/Identity:output:0:text_vectorization_5/RaggedToTensor/default_value:output:08text_vectorization_5/string_lookup_5/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_5/ShapeShapeAtext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_5/Shape?
(text_vectorization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_5/strided_slice/stack?
*text_vectorization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_1?
*text_vectorization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_2?
"text_vectorization_5/strided_sliceStridedSlice#text_vectorization_5/Shape:output:01text_vectorization_5/strided_slice/stack:output:03text_vectorization_5/strided_slice/stack_1:output:03text_vectorization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_5/strided_slice{
text_vectorization_5/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/sub/x?
text_vectorization_5/subSub#text_vectorization_5/sub/x:output:0+text_vectorization_5/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/sub}
text_vectorization_5/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/Less/y?
text_vectorization_5/LessLess+text_vectorization_5/strided_slice:output:0$text_vectorization_5/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/Less?
text_vectorization_5/condStatelessIftext_vectorization_5/Less:z:0text_vectorization_5/sub:z:0Atext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *9
else_branch*R(
&text_vectorization_5_cond_false_330816*/
output_shapes
:??????????????????*8
then_branch)R'
%text_vectorization_5_cond_true_3308152
text_vectorization_5/cond?
"text_vectorization_5/cond/IdentityIdentity"text_vectorization_5/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_5/cond/Identity?
#embedding_8/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_5/cond/Identity:output:0embedding_8_330836*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_3304282%
#embedding_8/StatefulPartitionedCall?
flatten_8/PartitionedCallPartitionedCall,embedding_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_3304462
flatten_8/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_24_330840dense_24_330842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_3304652"
 dense_24/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_330845dense_25_330847*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_3304922"
 dense_25/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_330850dense_26_330852*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_3305192"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCallN^text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
??
?
C__inference_model_7_layer_call_and_return_conditional_losses_331044

inputs^
Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value	'
#embedding_8_embedding_lookup_331015+
'dense_24_matmul_readvariableop_resource,
(dense_24_biasadd_readvariableop_resource+
'dense_25_matmul_readvariableop_resource,
(dense_25_biasadd_readvariableop_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource
identity??dense_24/BiasAdd/ReadVariableOp?dense_24/MatMul/ReadVariableOp?dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?embedding_8/embedding_lookup?Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_5/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_5/StringLower?
'text_vectorization_5/StaticRegexReplaceStaticRegexReplace)text_vectorization_5/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_5/StaticRegexReplace?
text_vectorization_5/SqueezeSqueeze0text_vectorization_5/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_5/Squeeze?
&text_vectorization_5/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_5/StringSplit/Const?
.text_vectorization_5/StringSplit/StringSplitV2StringSplitV2%text_vectorization_5/Squeeze:output:0/text_vectorization_5/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_5/StringSplit/StringSplitV2?
4text_vectorization_5/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_5/StringSplit/strided_slice/stack?
6text_vectorization_5/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_5/StringSplit/strided_slice/stack_1?
6text_vectorization_5/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_5/StringSplit/strided_slice/stack_2?
.text_vectorization_5/StringSplit/strided_sliceStridedSlice8text_vectorization_5/StringSplit/StringSplitV2:indices:0=text_vectorization_5/StringSplit/strided_slice/stack:output:0?text_vectorization_5/StringSplit/strided_slice/stack_1:output:0?text_vectorization_5/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_5/StringSplit/strided_slice?
6text_vectorization_5/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_5/StringSplit/strided_slice_1/stack?
8text_vectorization_5/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_1?
8text_vectorization_5/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_2?
0text_vectorization_5/StringSplit/strided_slice_1StridedSlice6text_vectorization_5/StringSplit/StringSplitV2:shape:0?text_vectorization_5/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_5/StringSplit/strided_slice_1?
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_5/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_5/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_5/StringSplit/StringSplitV2:values:0[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_5/string_lookup_5/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_5/string_lookup_5/assert_equal/NoOp?
-text_vectorization_5/string_lookup_5/IdentityIdentityVtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_5/string_lookup_5/Identity?
/text_vectorization_5/string_lookup_5/Identity_1Identitybtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_5/string_lookup_5/Identity_1?
1text_vectorization_5/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_5/RaggedToTensor/default_value?
)text_vectorization_5/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_5/RaggedToTensor/Const?
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_5/RaggedToTensor/Const:output:06text_vectorization_5/string_lookup_5/Identity:output:0:text_vectorization_5/RaggedToTensor/default_value:output:08text_vectorization_5/string_lookup_5/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_5/ShapeShapeAtext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_5/Shape?
(text_vectorization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_5/strided_slice/stack?
*text_vectorization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_1?
*text_vectorization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_2?
"text_vectorization_5/strided_sliceStridedSlice#text_vectorization_5/Shape:output:01text_vectorization_5/strided_slice/stack:output:03text_vectorization_5/strided_slice/stack_1:output:03text_vectorization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_5/strided_slice{
text_vectorization_5/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/sub/x?
text_vectorization_5/subSub#text_vectorization_5/sub/x:output:0+text_vectorization_5/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/sub}
text_vectorization_5/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/Less/y?
text_vectorization_5/LessLess+text_vectorization_5/strided_slice:output:0$text_vectorization_5/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/Less?
text_vectorization_5/condStatelessIftext_vectorization_5/Less:z:0text_vectorization_5/sub:z:0Atext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *9
else_branch*R(
&text_vectorization_5_cond_false_330995*/
output_shapes
:??????????????????*8
then_branch)R'
%text_vectorization_5_cond_true_3309942
text_vectorization_5/cond?
"text_vectorization_5/cond/IdentityIdentity"text_vectorization_5/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_5/cond/Identity?
embedding_8/embedding_lookupResourceGather#embedding_8_embedding_lookup_331015+text_vectorization_5/cond/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*6
_class,
*(loc:@embedding_8/embedding_lookup/331015*,
_output_shapes
:??????????@*
dtype02
embedding_8/embedding_lookup?
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_8/embedding_lookup/331015*,
_output_shapes
:??????????@2'
%embedding_8/embedding_lookup/Identity?
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@2)
'embedding_8/embedding_lookup/Identity_1s
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? #  2
flatten_8/Const?
flatten_8/ReshapeReshape0embedding_8/embedding_lookup/Identity_1:output:0flatten_8/Const:output:0*
T0*(
_output_shapes
:??????????F2
flatten_8/Reshape?
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes
:	?F#*
dtype02 
dense_24/MatMul/ReadVariableOp?
dense_24/MatMulMatMulflatten_8/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
dense_24/MatMul?
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype02!
dense_24/BiasAdd/ReadVariableOp?
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
dense_24/BiasAdds
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:?????????#2
dense_24/Relu?
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes

:##*
dtype02 
dense_25/MatMul/ReadVariableOp?
dense_25/MatMulMatMuldense_24/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
dense_25/MatMul?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype02!
dense_25/BiasAdd/ReadVariableOp?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
dense_25/BiasAdds
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:?????????#2
dense_25/Relu?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes

:#*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMuldense_25/Relu:activations:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/BiasAdd|
dense_26/SigmoidSigmoiddense_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_26/Sigmoid?
IdentityIdentitydense_26/Sigmoid:y:0 ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp^embedding_8/embedding_lookupN^text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
??
?
!__inference__wrapped_model_330340
input_9f
bmodel_7_text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handleg
cmodel_7_text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value	/
+model_7_embedding_8_embedding_lookup_3303113
/model_7_dense_24_matmul_readvariableop_resource4
0model_7_dense_24_biasadd_readvariableop_resource3
/model_7_dense_25_matmul_readvariableop_resource4
0model_7_dense_25_biasadd_readvariableop_resource3
/model_7_dense_26_matmul_readvariableop_resource4
0model_7_dense_26_biasadd_readvariableop_resource
identity??'model_7/dense_24/BiasAdd/ReadVariableOp?&model_7/dense_24/MatMul/ReadVariableOp?'model_7/dense_25/BiasAdd/ReadVariableOp?&model_7/dense_25/MatMul/ReadVariableOp?'model_7/dense_26/BiasAdd/ReadVariableOp?&model_7/dense_26/MatMul/ReadVariableOp?$model_7/embedding_8/embedding_lookup?Umodel_7/text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
(model_7/text_vectorization_5/StringLowerStringLowerinput_9*'
_output_shapes
:?????????2*
(model_7/text_vectorization_5/StringLower?
/model_7/text_vectorization_5/StaticRegexReplaceStaticRegexReplace1model_7/text_vectorization_5/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 21
/model_7/text_vectorization_5/StaticRegexReplace?
$model_7/text_vectorization_5/SqueezeSqueeze8model_7/text_vectorization_5/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2&
$model_7/text_vectorization_5/Squeeze?
.model_7/text_vectorization_5/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 20
.model_7/text_vectorization_5/StringSplit/Const?
6model_7/text_vectorization_5/StringSplit/StringSplitV2StringSplitV2-model_7/text_vectorization_5/Squeeze:output:07model_7/text_vectorization_5/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:28
6model_7/text_vectorization_5/StringSplit/StringSplitV2?
<model_7/text_vectorization_5/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<model_7/text_vectorization_5/StringSplit/strided_slice/stack?
>model_7/text_vectorization_5/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2@
>model_7/text_vectorization_5/StringSplit/strided_slice/stack_1?
>model_7/text_vectorization_5/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>model_7/text_vectorization_5/StringSplit/strided_slice/stack_2?
6model_7/text_vectorization_5/StringSplit/strided_sliceStridedSlice@model_7/text_vectorization_5/StringSplit/StringSplitV2:indices:0Emodel_7/text_vectorization_5/StringSplit/strided_slice/stack:output:0Gmodel_7/text_vectorization_5/StringSplit/strided_slice/stack_1:output:0Gmodel_7/text_vectorization_5/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask28
6model_7/text_vectorization_5/StringSplit/strided_slice?
>model_7/text_vectorization_5/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>model_7/text_vectorization_5/StringSplit/strided_slice_1/stack?
@model_7/text_vectorization_5/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@model_7/text_vectorization_5/StringSplit/strided_slice_1/stack_1?
@model_7/text_vectorization_5/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@model_7/text_vectorization_5/StringSplit/strided_slice_1/stack_2?
8model_7/text_vectorization_5/StringSplit/strided_slice_1StridedSlice>model_7/text_vectorization_5/StringSplit/StringSplitV2:shape:0Gmodel_7/text_vectorization_5/StringSplit/strided_slice_1/stack:output:0Imodel_7/text_vectorization_5/StringSplit/strided_slice_1/stack_1:output:0Imodel_7/text_vectorization_5/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2:
8model_7/text_vectorization_5/StringSplit/strided_slice_1?
_model_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast?model_7/text_vectorization_5/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2a
_model_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
amodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastAmodel_7/text_vectorization_5/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2c
amodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
imodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapecmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2k
imodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
imodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2k
imodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
hmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdrmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0rmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2j
hmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
mmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2o
mmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterqmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0vmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2m
kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
hmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastomodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2j
hmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2m
kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
gmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxcmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2i
gmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
imodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2k
imodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
gmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2pmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0rmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2i
gmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
gmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMullmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2i
gmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumemodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2m
kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumemodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0omodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2m
kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2m
kmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
lmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountcmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0omodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0tmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2n
lmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
fmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2h
fmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
amodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumsmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0omodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2c
amodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
jmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2l
jmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
fmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2h
fmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
amodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2smodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0gmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0omodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2c
amodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Umodel_7/text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2LookupTableFindV2bmodel_7_text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle?model_7/text_vectorization_5/StringSplit/StringSplitV2:values:0cmodel_7_text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2W
Umodel_7/text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
>model_7/text_vectorization_5/string_lookup_5/assert_equal/NoOpNoOp*
_output_shapes
 2@
>model_7/text_vectorization_5/string_lookup_5/assert_equal/NoOp?
5model_7/text_vectorization_5/string_lookup_5/IdentityIdentity^model_7/text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????27
5model_7/text_vectorization_5/string_lookup_5/Identity?
7model_7/text_vectorization_5/string_lookup_5/Identity_1Identityjmodel_7/text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????29
7model_7/text_vectorization_5/string_lookup_5/Identity_1?
9model_7/text_vectorization_5/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 2;
9model_7/text_vectorization_5/RaggedToTensor/default_value?
1model_7/text_vectorization_5/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????23
1model_7/text_vectorization_5/RaggedToTensor/Const?
@model_7/text_vectorization_5/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor:model_7/text_vectorization_5/RaggedToTensor/Const:output:0>model_7/text_vectorization_5/string_lookup_5/Identity:output:0Bmodel_7/text_vectorization_5/RaggedToTensor/default_value:output:0@model_7/text_vectorization_5/string_lookup_5/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2B
@model_7/text_vectorization_5/RaggedToTensor/RaggedTensorToTensor?
"model_7/text_vectorization_5/ShapeShapeImodel_7/text_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2$
"model_7/text_vectorization_5/Shape?
0model_7/text_vectorization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0model_7/text_vectorization_5/strided_slice/stack?
2model_7/text_vectorization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2model_7/text_vectorization_5/strided_slice/stack_1?
2model_7/text_vectorization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2model_7/text_vectorization_5/strided_slice/stack_2?
*model_7/text_vectorization_5/strided_sliceStridedSlice+model_7/text_vectorization_5/Shape:output:09model_7/text_vectorization_5/strided_slice/stack:output:0;model_7/text_vectorization_5/strided_slice/stack_1:output:0;model_7/text_vectorization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*model_7/text_vectorization_5/strided_slice?
"model_7/text_vectorization_5/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2$
"model_7/text_vectorization_5/sub/x?
 model_7/text_vectorization_5/subSub+model_7/text_vectorization_5/sub/x:output:03model_7/text_vectorization_5/strided_slice:output:0*
T0*
_output_shapes
: 2"
 model_7/text_vectorization_5/sub?
#model_7/text_vectorization_5/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#model_7/text_vectorization_5/Less/y?
!model_7/text_vectorization_5/LessLess3model_7/text_vectorization_5/strided_slice:output:0,model_7/text_vectorization_5/Less/y:output:0*
T0*
_output_shapes
: 2#
!model_7/text_vectorization_5/Less?
!model_7/text_vectorization_5/condStatelessIf%model_7/text_vectorization_5/Less:z:0$model_7/text_vectorization_5/sub:z:0Imodel_7/text_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *A
else_branch2R0
.model_7_text_vectorization_5_cond_false_330291*/
output_shapes
:??????????????????*@
then_branch1R/
-model_7_text_vectorization_5_cond_true_3302902#
!model_7/text_vectorization_5/cond?
*model_7/text_vectorization_5/cond/IdentityIdentity*model_7/text_vectorization_5/cond:output:0*
T0	*(
_output_shapes
:??????????2,
*model_7/text_vectorization_5/cond/Identity?
$model_7/embedding_8/embedding_lookupResourceGather+model_7_embedding_8_embedding_lookup_3303113model_7/text_vectorization_5/cond/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*>
_class4
20loc:@model_7/embedding_8/embedding_lookup/330311*,
_output_shapes
:??????????@*
dtype02&
$model_7/embedding_8/embedding_lookup?
-model_7/embedding_8/embedding_lookup/IdentityIdentity-model_7/embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@model_7/embedding_8/embedding_lookup/330311*,
_output_shapes
:??????????@2/
-model_7/embedding_8/embedding_lookup/Identity?
/model_7/embedding_8/embedding_lookup/Identity_1Identity6model_7/embedding_8/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????@21
/model_7/embedding_8/embedding_lookup/Identity_1?
model_7/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? #  2
model_7/flatten_8/Const?
model_7/flatten_8/ReshapeReshape8model_7/embedding_8/embedding_lookup/Identity_1:output:0 model_7/flatten_8/Const:output:0*
T0*(
_output_shapes
:??????????F2
model_7/flatten_8/Reshape?
&model_7/dense_24/MatMul/ReadVariableOpReadVariableOp/model_7_dense_24_matmul_readvariableop_resource*
_output_shapes
:	?F#*
dtype02(
&model_7/dense_24/MatMul/ReadVariableOp?
model_7/dense_24/MatMulMatMul"model_7/flatten_8/Reshape:output:0.model_7/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
model_7/dense_24/MatMul?
'model_7/dense_24/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_24_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype02)
'model_7/dense_24/BiasAdd/ReadVariableOp?
model_7/dense_24/BiasAddBiasAdd!model_7/dense_24/MatMul:product:0/model_7/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
model_7/dense_24/BiasAdd?
model_7/dense_24/ReluRelu!model_7/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:?????????#2
model_7/dense_24/Relu?
&model_7/dense_25/MatMul/ReadVariableOpReadVariableOp/model_7_dense_25_matmul_readvariableop_resource*
_output_shapes

:##*
dtype02(
&model_7/dense_25/MatMul/ReadVariableOp?
model_7/dense_25/MatMulMatMul#model_7/dense_24/Relu:activations:0.model_7/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
model_7/dense_25/MatMul?
'model_7/dense_25/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_25_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype02)
'model_7/dense_25/BiasAdd/ReadVariableOp?
model_7/dense_25/BiasAddBiasAdd!model_7/dense_25/MatMul:product:0/model_7/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
model_7/dense_25/BiasAdd?
model_7/dense_25/ReluRelu!model_7/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:?????????#2
model_7/dense_25/Relu?
&model_7/dense_26/MatMul/ReadVariableOpReadVariableOp/model_7_dense_26_matmul_readvariableop_resource*
_output_shapes

:#*
dtype02(
&model_7/dense_26/MatMul/ReadVariableOp?
model_7/dense_26/MatMulMatMul#model_7/dense_25/Relu:activations:0.model_7/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_7/dense_26/MatMul?
'model_7/dense_26/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_7/dense_26/BiasAdd/ReadVariableOp?
model_7/dense_26/BiasAddBiasAdd!model_7/dense_26/MatMul:product:0/model_7/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_7/dense_26/BiasAdd?
model_7/dense_26/SigmoidSigmoid!model_7/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_7/dense_26/Sigmoid?
IdentityIdentitymodel_7/dense_26/Sigmoid:y:0(^model_7/dense_24/BiasAdd/ReadVariableOp'^model_7/dense_24/MatMul/ReadVariableOp(^model_7/dense_25/BiasAdd/ReadVariableOp'^model_7/dense_25/MatMul/ReadVariableOp(^model_7/dense_26/BiasAdd/ReadVariableOp'^model_7/dense_26/MatMul/ReadVariableOp%^model_7/embedding_8/embedding_lookupV^model_7/text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::2R
'model_7/dense_24/BiasAdd/ReadVariableOp'model_7/dense_24/BiasAdd/ReadVariableOp2P
&model_7/dense_24/MatMul/ReadVariableOp&model_7/dense_24/MatMul/ReadVariableOp2R
'model_7/dense_25/BiasAdd/ReadVariableOp'model_7/dense_25/BiasAdd/ReadVariableOp2P
&model_7/dense_25/MatMul/ReadVariableOp&model_7/dense_25/MatMul/ReadVariableOp2R
'model_7/dense_26/BiasAdd/ReadVariableOp'model_7/dense_26/BiasAdd/ReadVariableOp2P
&model_7/dense_26/MatMul/ReadVariableOp&model_7/dense_26/MatMul/ReadVariableOp2L
$model_7/embedding_8/embedding_lookup$model_7/embedding_8/embedding_lookup2?
Umodel_7/text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2Umodel_7/text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9:

_output_shapes
: 
?
?
%text_vectorization_5_cond_true_330994E
Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_subZ
Vtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
*text_vectorization_5/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_5/cond/Pad/paddings/1/0?
(text_vectorization_5/cond/Pad/paddings/1Pack3text_vectorization_5/cond/Pad/paddings/1/0:output:0Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_5/cond/Pad/paddings/1?
*text_vectorization_5/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_5/cond/Pad/paddings/0_1?
&text_vectorization_5/cond/Pad/paddingsPack3text_vectorization_5/cond/Pad/paddings/0_1:output:01text_vectorization_5/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_5/cond/Pad/paddings?
text_vectorization_5/cond/PadPadVtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor/text_vectorization_5/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_5/cond/Pad?
"text_vectorization_5/cond/IdentityIdentity&text_vectorization_5/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
(__inference_model_7_layer_call_fn_330877
input_9
unknown
	unknown_0	
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_3308562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9:

_output_shapes
: 
?
~
)__inference_dense_25_layer_call_fn_331264

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_3304922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????#2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????#::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????#
 
_user_specified_nameinputs
?
L
__inference__creator_331289
identity??string_lookup_5_index_table?
string_lookup_5_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_23853*
value_dtype0	2
string_lookup_5_index_table?
IdentityIdentity*string_lookup_5_index_table:table_handle:0^string_lookup_5_index_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 2:
string_lookup_5_index_tablestring_lookup_5_index_table
?
~
)__inference_dense_24_layer_call_fn_331244

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_3304652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????#2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????F::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????F
 
_user_specified_nameinputs
?
/
__inference__initializer_331294
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
%text_vectorization_5_cond_true_330815E
Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_subZ
Vtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
*text_vectorization_5/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_5/cond/Pad/paddings/1/0?
(text_vectorization_5/cond/Pad/paddings/1Pack3text_vectorization_5/cond/Pad/paddings/1/0:output:0Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_5/cond/Pad/paddings/1?
*text_vectorization_5/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_5/cond/Pad/paddings/0_1?
&text_vectorization_5/cond/Pad/paddingsPack3text_vectorization_5/cond/Pad/paddings/0_1:output:01text_vectorization_5/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_5/cond/Pad/paddings?
text_vectorization_5/cond/PadPadVtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor/text_vectorization_5/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_5/cond/Pad?
"text_vectorization_5/cond/IdentityIdentity&text_vectorization_5/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
-
__inference__destroyer_331299
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
&text_vectorization_5_cond_false_330594)
%text_vectorization_5_cond_placeholderd
`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
-text_vectorization_5/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_5/cond/strided_slice/stack?
/text_vectorization_5/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_5/cond/strided_slice/stack_1?
/text_vectorization_5/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_5/cond/strided_slice/stack_2?
'text_vectorization_5/cond/strided_sliceStridedSlice`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor6text_vectorization_5/cond/strided_slice/stack:output:08text_vectorization_5/cond/strided_slice/stack_1:output:08text_vectorization_5/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_5/cond/strided_slice?
"text_vectorization_5/cond/IdentityIdentity0text_vectorization_5/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
%text_vectorization_5_cond_true_330694E
Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_subZ
Vtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
*text_vectorization_5/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_5/cond/Pad/paddings/1/0?
(text_vectorization_5/cond/Pad/paddings/1Pack3text_vectorization_5/cond/Pad/paddings/1/0:output:0Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_5/cond/Pad/paddings/1?
*text_vectorization_5/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_5/cond/Pad/paddings/0_1?
&text_vectorization_5/cond/Pad/paddingsPack3text_vectorization_5/cond/Pad/paddings/0_1:output:01text_vectorization_5/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_5/cond/Pad/paddings?
text_vectorization_5/cond/PadPadVtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor/text_vectorization_5/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_5/cond/Pad?
"text_vectorization_5/cond/IdentityIdentity&text_vectorization_5/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
??
?
C__inference_model_7_layer_call_and_return_conditional_losses_330735

inputs^
Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value	
embedding_8_330715
dense_24_330719
dense_24_330721
dense_25_330724
dense_25_330726
dense_26_330729
dense_26_330731
identity?? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?#embedding_8/StatefulPartitionedCall?Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_5/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_5/StringLower?
'text_vectorization_5/StaticRegexReplaceStaticRegexReplace)text_vectorization_5/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_5/StaticRegexReplace?
text_vectorization_5/SqueezeSqueeze0text_vectorization_5/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_5/Squeeze?
&text_vectorization_5/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_5/StringSplit/Const?
.text_vectorization_5/StringSplit/StringSplitV2StringSplitV2%text_vectorization_5/Squeeze:output:0/text_vectorization_5/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_5/StringSplit/StringSplitV2?
4text_vectorization_5/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_5/StringSplit/strided_slice/stack?
6text_vectorization_5/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_5/StringSplit/strided_slice/stack_1?
6text_vectorization_5/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_5/StringSplit/strided_slice/stack_2?
.text_vectorization_5/StringSplit/strided_sliceStridedSlice8text_vectorization_5/StringSplit/StringSplitV2:indices:0=text_vectorization_5/StringSplit/strided_slice/stack:output:0?text_vectorization_5/StringSplit/strided_slice/stack_1:output:0?text_vectorization_5/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_5/StringSplit/strided_slice?
6text_vectorization_5/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_5/StringSplit/strided_slice_1/stack?
8text_vectorization_5/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_1?
8text_vectorization_5/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_2?
0text_vectorization_5/StringSplit/strided_slice_1StridedSlice6text_vectorization_5/StringSplit/StringSplitV2:shape:0?text_vectorization_5/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_5/StringSplit/strided_slice_1?
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_5/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_5/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_5/StringSplit/StringSplitV2:values:0[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_5/string_lookup_5/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_5/string_lookup_5/assert_equal/NoOp?
-text_vectorization_5/string_lookup_5/IdentityIdentityVtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_5/string_lookup_5/Identity?
/text_vectorization_5/string_lookup_5/Identity_1Identitybtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_5/string_lookup_5/Identity_1?
1text_vectorization_5/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_5/RaggedToTensor/default_value?
)text_vectorization_5/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_5/RaggedToTensor/Const?
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_5/RaggedToTensor/Const:output:06text_vectorization_5/string_lookup_5/Identity:output:0:text_vectorization_5/RaggedToTensor/default_value:output:08text_vectorization_5/string_lookup_5/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_5/ShapeShapeAtext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_5/Shape?
(text_vectorization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_5/strided_slice/stack?
*text_vectorization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_1?
*text_vectorization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_2?
"text_vectorization_5/strided_sliceStridedSlice#text_vectorization_5/Shape:output:01text_vectorization_5/strided_slice/stack:output:03text_vectorization_5/strided_slice/stack_1:output:03text_vectorization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_5/strided_slice{
text_vectorization_5/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/sub/x?
text_vectorization_5/subSub#text_vectorization_5/sub/x:output:0+text_vectorization_5/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/sub}
text_vectorization_5/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/Less/y?
text_vectorization_5/LessLess+text_vectorization_5/strided_slice:output:0$text_vectorization_5/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/Less?
text_vectorization_5/condStatelessIftext_vectorization_5/Less:z:0text_vectorization_5/sub:z:0Atext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *9
else_branch*R(
&text_vectorization_5_cond_false_330695*/
output_shapes
:??????????????????*8
then_branch)R'
%text_vectorization_5_cond_true_3306942
text_vectorization_5/cond?
"text_vectorization_5/cond/IdentityIdentity"text_vectorization_5/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_5/cond/Identity?
#embedding_8/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_5/cond/Identity:output:0embedding_8_330715*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_3304282%
#embedding_8/StatefulPartitionedCall?
flatten_8/PartitionedCallPartitionedCall,embedding_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_3304462
flatten_8/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_24_330719dense_24_330721*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_3304652"
 dense_24/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_330724dense_25_330726*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_3304922"
 dense_25/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_330729dense_26_330731*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_3305192"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCallN^text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
&text_vectorization_5_cond_false_331102)
%text_vectorization_5_cond_placeholderd
`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
-text_vectorization_5/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_5/cond/strided_slice/stack?
/text_vectorization_5/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_5/cond/strided_slice/stack_1?
/text_vectorization_5/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_5/cond/strided_slice/stack_2?
'text_vectorization_5/cond/strided_sliceStridedSlice`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor6text_vectorization_5/cond/strided_slice/stack:output:08text_vectorization_5/cond/strided_slice/stack_1:output:08text_vectorization_5/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_5/cond/strided_slice?
"text_vectorization_5/cond/IdentityIdentity0text_vectorization_5/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?G
?
__inference__traced_save_331451
file_prefix5
1savev2_embedding_8_embeddings_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopU
Qsavev2_string_lookup_5_index_table_lookup_table_export_values_lookuptableexportv2W
Ssavev2_string_lookup_5_index_table_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_8_embeddings_m_read_readvariableop5
1savev2_adam_dense_24_kernel_m_read_readvariableop3
/savev2_adam_dense_24_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop<
8savev2_adam_embedding_8_embeddings_v_read_readvariableop5
1savev2_adam_dense_24_kernel_v_read_readvariableop3
/savev2_adam_dense_24_bias_v_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop
savev2_const_1

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*?
value?B?!B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_8_embeddings_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopQsavev2_string_lookup_5_index_table_lookup_table_export_values_lookuptableexportv2Ssavev2_string_lookup_5_index_table_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_8_embeddings_m_read_readvariableop1savev2_adam_dense_24_kernel_m_read_readvariableop/savev2_adam_dense_24_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop8savev2_adam_embedding_8_embeddings_v_read_readvariableop1savev2_adam_dense_24_kernel_v_read_readvariableop/savev2_adam_dense_24_bias_v_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 */
dtypes%
#2!		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?N@:	?F#:#:##:#:#:: : : : : ::: : : : :	?N@:	?F#:#:##:#:#::	?N@:	?F#:#:##:#:#:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?N@:%!

_output_shapes
:	?F#: 

_output_shapes
:#:$ 

_output_shapes

:##: 

_output_shapes
:#:$ 

_output_shapes

:#: 

_output_shapes
::

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?N@:%!

_output_shapes
:	?F#: 

_output_shapes
:#:$ 

_output_shapes

:##: 

_output_shapes
:#:$ 

_output_shapes

:#: 

_output_shapes
::%!

_output_shapes
:	?N@:%!

_output_shapes
:	?F#: 

_output_shapes
:#:$ 

_output_shapes

:##: 

_output_shapes
:#:$ 

_output_shapes

:#:  

_output_shapes
::!

_output_shapes
: 
?
?
.model_7_text_vectorization_5_cond_false_3302911
-model_7_text_vectorization_5_cond_placeholdert
pmodel_7_text_vectorization_5_cond_strided_slice_model_7_text_vectorization_5_raggedtotensor_raggedtensortotensor	.
*model_7_text_vectorization_5_cond_identity	?
5model_7/text_vectorization_5/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5model_7/text_vectorization_5/cond/strided_slice/stack?
7model_7/text_vectorization_5/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   29
7model_7/text_vectorization_5/cond/strided_slice/stack_1?
7model_7/text_vectorization_5/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7model_7/text_vectorization_5/cond/strided_slice/stack_2?
/model_7/text_vectorization_5/cond/strided_sliceStridedSlicepmodel_7_text_vectorization_5_cond_strided_slice_model_7_text_vectorization_5_raggedtotensor_raggedtensortotensor>model_7/text_vectorization_5/cond/strided_slice/stack:output:0@model_7/text_vectorization_5/cond/strided_slice/stack_1:output:0@model_7/text_vectorization_5/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask21
/model_7/text_vectorization_5/cond/strided_slice?
*model_7/text_vectorization_5/cond/IdentityIdentity8model_7/text_vectorization_5/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2,
*model_7/text_vectorization_5/cond/Identity"a
*model_7_text_vectorization_5_cond_identity3model_7/text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
??
?
C__inference_model_7_layer_call_and_return_conditional_losses_330536
input_9^
Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value	
embedding_8_330437
dense_24_330476
dense_24_330478
dense_25_330503
dense_25_330505
dense_26_330530
dense_26_330532
identity?? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?#embedding_8/StatefulPartitionedCall?Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_5/StringLowerStringLowerinput_9*'
_output_shapes
:?????????2"
 text_vectorization_5/StringLower?
'text_vectorization_5/StaticRegexReplaceStaticRegexReplace)text_vectorization_5/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_5/StaticRegexReplace?
text_vectorization_5/SqueezeSqueeze0text_vectorization_5/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_5/Squeeze?
&text_vectorization_5/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_5/StringSplit/Const?
.text_vectorization_5/StringSplit/StringSplitV2StringSplitV2%text_vectorization_5/Squeeze:output:0/text_vectorization_5/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_5/StringSplit/StringSplitV2?
4text_vectorization_5/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_5/StringSplit/strided_slice/stack?
6text_vectorization_5/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_5/StringSplit/strided_slice/stack_1?
6text_vectorization_5/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_5/StringSplit/strided_slice/stack_2?
.text_vectorization_5/StringSplit/strided_sliceStridedSlice8text_vectorization_5/StringSplit/StringSplitV2:indices:0=text_vectorization_5/StringSplit/strided_slice/stack:output:0?text_vectorization_5/StringSplit/strided_slice/stack_1:output:0?text_vectorization_5/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_5/StringSplit/strided_slice?
6text_vectorization_5/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_5/StringSplit/strided_slice_1/stack?
8text_vectorization_5/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_1?
8text_vectorization_5/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_2?
0text_vectorization_5/StringSplit/strided_slice_1StridedSlice6text_vectorization_5/StringSplit/StringSplitV2:shape:0?text_vectorization_5/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_5/StringSplit/strided_slice_1?
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_5/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_5/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_5/StringSplit/StringSplitV2:values:0[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_5/string_lookup_5/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_5/string_lookup_5/assert_equal/NoOp?
-text_vectorization_5/string_lookup_5/IdentityIdentityVtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_5/string_lookup_5/Identity?
/text_vectorization_5/string_lookup_5/Identity_1Identitybtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_5/string_lookup_5/Identity_1?
1text_vectorization_5/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_5/RaggedToTensor/default_value?
)text_vectorization_5/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_5/RaggedToTensor/Const?
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_5/RaggedToTensor/Const:output:06text_vectorization_5/string_lookup_5/Identity:output:0:text_vectorization_5/RaggedToTensor/default_value:output:08text_vectorization_5/string_lookup_5/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_5/ShapeShapeAtext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_5/Shape?
(text_vectorization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_5/strided_slice/stack?
*text_vectorization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_1?
*text_vectorization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_2?
"text_vectorization_5/strided_sliceStridedSlice#text_vectorization_5/Shape:output:01text_vectorization_5/strided_slice/stack:output:03text_vectorization_5/strided_slice/stack_1:output:03text_vectorization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_5/strided_slice{
text_vectorization_5/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/sub/x?
text_vectorization_5/subSub#text_vectorization_5/sub/x:output:0+text_vectorization_5/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/sub}
text_vectorization_5/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/Less/y?
text_vectorization_5/LessLess+text_vectorization_5/strided_slice:output:0$text_vectorization_5/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/Less?
text_vectorization_5/condStatelessIftext_vectorization_5/Less:z:0text_vectorization_5/sub:z:0Atext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *9
else_branch*R(
&text_vectorization_5_cond_false_330399*/
output_shapes
:??????????????????*8
then_branch)R'
%text_vectorization_5_cond_true_3303982
text_vectorization_5/cond?
"text_vectorization_5/cond/IdentityIdentity"text_vectorization_5/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_5/cond/Identity?
#embedding_8/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_5/cond/Identity:output:0embedding_8_330437*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_3304282%
#embedding_8/StatefulPartitionedCall?
flatten_8/PartitionedCallPartitionedCall,embedding_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_3304462
flatten_8/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_24_330476dense_24_330478*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_3304652"
 dense_24/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_330503dense_25_330505*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_3304922"
 dense_25/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_330530dense_26_330532*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_3305192"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCallN^text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9:

_output_shapes
: 
?
?
__inference_save_fn_331318
checkpoint_key[
Wstring_lookup_5_index_table_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	??Jstring_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2?
Jstring_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Wstring_lookup_5_index_table_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::2L
Jstring_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1?
IdentityIdentityadd:z:0K^string_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const?

Identity_1IdentityConst:output:0K^string_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_1?

Identity_2IdentityQstring_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2:keys:0K^string_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
:2

Identity_2?

Identity_3Identity	add_1:z:0K^string_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1?

Identity_4IdentityConst_1:output:0K^string_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_4?

Identity_5IdentitySstring_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2:values:0K^string_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2*
T0	*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*
_input_shapes
: :2?
Jstring_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2Jstring_lookup_5_index_table_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
%text_vectorization_5_cond_true_330398E
Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_subZ
Vtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
*text_vectorization_5/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_5/cond/Pad/paddings/1/0?
(text_vectorization_5/cond/Pad/paddings/1Pack3text_vectorization_5/cond/Pad/paddings/1/0:output:0Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_5/cond/Pad/paddings/1?
*text_vectorization_5/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_5/cond/Pad/paddings/0_1?
&text_vectorization_5/cond/Pad/paddingsPack3text_vectorization_5/cond/Pad/paddings/0_1:output:01text_vectorization_5/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_5/cond/Pad/paddings?
text_vectorization_5/cond/PadPadVtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor/text_vectorization_5/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_5/cond/Pad?
"text_vectorization_5/cond/IdentityIdentity&text_vectorization_5/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
??
?
C__inference_model_7_layer_call_and_return_conditional_losses_330634
input_9^
Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value	
embedding_8_330614
dense_24_330618
dense_24_330620
dense_25_330623
dense_25_330625
dense_26_330628
dense_26_330630
identity?? dense_24/StatefulPartitionedCall? dense_25/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?#embedding_8/StatefulPartitionedCall?Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_5/StringLowerStringLowerinput_9*'
_output_shapes
:?????????2"
 text_vectorization_5/StringLower?
'text_vectorization_5/StaticRegexReplaceStaticRegexReplace)text_vectorization_5/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_5/StaticRegexReplace?
text_vectorization_5/SqueezeSqueeze0text_vectorization_5/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_5/Squeeze?
&text_vectorization_5/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_5/StringSplit/Const?
.text_vectorization_5/StringSplit/StringSplitV2StringSplitV2%text_vectorization_5/Squeeze:output:0/text_vectorization_5/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_5/StringSplit/StringSplitV2?
4text_vectorization_5/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_5/StringSplit/strided_slice/stack?
6text_vectorization_5/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_5/StringSplit/strided_slice/stack_1?
6text_vectorization_5/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_5/StringSplit/strided_slice/stack_2?
.text_vectorization_5/StringSplit/strided_sliceStridedSlice8text_vectorization_5/StringSplit/StringSplitV2:indices:0=text_vectorization_5/StringSplit/strided_slice/stack:output:0?text_vectorization_5/StringSplit/strided_slice/stack_1:output:0?text_vectorization_5/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_5/StringSplit/strided_slice?
6text_vectorization_5/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_5/StringSplit/strided_slice_1/stack?
8text_vectorization_5/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_1?
8text_vectorization_5/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_5/StringSplit/strided_slice_1/stack_2?
0text_vectorization_5/StringSplit/strided_slice_1StridedSlice6text_vectorization_5/StringSplit/StringSplitV2:shape:0?text_vectorization_5/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_5/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_5/StringSplit/strided_slice_1?
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_5/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_5/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_5/StringSplit/StringSplitV2:values:0[text_vectorization_5_string_lookup_5_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_5/string_lookup_5/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_5/string_lookup_5/assert_equal/NoOp?
-text_vectorization_5/string_lookup_5/IdentityIdentityVtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_5/string_lookup_5/Identity?
/text_vectorization_5/string_lookup_5/Identity_1Identitybtext_vectorization_5/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_5/string_lookup_5/Identity_1?
1text_vectorization_5/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_5/RaggedToTensor/default_value?
)text_vectorization_5/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_5/RaggedToTensor/Const?
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_5/RaggedToTensor/Const:output:06text_vectorization_5/string_lookup_5/Identity:output:0:text_vectorization_5/RaggedToTensor/default_value:output:08text_vectorization_5/string_lookup_5/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_5/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_5/ShapeShapeAtext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_5/Shape?
(text_vectorization_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_5/strided_slice/stack?
*text_vectorization_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_1?
*text_vectorization_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_5/strided_slice/stack_2?
"text_vectorization_5/strided_sliceStridedSlice#text_vectorization_5/Shape:output:01text_vectorization_5/strided_slice/stack:output:03text_vectorization_5/strided_slice/stack_1:output:03text_vectorization_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_5/strided_slice{
text_vectorization_5/sub/xConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/sub/x?
text_vectorization_5/subSub#text_vectorization_5/sub/x:output:0+text_vectorization_5/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/sub}
text_vectorization_5/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
text_vectorization_5/Less/y?
text_vectorization_5/LessLess+text_vectorization_5/strided_slice:output:0$text_vectorization_5/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_5/Less?
text_vectorization_5/condStatelessIftext_vectorization_5/Less:z:0text_vectorization_5/sub:z:0Atext_vectorization_5/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *9
else_branch*R(
&text_vectorization_5_cond_false_330594*/
output_shapes
:??????????????????*8
then_branch)R'
%text_vectorization_5_cond_true_3305932
text_vectorization_5/cond?
"text_vectorization_5/cond/IdentityIdentity"text_vectorization_5/cond:output:0*
T0	*(
_output_shapes
:??????????2$
"text_vectorization_5/cond/Identity?
#embedding_8/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_5/cond/Identity:output:0embedding_8_330614*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_3304282%
#embedding_8/StatefulPartitionedCall?
flatten_8/PartitionedCallPartitionedCall,embedding_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_3304462
flatten_8/PartitionedCall?
 dense_24/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_24_330618dense_24_330620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_3304652"
 dense_24/StatefulPartitionedCall?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_330623dense_25_330625*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_3304922"
 dense_25/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0dense_26_330628dense_26_330630*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_3305192"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCallN^text_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2?
Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_5/string_lookup_5/None_lookup_table_find/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9:

_output_shapes
: 
?
+
__inference_<lambda>_331331
identityS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
&text_vectorization_5_cond_false_330695)
%text_vectorization_5_cond_placeholderd
`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
-text_vectorization_5/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_5/cond/strided_slice/stack?
/text_vectorization_5/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_5/cond/strided_slice/stack_1?
/text_vectorization_5/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_5/cond/strided_slice/stack_2?
'text_vectorization_5/cond/strided_sliceStridedSlice`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor6text_vectorization_5/cond/strided_slice/stack:output:08text_vectorization_5/cond/strided_slice/stack_1:output:08text_vectorization_5/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_5/cond/strided_slice?
"text_vectorization_5/cond/IdentityIdentity0text_vectorization_5/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
r
,__inference_embedding_8_layer_call_fn_331213

inputs	
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_3304282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
އ
?
"__inference__traced_restore_331554
file_prefix+
'assignvariableop_embedding_8_embeddings&
"assignvariableop_1_dense_24_kernel$
 assignvariableop_2_dense_24_bias&
"assignvariableop_3_dense_25_kernel$
 assignvariableop_4_dense_25_bias&
"assignvariableop_5_dense_26_kernel$
 assignvariableop_6_dense_26_bias 
assignvariableop_7_adam_iter"
assignvariableop_8_adam_beta_1"
assignvariableop_9_adam_beta_2"
assignvariableop_10_adam_decay*
&assignvariableop_11_adam_learning_rate]
Ystring_lookup_5_index_table_table_restore_lookuptableimportv2_string_lookup_5_index_table
assignvariableop_12_total
assignvariableop_13_count
assignvariableop_14_total_1
assignvariableop_15_count_15
1assignvariableop_16_adam_embedding_8_embeddings_m.
*assignvariableop_17_adam_dense_24_kernel_m,
(assignvariableop_18_adam_dense_24_bias_m.
*assignvariableop_19_adam_dense_25_kernel_m,
(assignvariableop_20_adam_dense_25_bias_m.
*assignvariableop_21_adam_dense_26_kernel_m,
(assignvariableop_22_adam_dense_26_bias_m5
1assignvariableop_23_adam_embedding_8_embeddings_v.
*assignvariableop_24_adam_dense_24_kernel_v,
(assignvariableop_25_adam_dense_24_bias_v.
*assignvariableop_26_adam_dense_25_kernel_v,
(assignvariableop_27_adam_dense_25_bias_v.
*assignvariableop_28_adam_dense_26_kernel_v,
(assignvariableop_29_adam_dense_26_bias_v
identity_31??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?=string_lookup_5_index_table_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*?
value?B?!B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::*/
dtypes%
#2!		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp'assignvariableop_embedding_8_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_24_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_24_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_25_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_25_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_26_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_26_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11?
=string_lookup_5_index_table_table_restore/LookupTableImportV2LookupTableImportV2Ystring_lookup_5_index_table_table_restore_lookuptableimportv2_string_lookup_5_index_tableRestoreV2:tensors:12RestoreV2:tensors:13*	
Tin0*

Tout0	*.
_class$
" loc:@string_lookup_5_index_table*
_output_shapes
 2?
=string_lookup_5_index_table_table_restore/LookupTableImportV2n
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp1assignvariableop_16_adam_embedding_8_embeddings_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_24_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_24_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_25_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_25_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_26_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_26_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp1assignvariableop_23_adam_embedding_8_embeddings_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_24_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_dense_24_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_25_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dense_25_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_26_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense_26_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_299
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp>^string_lookup_5_index_table_table_restore/LookupTableImportV2"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_30?
Identity_31IdentityIdentity_30:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9>^string_lookup_5_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2
Identity_31"#
identity_31Identity_31:output:0*?
_input_shapes?
~: :::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92~
=string_lookup_5_index_table_table_restore/LookupTableImportV2=string_lookup_5_index_table_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_class$
" loc:@string_lookup_5_index_table
?
F
*__inference_flatten_8_layer_call_fn_331224

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_3304462
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????F2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_330910
input_9
unknown
	unknown_0	
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_3303402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9:

_output_shapes
: 
?	
?
D__inference_dense_25_layer_call_and_return_conditional_losses_330492

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:##*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????#2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????#2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????#::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????#
 
_user_specified_nameinputs
?
?
&text_vectorization_5_cond_false_330399)
%text_vectorization_5_cond_placeholderd
`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
-text_vectorization_5/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_5/cond/strided_slice/stack?
/text_vectorization_5/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_5/cond/strided_slice/stack_1?
/text_vectorization_5/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_5/cond/strided_slice/stack_2?
'text_vectorization_5/cond/strided_sliceStridedSlice`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor6text_vectorization_5/cond/strided_slice/stack:output:08text_vectorization_5/cond/strided_slice/stack_1:output:08text_vectorization_5/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_5/cond/strided_slice?
"text_vectorization_5/cond/IdentityIdentity0text_vectorization_5/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?	
?
D__inference_dense_25_layer_call_and_return_conditional_losses_331255

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:##*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????#2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????#2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????#::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????#
 
_user_specified_nameinputs
?
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_330446

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? #  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????F2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????F2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
&text_vectorization_5_cond_false_330995)
%text_vectorization_5_cond_placeholderd
`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
-text_vectorization_5/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_5/cond/strided_slice/stack?
/text_vectorization_5/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?   21
/text_vectorization_5/cond/strided_slice/stack_1?
/text_vectorization_5/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_5/cond/strided_slice/stack_2?
'text_vectorization_5/cond/strided_sliceStridedSlice`text_vectorization_5_cond_strided_slice_text_vectorization_5_raggedtotensor_raggedtensortotensor6text_vectorization_5/cond/strided_slice/stack:output:08text_vectorization_5/cond/strided_slice/stack_1:output:08text_vectorization_5/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_5/cond/strided_slice?
"text_vectorization_5/cond/IdentityIdentity0text_vectorization_5/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
~
)__inference_dense_26_layer_call_fn_331284

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_3305192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????#::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????#
 
_user_specified_nameinputs
?
?
%text_vectorization_5_cond_true_331101E
Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_subZ
Vtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor	&
"text_vectorization_5_cond_identity	?
*text_vectorization_5/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_5/cond/Pad/paddings/1/0?
(text_vectorization_5/cond/Pad/paddings/1Pack3text_vectorization_5/cond/Pad/paddings/1/0:output:0Atext_vectorization_5_cond_pad_paddings_1_text_vectorization_5_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_5/cond/Pad/paddings/1?
*text_vectorization_5/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_5/cond/Pad/paddings/0_1?
&text_vectorization_5/cond/Pad/paddingsPack3text_vectorization_5/cond/Pad/paddings/0_1:output:01text_vectorization_5/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_5/cond/Pad/paddings?
text_vectorization_5/cond/PadPadVtext_vectorization_5_cond_pad_text_vectorization_5_raggedtotensor_raggedtensortotensor/text_vectorization_5/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_5/cond/Pad?
"text_vectorization_5/cond/IdentityIdentity&text_vectorization_5/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_5/cond/Identity"Q
"text_vectorization_5_cond_identity+text_vectorization_5/cond/Identity:output:0*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
(__inference_model_7_layer_call_fn_331197

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_7_layer_call_and_return_conditional_losses_3308562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:?????????:: :::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
D__inference_dense_24_layer_call_and_return_conditional_losses_331235

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?F#*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????#2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????#2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????#2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????F::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????F
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_90
serving_default_input_9:0?????????<
dense_260
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?9
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
	optimizer
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
*k&call_and_return_all_conditional_losses
l__call__
m_default_save_signature"?6
_tf_keras_network?5{"class_name": "Functional", "name": "model_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_9"}, "name": "input_9", "inbound_nodes": []}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization_5", "trainable": true, "dtype": "string", "max_tokens": 10000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 140, "pad_to_max_tokens": true}, "name": "text_vectorization_5", "inbound_nodes": [[["input_9", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "embedding_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 140]}, "dtype": "float32", "input_dim": 10000, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 140}, "name": "embedding_8", "inbound_nodes": [[["text_vectorization_5", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_8", "inbound_nodes": [[["embedding_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 35, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_24", "inbound_nodes": [[["flatten_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 35, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_25", "inbound_nodes": [[["dense_24", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_26", "inbound_nodes": [[["dense_25", 0, 0, {}]]]}], "input_layers": [["input_9", 0, 0]], "output_layers": [["dense_26", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_9"}, "name": "input_9", "inbound_nodes": []}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization_5", "trainable": true, "dtype": "string", "max_tokens": 10000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 140, "pad_to_max_tokens": true}, "name": "text_vectorization_5", "inbound_nodes": [[["input_9", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "embedding_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 140]}, "dtype": "float32", "input_dim": 10000, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 140}, "name": "embedding_8", "inbound_nodes": [[["text_vectorization_5", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_8", "inbound_nodes": [[["embedding_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 35, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_24", "inbound_nodes": [[["flatten_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 35, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_25", "inbound_nodes": [[["dense_24", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_26", "inbound_nodes": [[["dense_25", 0, 0, {}]]]}], "input_layers": [["input_9", 0, 0]], "output_layers": [["dense_26", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_9", "dtype": "string", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_9"}}
?
state_variables
_index_lookup_layer
	keras_api"?
_tf_keras_layer?{"class_name": "TextVectorization", "name": "text_vectorization_5", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "text_vectorization_5", "trainable": true, "dtype": "string", "max_tokens": 10000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 140, "pad_to_max_tokens": true}, "build_input_shape": {"class_name": "TensorShape", "items": [800000, 1]}}
?

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
*p&call_and_return_all_conditional_losses
q__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 140]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 140]}, "dtype": "float32", "input_dim": 10000, "output_dim": 64, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 140}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 140]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
*r&call_and_return_all_conditional_losses
s__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_8", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*t&call_and_return_all_conditional_losses
u__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_24", "trainable": true, "dtype": "float32", "units": 35, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8960}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8960]}}
?

 kernel
!bias
"trainable_variables
#regularization_losses
$	variables
%	keras_api
*v&call_and_return_all_conditional_losses
w__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_25", "trainable": true, "dtype": "float32", "units": 35, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 35}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35]}}
?

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
*x&call_and_return_all_conditional_losses
y__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 35}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35]}}
?
,iter

-beta_1

.beta_2
	/decay
0learning_ratem]m^m_ m`!ma&mb'mcvdvevf vg!vh&vi'vj"
	optimizer
Q
0
1
2
 3
!4
&5
'6"
trackable_list_wrapper
 "
trackable_list_wrapper
Q
1
2
3
 4
!5
&6
'7"
trackable_list_wrapper
?
1layer_regularization_losses
2non_trainable_variables

3layers
4layer_metrics
	trainable_variables

regularization_losses
	variables
5metrics
l__call__
m_default_save_signature
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
,
zserving_default"
signature_map
 "
trackable_dict_wrapper
?
6state_variables

7_table
8	keras_api"?
_tf_keras_layer?{"class_name": "StringLookup", "name": "string_lookup_5", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "string_lookup_5", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "string", "invert": false, "max_tokens": 10000, "num_oov_indices": 1, "oov_token": "[UNK]", "mask_token": "", "encoding": "utf-8"}}
"
_generic_user_object
):'	?N@2embedding_8/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
9layer_regularization_losses

:layers
;non_trainable_variables
<layer_metrics
trainable_variables
regularization_losses
	variables
=metrics
q__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
>layer_regularization_losses

?layers
@non_trainable_variables
Alayer_metrics
trainable_variables
regularization_losses
	variables
Bmetrics
s__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
": 	?F#2dense_24/kernel
:#2dense_24/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Clayer_regularization_losses

Dlayers
Enon_trainable_variables
Flayer_metrics
trainable_variables
regularization_losses
	variables
Gmetrics
u__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
!:##2dense_25/kernel
:#2dense_25/bias
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
Hlayer_regularization_losses

Ilayers
Jnon_trainable_variables
Klayer_metrics
"trainable_variables
#regularization_losses
$	variables
Lmetrics
w__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
!:#2dense_26/kernel
:2dense_26/bias
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
?
Mlayer_regularization_losses

Nlayers
Onon_trainable_variables
Player_metrics
(trainable_variables
)regularization_losses
*	variables
Qmetrics
y__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_dict_wrapper
O
{_create_resource
|_initialize
}_destroy_resourceR Z
tableno
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
?
	Ttotal
	Ucount
V	variables
W	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	Xtotal
	Ycount
Z
_fn_kwargs
[	variables
\	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
.
T0
U1"
trackable_list_wrapper
-
V	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
X0
Y1"
trackable_list_wrapper
-
[	variables"
_generic_user_object
.:,	?N@2Adam/embedding_8/embeddings/m
':%	?F#2Adam/dense_24/kernel/m
 :#2Adam/dense_24/bias/m
&:$##2Adam/dense_25/kernel/m
 :#2Adam/dense_25/bias/m
&:$#2Adam/dense_26/kernel/m
 :2Adam/dense_26/bias/m
.:,	?N@2Adam/embedding_8/embeddings/v
':%	?F#2Adam/dense_24/kernel/v
 :#2Adam/dense_24/bias/v
&:$##2Adam/dense_25/kernel/v
 :#2Adam/dense_25/bias/v
&:$#2Adam/dense_26/kernel/v
 :2Adam/dense_26/bias/v
?2?
C__inference_model_7_layer_call_and_return_conditional_losses_331151
C__inference_model_7_layer_call_and_return_conditional_losses_330536
C__inference_model_7_layer_call_and_return_conditional_losses_330634
C__inference_model_7_layer_call_and_return_conditional_losses_331044?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_model_7_layer_call_fn_330877
(__inference_model_7_layer_call_fn_331174
(__inference_model_7_layer_call_fn_331197
(__inference_model_7_layer_call_fn_330756?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_330340?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_9?????????
?B?
__inference_save_fn_331318checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_331326restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
?2?
G__inference_embedding_8_layer_call_and_return_conditional_losses_331206?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_embedding_8_layer_call_fn_331213?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_8_layer_call_and_return_conditional_losses_331219?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_8_layer_call_fn_331224?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_24_layer_call_and_return_conditional_losses_331235?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_24_layer_call_fn_331244?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_25_layer_call_and_return_conditional_losses_331255?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_25_layer_call_fn_331264?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_26_layer_call_and_return_conditional_losses_331275?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_26_layer_call_fn_331284?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_330910input_9"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_331289?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_331294?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_331299?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const7
__inference__creator_331289?

? 
? "? 9
__inference__destroyer_331299?

? 
? "? ;
__inference__initializer_331294?

? 
? "? ?
!__inference__wrapped_model_330340r	7~ !&'0?-
&?#
!?
input_9?????????
? "3?0
.
dense_26"?
dense_26??????????
D__inference_dense_24_layer_call_and_return_conditional_losses_331235]0?-
&?#
!?
inputs??????????F
? "%?"
?
0?????????#
? }
)__inference_dense_24_layer_call_fn_331244P0?-
&?#
!?
inputs??????????F
? "??????????#?
D__inference_dense_25_layer_call_and_return_conditional_losses_331255\ !/?,
%?"
 ?
inputs?????????#
? "%?"
?
0?????????#
? |
)__inference_dense_25_layer_call_fn_331264O !/?,
%?"
 ?
inputs?????????#
? "??????????#?
D__inference_dense_26_layer_call_and_return_conditional_losses_331275\&'/?,
%?"
 ?
inputs?????????#
? "%?"
?
0?????????
? |
)__inference_dense_26_layer_call_fn_331284O&'/?,
%?"
 ?
inputs?????????#
? "???????????
G__inference_embedding_8_layer_call_and_return_conditional_losses_331206a0?-
&?#
!?
inputs??????????	
? "*?'
 ?
0??????????@
? ?
,__inference_embedding_8_layer_call_fn_331213T0?-
&?#
!?
inputs??????????	
? "???????????@?
E__inference_flatten_8_layer_call_and_return_conditional_losses_331219^4?1
*?'
%?"
inputs??????????@
? "&?#
?
0??????????F
? 
*__inference_flatten_8_layer_call_fn_331224Q4?1
*?'
%?"
inputs??????????@
? "???????????F?
C__inference_model_7_layer_call_and_return_conditional_losses_330536l	7~ !&'8?5
.?+
!?
input_9?????????
p

 
? "%?"
?
0?????????
? ?
C__inference_model_7_layer_call_and_return_conditional_losses_330634l	7~ !&'8?5
.?+
!?
input_9?????????
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_7_layer_call_and_return_conditional_losses_331044k	7~ !&'7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
C__inference_model_7_layer_call_and_return_conditional_losses_331151k	7~ !&'7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
(__inference_model_7_layer_call_fn_330756_	7~ !&'8?5
.?+
!?
input_9?????????
p

 
? "???????????
(__inference_model_7_layer_call_fn_330877_	7~ !&'8?5
.?+
!?
input_9?????????
p 

 
? "???????????
(__inference_model_7_layer_call_fn_331174^	7~ !&'7?4
-?*
 ?
inputs?????????
p

 
? "???????????
(__inference_model_7_layer_call_fn_331197^	7~ !&'7?4
-?*
 ?
inputs?????????
p 

 
? "??????????z
__inference_restore_fn_331326Y7K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_331318?7&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
$__inference_signature_wrapper_330910}	7~ !&';?8
? 
1?.
,
input_9!?
input_9?????????"3?0
.
dense_26"?
dense_26?????????