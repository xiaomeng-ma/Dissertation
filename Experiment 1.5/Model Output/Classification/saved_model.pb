??!
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
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
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
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
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
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
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-0-g919f693420e8??
z
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_18/kernel
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:@*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
:*
dtype0
z
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_19/kernel
s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

:*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
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
5token_and_position_embedding_4/embedding_8/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P@*F
shared_name75token_and_position_embedding_4/embedding_8/embeddings
?
Itoken_and_position_embedding_4/embedding_8/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_4/embedding_8/embeddings*
_output_shapes

:P@*
dtype0
?
5token_and_position_embedding_4/embedding_9/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*F
shared_name75token_and_position_embedding_4/embedding_9/embeddings
?
Itoken_and_position_embedding_4/embedding_9/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_4/embedding_9/embeddings*
_output_shapes

:@*
dtype0
?
7transformer_block_4/multi_head_attention_4/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*H
shared_name97transformer_block_4/multi_head_attention_4/query/kernel
?
Ktransformer_block_4/multi_head_attention_4/query/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_4/multi_head_attention_4/query/kernel*"
_output_shapes
:@@*
dtype0
?
5transformer_block_4/multi_head_attention_4/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*F
shared_name75transformer_block_4/multi_head_attention_4/query/bias
?
Itransformer_block_4/multi_head_attention_4/query/bias/Read/ReadVariableOpReadVariableOp5transformer_block_4/multi_head_attention_4/query/bias*
_output_shapes

:@*
dtype0
?
5transformer_block_4/multi_head_attention_4/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*F
shared_name75transformer_block_4/multi_head_attention_4/key/kernel
?
Itransformer_block_4/multi_head_attention_4/key/kernel/Read/ReadVariableOpReadVariableOp5transformer_block_4/multi_head_attention_4/key/kernel*"
_output_shapes
:@@*
dtype0
?
3transformer_block_4/multi_head_attention_4/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*D
shared_name53transformer_block_4/multi_head_attention_4/key/bias
?
Gtransformer_block_4/multi_head_attention_4/key/bias/Read/ReadVariableOpReadVariableOp3transformer_block_4/multi_head_attention_4/key/bias*
_output_shapes

:@*
dtype0
?
7transformer_block_4/multi_head_attention_4/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*H
shared_name97transformer_block_4/multi_head_attention_4/value/kernel
?
Ktransformer_block_4/multi_head_attention_4/value/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_4/multi_head_attention_4/value/kernel*"
_output_shapes
:@@*
dtype0
?
5transformer_block_4/multi_head_attention_4/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*F
shared_name75transformer_block_4/multi_head_attention_4/value/bias
?
Itransformer_block_4/multi_head_attention_4/value/bias/Read/ReadVariableOpReadVariableOp5transformer_block_4/multi_head_attention_4/value/bias*
_output_shapes

:@*
dtype0
?
Btransformer_block_4/multi_head_attention_4/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*S
shared_nameDBtransformer_block_4/multi_head_attention_4/attention_output/kernel
?
Vtransformer_block_4/multi_head_attention_4/attention_output/kernel/Read/ReadVariableOpReadVariableOpBtransformer_block_4/multi_head_attention_4/attention_output/kernel*"
_output_shapes
:@@*
dtype0
?
@transformer_block_4/multi_head_attention_4/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*Q
shared_nameB@transformer_block_4/multi_head_attention_4/attention_output/bias
?
Ttransformer_block_4/multi_head_attention_4/attention_output/bias/Read/ReadVariableOpReadVariableOp@transformer_block_4/multi_head_attention_4/attention_output/bias*
_output_shapes
:@*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:@ *
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
: *
dtype0
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

: @*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:@*
dtype0
?
/transformer_block_4/layer_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/transformer_block_4/layer_normalization_8/gamma
?
Ctransformer_block_4/layer_normalization_8/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_4/layer_normalization_8/gamma*
_output_shapes
:@*
dtype0
?
.transformer_block_4/layer_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.transformer_block_4/layer_normalization_8/beta
?
Btransformer_block_4/layer_normalization_8/beta/Read/ReadVariableOpReadVariableOp.transformer_block_4/layer_normalization_8/beta*
_output_shapes
:@*
dtype0
?
/transformer_block_4/layer_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/transformer_block_4/layer_normalization_9/gamma
?
Ctransformer_block_4/layer_normalization_9/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_4/layer_normalization_9/gamma*
_output_shapes
:@*
dtype0
?
.transformer_block_4/layer_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.transformer_block_4/layer_normalization_9/beta
?
Btransformer_block_4/layer_normalization_9/beta/Read/ReadVariableOpReadVariableOp.transformer_block_4/layer_normalization_9/beta*
_output_shapes
:@*
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
Adam/dense_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_18/kernel/m
?
*Adam/dense_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/m
y
(Adam/dense_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_19/kernel/m
?
*Adam/dense_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/m
y
(Adam/dense_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/m*
_output_shapes
:*
dtype0
?
<Adam/token_and_position_embedding_4/embedding_8/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P@*M
shared_name><Adam/token_and_position_embedding_4/embedding_8/embeddings/m
?
PAdam/token_and_position_embedding_4/embedding_8/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_4/embedding_8/embeddings/m*
_output_shapes

:P@*
dtype0
?
<Adam/token_and_position_embedding_4/embedding_9/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/token_and_position_embedding_4/embedding_9/embeddings/m
?
PAdam/token_and_position_embedding_4/embedding_9/embeddings/m/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_4/embedding_9/embeddings/m*
_output_shapes

:@*
dtype0
?
>Adam/transformer_block_4/multi_head_attention_4/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*O
shared_name@>Adam/transformer_block_4/multi_head_attention_4/query/kernel/m
?
RAdam/transformer_block_4/multi_head_attention_4/query/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_4/multi_head_attention_4/query/kernel/m*"
_output_shapes
:@@*
dtype0
?
<Adam/transformer_block_4/multi_head_attention_4/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/transformer_block_4/multi_head_attention_4/query/bias/m
?
PAdam/transformer_block_4/multi_head_attention_4/query/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_4/multi_head_attention_4/query/bias/m*
_output_shapes

:@*
dtype0
?
<Adam/transformer_block_4/multi_head_attention_4/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*M
shared_name><Adam/transformer_block_4/multi_head_attention_4/key/kernel/m
?
PAdam/transformer_block_4/multi_head_attention_4/key/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_4/multi_head_attention_4/key/kernel/m*"
_output_shapes
:@@*
dtype0
?
:Adam/transformer_block_4/multi_head_attention_4/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*K
shared_name<:Adam/transformer_block_4/multi_head_attention_4/key/bias/m
?
NAdam/transformer_block_4/multi_head_attention_4/key/bias/m/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_4/multi_head_attention_4/key/bias/m*
_output_shapes

:@*
dtype0
?
>Adam/transformer_block_4/multi_head_attention_4/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*O
shared_name@>Adam/transformer_block_4/multi_head_attention_4/value/kernel/m
?
RAdam/transformer_block_4/multi_head_attention_4/value/kernel/m/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_4/multi_head_attention_4/value/kernel/m*"
_output_shapes
:@@*
dtype0
?
<Adam/transformer_block_4/multi_head_attention_4/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/transformer_block_4/multi_head_attention_4/value/bias/m
?
PAdam/transformer_block_4/multi_head_attention_4/value/bias/m/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_4/multi_head_attention_4/value/bias/m*
_output_shapes

:@*
dtype0
?
IAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*Z
shared_nameKIAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/m
?
]Adam/transformer_block_4/multi_head_attention_4/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/m*"
_output_shapes
:@@*
dtype0
?
GAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*X
shared_nameIGAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/m
?
[Adam/transformer_block_4/multi_head_attention_4/attention_output/bias/m/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_16/kernel/m
?
*Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/m*
_output_shapes

:@ *
dtype0
?
Adam/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_16/bias/m
y
(Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*'
shared_nameAdam/dense_17/kernel/m
?
*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes

: @*
dtype0
?
Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_17/bias/m
y
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes
:@*
dtype0
?
6Adam/transformer_block_4/layer_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*G
shared_name86Adam/transformer_block_4/layer_normalization_8/gamma/m
?
JAdam/transformer_block_4/layer_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_4/layer_normalization_8/gamma/m*
_output_shapes
:@*
dtype0
?
5Adam/transformer_block_4/layer_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75Adam/transformer_block_4/layer_normalization_8/beta/m
?
IAdam/transformer_block_4/layer_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_4/layer_normalization_8/beta/m*
_output_shapes
:@*
dtype0
?
6Adam/transformer_block_4/layer_normalization_9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*G
shared_name86Adam/transformer_block_4/layer_normalization_9/gamma/m
?
JAdam/transformer_block_4/layer_normalization_9/gamma/m/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_4/layer_normalization_9/gamma/m*
_output_shapes
:@*
dtype0
?
5Adam/transformer_block_4/layer_normalization_9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75Adam/transformer_block_4/layer_normalization_9/beta/m
?
IAdam/transformer_block_4/layer_normalization_9/beta/m/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_4/layer_normalization_9/beta/m*
_output_shapes
:@*
dtype0
?
Adam/dense_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_18/kernel/v
?
*Adam/dense_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/v
y
(Adam/dense_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_19/kernel/v
?
*Adam/dense_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/v
y
(Adam/dense_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/v*
_output_shapes
:*
dtype0
?
<Adam/token_and_position_embedding_4/embedding_8/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P@*M
shared_name><Adam/token_and_position_embedding_4/embedding_8/embeddings/v
?
PAdam/token_and_position_embedding_4/embedding_8/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_4/embedding_8/embeddings/v*
_output_shapes

:P@*
dtype0
?
<Adam/token_and_position_embedding_4/embedding_9/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/token_and_position_embedding_4/embedding_9/embeddings/v
?
PAdam/token_and_position_embedding_4/embedding_9/embeddings/v/Read/ReadVariableOpReadVariableOp<Adam/token_and_position_embedding_4/embedding_9/embeddings/v*
_output_shapes

:@*
dtype0
?
>Adam/transformer_block_4/multi_head_attention_4/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*O
shared_name@>Adam/transformer_block_4/multi_head_attention_4/query/kernel/v
?
RAdam/transformer_block_4/multi_head_attention_4/query/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_4/multi_head_attention_4/query/kernel/v*"
_output_shapes
:@@*
dtype0
?
<Adam/transformer_block_4/multi_head_attention_4/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/transformer_block_4/multi_head_attention_4/query/bias/v
?
PAdam/transformer_block_4/multi_head_attention_4/query/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_4/multi_head_attention_4/query/bias/v*
_output_shapes

:@*
dtype0
?
<Adam/transformer_block_4/multi_head_attention_4/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*M
shared_name><Adam/transformer_block_4/multi_head_attention_4/key/kernel/v
?
PAdam/transformer_block_4/multi_head_attention_4/key/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_4/multi_head_attention_4/key/kernel/v*"
_output_shapes
:@@*
dtype0
?
:Adam/transformer_block_4/multi_head_attention_4/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*K
shared_name<:Adam/transformer_block_4/multi_head_attention_4/key/bias/v
?
NAdam/transformer_block_4/multi_head_attention_4/key/bias/v/Read/ReadVariableOpReadVariableOp:Adam/transformer_block_4/multi_head_attention_4/key/bias/v*
_output_shapes

:@*
dtype0
?
>Adam/transformer_block_4/multi_head_attention_4/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*O
shared_name@>Adam/transformer_block_4/multi_head_attention_4/value/kernel/v
?
RAdam/transformer_block_4/multi_head_attention_4/value/kernel/v/Read/ReadVariableOpReadVariableOp>Adam/transformer_block_4/multi_head_attention_4/value/kernel/v*"
_output_shapes
:@@*
dtype0
?
<Adam/transformer_block_4/multi_head_attention_4/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*M
shared_name><Adam/transformer_block_4/multi_head_attention_4/value/bias/v
?
PAdam/transformer_block_4/multi_head_attention_4/value/bias/v/Read/ReadVariableOpReadVariableOp<Adam/transformer_block_4/multi_head_attention_4/value/bias/v*
_output_shapes

:@*
dtype0
?
IAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*Z
shared_nameKIAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/v
?
]Adam/transformer_block_4/multi_head_attention_4/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/v*"
_output_shapes
:@@*
dtype0
?
GAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*X
shared_nameIGAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/v
?
[Adam/transformer_block_4/multi_head_attention_4/attention_output/bias/v/Read/ReadVariableOpReadVariableOpGAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_16/kernel/v
?
*Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/v*
_output_shapes

:@ *
dtype0
?
Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_16/bias/v
y
(Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*'
shared_nameAdam/dense_17/kernel/v
?
*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes

: @*
dtype0
?
Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_17/bias/v
y
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes
:@*
dtype0
?
6Adam/transformer_block_4/layer_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*G
shared_name86Adam/transformer_block_4/layer_normalization_8/gamma/v
?
JAdam/transformer_block_4/layer_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_4/layer_normalization_8/gamma/v*
_output_shapes
:@*
dtype0
?
5Adam/transformer_block_4/layer_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75Adam/transformer_block_4/layer_normalization_8/beta/v
?
IAdam/transformer_block_4/layer_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_4/layer_normalization_8/beta/v*
_output_shapes
:@*
dtype0
?
6Adam/transformer_block_4/layer_normalization_9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*G
shared_name86Adam/transformer_block_4/layer_normalization_9/gamma/v
?
JAdam/transformer_block_4/layer_normalization_9/gamma/v/Read/ReadVariableOpReadVariableOp6Adam/transformer_block_4/layer_normalization_9/gamma/v*
_output_shapes
:@*
dtype0
?
5Adam/transformer_block_4/layer_normalization_9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75Adam/transformer_block_4/layer_normalization_9/beta/v
?
IAdam/transformer_block_4/layer_normalization_9/beta/v/Read/ReadVariableOpReadVariableOp5Adam/transformer_block_4/layer_normalization_9/beta/v*
_output_shapes
:@*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
n
	token_emb
pos_emb
trainable_variables
	variables
regularization_losses
	keras_api
?
att
ffn

layernorm1

layernorm2
dropout1
dropout2
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
 	variables
!regularization_losses
"	keras_api
R
#trainable_variables
$	variables
%regularization_losses
&	keras_api
h

'kernel
(bias
)trainable_variables
*	variables
+regularization_losses
,	keras_api
R
-trainable_variables
.	variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3trainable_variables
4	variables
5regularization_losses
6	keras_api
?
7iter

8beta_1

9beta_2
	:decay
;learning_rate'm?(m?1m?2m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?'v?(v?1v?2v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221
 
?

	variables
Nmetrics
Olayer_regularization_losses

Players
Qlayer_metrics
Rnon_trainable_variables
trainable_variables
regularization_losses
 
b
<
embeddings
Strainable_variables
T	variables
Uregularization_losses
V	keras_api
b
=
embeddings
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api

<0
=1

<0
=1
 
?
trainable_variables
	variables
[layer_regularization_losses

\layers
]layer_metrics
^non_trainable_variables
_metrics
regularization_losses
?
`_query_dense
a
_key_dense
b_value_dense
c_softmax
d_dropout_layer
e_output_dense
ftrainable_variables
g	variables
hregularization_losses
i	keras_api
?
jlayer_with_weights-0
jlayer-0
klayer_with_weights-1
klayer-1
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
q
paxis
	Jgamma
Kbeta
qtrainable_variables
r	variables
sregularization_losses
t	keras_api
q
uaxis
	Lgamma
Mbeta
vtrainable_variables
w	variables
xregularization_losses
y	keras_api
R
ztrainable_variables
{	variables
|regularization_losses
}	keras_api
T
~trainable_variables
	variables
?regularization_losses
?	keras_api
v
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
v
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15
 
?
trainable_variables
	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
regularization_losses
 
 
 
?
trainable_variables
 	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
!regularization_losses
 
 
 
?
#trainable_variables
$	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
%regularization_losses
[Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_18/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1

'0
(1
 
?
)trainable_variables
*	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
+regularization_losses
 
 
 
?
-trainable_variables
.	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
/regularization_losses
[Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_19/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
?
3trainable_variables
4	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
5regularization_losses
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
qo
VARIABLE_VALUE5token_and_position_embedding_4/embedding_8/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5token_and_position_embedding_4/embedding_9/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE7transformer_block_4/multi_head_attention_4/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_4/multi_head_attention_4/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_4/multi_head_attention_4/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3transformer_block_4/multi_head_attention_4/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE7transformer_block_4/multi_head_attention_4/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer_block_4/multi_head_attention_4/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEBtransformer_block_4/multi_head_attention_4/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE@transformer_block_4/multi_head_attention_4/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_16/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_16/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_17/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_17/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer_block_4/layer_normalization_8/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.transformer_block_4/layer_normalization_8/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer_block_4/layer_normalization_9/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.transformer_block_4/layer_normalization_9/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 
8
0
1
2
3
4
5
6
7
 
 

<0

<0
 
?
Strainable_variables
T	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
Uregularization_losses

=0

=0
 
?
Wtrainable_variables
X	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
Yregularization_losses
 

0
1
 
 
 
?
?partial_output_shape
?full_output_shape

>kernel
?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

@kernel
Abias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

Bkernel
Cbias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
?partial_output_shape
?full_output_shape

Dkernel
Ebias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
8
>0
?1
@2
A3
B4
C5
D6
E7
8
>0
?1
@2
A3
B4
C5
D6
E7
 
?
ftrainable_variables
g	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
hregularization_losses
l

Fkernel
Gbias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
l

Hkernel
Ibias
?trainable_variables
?	variables
?regularization_losses
?	keras_api

F0
G1
H2
I3

F0
G1
H2
I3
 
?
l	variables
?metrics
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
mtrainable_variables
nregularization_losses
 

J0
K1

J0
K1
 
?
qtrainable_variables
r	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
sregularization_losses
 

L0
M1

L0
M1
 
?
vtrainable_variables
w	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
xregularization_losses
 
 
 
?
ztrainable_variables
{	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
|regularization_losses
 
 
 
?
~trainable_variables
	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
 
*
0
1
2
3
4
5
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
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
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

>0
?1

>0
?1
 
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
 
 

@0
A1

@0
A1
 
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
 
 

B0
C1

B0
C1
 
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
 
 
 
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
 
 
 
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
 
 

D0
E1

D0
E1
 
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
 
*
`0
a1
b2
c3
d4
e5
 
 
 

F0
G1

F0
G1
 
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses

H0
I1

H0
I1
 
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
 
 

j0
k1
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
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
~|
VARIABLE_VALUEAdam/dense_18/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_18/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_19/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_19/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/token_and_position_embedding_4/embedding_8/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/token_and_position_embedding_4/embedding_9/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_4/multi_head_attention_4/query/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_4/multi_head_attention_4/query/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_4/multi_head_attention_4/key/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/transformer_block_4/multi_head_attention_4/key/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_4/multi_head_attention_4/value/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_4/multi_head_attention_4/value/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEIAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_16/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_16/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_17/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_17/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_4/layer_normalization_8/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/transformer_block_4/layer_normalization_8/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_4/layer_normalization_9/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/transformer_block_4/layer_normalization_9/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_18/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_18/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_19/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_19/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/token_and_position_embedding_4/embedding_8/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/token_and_position_embedding_4/embedding_9/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_4/multi_head_attention_4/query/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_4/multi_head_attention_4/query/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_4/multi_head_attention_4/key/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/transformer_block_4/multi_head_attention_4/key/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/transformer_block_4/multi_head_attention_4/value/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/transformer_block_4/multi_head_attention_4/value/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEIAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEGAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_16/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_16/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_17/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_17/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_4/layer_normalization_8/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/transformer_block_4/layer_normalization_8/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE6Adam/transformer_block_4/layer_normalization_9/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE5Adam/transformer_block_4/layer_normalization_9/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_5Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_55token_and_position_embedding_4/embedding_9/embeddings5token_and_position_embedding_4/embedding_8/embeddings7transformer_block_4/multi_head_attention_4/query/kernel5transformer_block_4/multi_head_attention_4/query/bias5transformer_block_4/multi_head_attention_4/key/kernel3transformer_block_4/multi_head_attention_4/key/bias7transformer_block_4/multi_head_attention_4/value/kernel5transformer_block_4/multi_head_attention_4/value/biasBtransformer_block_4/multi_head_attention_4/attention_output/kernel@transformer_block_4/multi_head_attention_4/attention_output/bias/transformer_block_4/layer_normalization_8/gamma.transformer_block_4/layer_normalization_8/betadense_16/kerneldense_16/biasdense_17/kerneldense_17/bias/transformer_block_4/layer_normalization_9/gamma.transformer_block_4/layer_normalization_9/betadense_18/kerneldense_18/biasdense_19/kerneldense_19/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_82601
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?&
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpItoken_and_position_embedding_4/embedding_8/embeddings/Read/ReadVariableOpItoken_and_position_embedding_4/embedding_9/embeddings/Read/ReadVariableOpKtransformer_block_4/multi_head_attention_4/query/kernel/Read/ReadVariableOpItransformer_block_4/multi_head_attention_4/query/bias/Read/ReadVariableOpItransformer_block_4/multi_head_attention_4/key/kernel/Read/ReadVariableOpGtransformer_block_4/multi_head_attention_4/key/bias/Read/ReadVariableOpKtransformer_block_4/multi_head_attention_4/value/kernel/Read/ReadVariableOpItransformer_block_4/multi_head_attention_4/value/bias/Read/ReadVariableOpVtransformer_block_4/multi_head_attention_4/attention_output/kernel/Read/ReadVariableOpTtransformer_block_4/multi_head_attention_4/attention_output/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpCtransformer_block_4/layer_normalization_8/gamma/Read/ReadVariableOpBtransformer_block_4/layer_normalization_8/beta/Read/ReadVariableOpCtransformer_block_4/layer_normalization_9/gamma/Read/ReadVariableOpBtransformer_block_4/layer_normalization_9/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_18/kernel/m/Read/ReadVariableOp(Adam/dense_18/bias/m/Read/ReadVariableOp*Adam/dense_19/kernel/m/Read/ReadVariableOp(Adam/dense_19/bias/m/Read/ReadVariableOpPAdam/token_and_position_embedding_4/embedding_8/embeddings/m/Read/ReadVariableOpPAdam/token_and_position_embedding_4/embedding_9/embeddings/m/Read/ReadVariableOpRAdam/transformer_block_4/multi_head_attention_4/query/kernel/m/Read/ReadVariableOpPAdam/transformer_block_4/multi_head_attention_4/query/bias/m/Read/ReadVariableOpPAdam/transformer_block_4/multi_head_attention_4/key/kernel/m/Read/ReadVariableOpNAdam/transformer_block_4/multi_head_attention_4/key/bias/m/Read/ReadVariableOpRAdam/transformer_block_4/multi_head_attention_4/value/kernel/m/Read/ReadVariableOpPAdam/transformer_block_4/multi_head_attention_4/value/bias/m/Read/ReadVariableOp]Adam/transformer_block_4/multi_head_attention_4/attention_output/kernel/m/Read/ReadVariableOp[Adam/transformer_block_4/multi_head_attention_4/attention_output/bias/m/Read/ReadVariableOp*Adam/dense_16/kernel/m/Read/ReadVariableOp(Adam/dense_16/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOpJAdam/transformer_block_4/layer_normalization_8/gamma/m/Read/ReadVariableOpIAdam/transformer_block_4/layer_normalization_8/beta/m/Read/ReadVariableOpJAdam/transformer_block_4/layer_normalization_9/gamma/m/Read/ReadVariableOpIAdam/transformer_block_4/layer_normalization_9/beta/m/Read/ReadVariableOp*Adam/dense_18/kernel/v/Read/ReadVariableOp(Adam/dense_18/bias/v/Read/ReadVariableOp*Adam/dense_19/kernel/v/Read/ReadVariableOp(Adam/dense_19/bias/v/Read/ReadVariableOpPAdam/token_and_position_embedding_4/embedding_8/embeddings/v/Read/ReadVariableOpPAdam/token_and_position_embedding_4/embedding_9/embeddings/v/Read/ReadVariableOpRAdam/transformer_block_4/multi_head_attention_4/query/kernel/v/Read/ReadVariableOpPAdam/transformer_block_4/multi_head_attention_4/query/bias/v/Read/ReadVariableOpPAdam/transformer_block_4/multi_head_attention_4/key/kernel/v/Read/ReadVariableOpNAdam/transformer_block_4/multi_head_attention_4/key/bias/v/Read/ReadVariableOpRAdam/transformer_block_4/multi_head_attention_4/value/kernel/v/Read/ReadVariableOpPAdam/transformer_block_4/multi_head_attention_4/value/bias/v/Read/ReadVariableOp]Adam/transformer_block_4/multi_head_attention_4/attention_output/kernel/v/Read/ReadVariableOp[Adam/transformer_block_4/multi_head_attention_4/attention_output/bias/v/Read/ReadVariableOp*Adam/dense_16/kernel/v/Read/ReadVariableOp(Adam/dense_16/bias/v/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOpJAdam/transformer_block_4/layer_normalization_8/gamma/v/Read/ReadVariableOpIAdam/transformer_block_4/layer_normalization_8/beta/v/Read/ReadVariableOpJAdam/transformer_block_4/layer_normalization_9/gamma/v/Read/ReadVariableOpIAdam/transformer_block_4/layer_normalization_9/beta/v/Read/ReadVariableOpConst*X
TinQ
O2M	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_84013
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_18/kerneldense_18/biasdense_19/kerneldense_19/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate5token_and_position_embedding_4/embedding_8/embeddings5token_and_position_embedding_4/embedding_9/embeddings7transformer_block_4/multi_head_attention_4/query/kernel5transformer_block_4/multi_head_attention_4/query/bias5transformer_block_4/multi_head_attention_4/key/kernel3transformer_block_4/multi_head_attention_4/key/bias7transformer_block_4/multi_head_attention_4/value/kernel5transformer_block_4/multi_head_attention_4/value/biasBtransformer_block_4/multi_head_attention_4/attention_output/kernel@transformer_block_4/multi_head_attention_4/attention_output/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/bias/transformer_block_4/layer_normalization_8/gamma.transformer_block_4/layer_normalization_8/beta/transformer_block_4/layer_normalization_9/gamma.transformer_block_4/layer_normalization_9/betatotalcounttotal_1count_1Adam/dense_18/kernel/mAdam/dense_18/bias/mAdam/dense_19/kernel/mAdam/dense_19/bias/m<Adam/token_and_position_embedding_4/embedding_8/embeddings/m<Adam/token_and_position_embedding_4/embedding_9/embeddings/m>Adam/transformer_block_4/multi_head_attention_4/query/kernel/m<Adam/transformer_block_4/multi_head_attention_4/query/bias/m<Adam/transformer_block_4/multi_head_attention_4/key/kernel/m:Adam/transformer_block_4/multi_head_attention_4/key/bias/m>Adam/transformer_block_4/multi_head_attention_4/value/kernel/m<Adam/transformer_block_4/multi_head_attention_4/value/bias/mIAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/mGAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/mAdam/dense_16/kernel/mAdam/dense_16/bias/mAdam/dense_17/kernel/mAdam/dense_17/bias/m6Adam/transformer_block_4/layer_normalization_8/gamma/m5Adam/transformer_block_4/layer_normalization_8/beta/m6Adam/transformer_block_4/layer_normalization_9/gamma/m5Adam/transformer_block_4/layer_normalization_9/beta/mAdam/dense_18/kernel/vAdam/dense_18/bias/vAdam/dense_19/kernel/vAdam/dense_19/bias/v<Adam/token_and_position_embedding_4/embedding_8/embeddings/v<Adam/token_and_position_embedding_4/embedding_9/embeddings/v>Adam/transformer_block_4/multi_head_attention_4/query/kernel/v<Adam/transformer_block_4/multi_head_attention_4/query/bias/v<Adam/transformer_block_4/multi_head_attention_4/key/kernel/v:Adam/transformer_block_4/multi_head_attention_4/key/bias/v>Adam/transformer_block_4/multi_head_attention_4/value/kernel/v<Adam/transformer_block_4/multi_head_attention_4/value/bias/vIAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/vGAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/vAdam/dense_16/kernel/vAdam/dense_16/bias/vAdam/dense_17/kernel/vAdam/dense_17/bias/v6Adam/transformer_block_4/layer_normalization_8/gamma/v5Adam/transformer_block_4/layer_normalization_8/beta/v6Adam/transformer_block_4/layer_normalization_9/gamma/v5Adam/transformer_block_4/layer_normalization_9/beta/v*W
TinP
N2L*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_84248??
?
q
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_81838

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
>__inference_token_and_position_embedding_4_layer_call_fn_83065
x
unknown:@
	unknown_0:P@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *b
f]R[
Y__inference_token_and_position_embedding_4_layer_call_and_return_conditional_losses_816662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:?????????

_user_specified_namex
?
c
E__inference_dropout_18_layer_call_and_return_conditional_losses_83467

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
V
:__inference_global_average_pooling1d_4_layer_call_fn_83435

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_816212
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_83446

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_4_layer_call_fn_81510
dense_16_input
unknown:@ 
	unknown_0: 
	unknown_1: @
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_16_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_814992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????@
(
_user_specified_namedense_16_input
?
c
E__inference_dropout_19_layer_call_and_return_conditional_losses_83514

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_19_layer_call_and_return_conditional_losses_83546

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
3__inference_transformer_block_4_layer_call_fn_83163

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_821872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????@: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
'__inference_model_4_layer_call_fn_81936
input_5
unknown:@
	unknown_0:P@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: @

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:

unknown_19:

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_4_layer_call_and_return_conditional_losses_818892
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
??
?
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_82187

inputsX
Bmulti_head_attention_4_query_einsum_einsum_readvariableop_resource:@@J
8multi_head_attention_4_query_add_readvariableop_resource:@V
@multi_head_attention_4_key_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_4_key_add_readvariableop_resource:@X
Bmulti_head_attention_4_value_einsum_einsum_readvariableop_resource:@@J
8multi_head_attention_4_value_add_readvariableop_resource:@c
Mmulti_head_attention_4_attention_output_einsum_einsum_readvariableop_resource:@@Q
Cmulti_head_attention_4_attention_output_add_readvariableop_resource:@I
;layer_normalization_8_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_8_batchnorm_readvariableop_resource:@I
7sequential_4_dense_16_tensordot_readvariableop_resource:@ C
5sequential_4_dense_16_biasadd_readvariableop_resource: I
7sequential_4_dense_17_tensordot_readvariableop_resource: @C
5sequential_4_dense_17_biasadd_readvariableop_resource:@I
;layer_normalization_9_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_9_batchnorm_readvariableop_resource:@
identity??.layer_normalization_8/batchnorm/ReadVariableOp?2layer_normalization_8/batchnorm/mul/ReadVariableOp?.layer_normalization_9/batchnorm/ReadVariableOp?2layer_normalization_9/batchnorm/mul/ReadVariableOp?:multi_head_attention_4/attention_output/add/ReadVariableOp?Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_4/key/add/ReadVariableOp?7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_4/query/add/ReadVariableOp?9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_4/value/add/ReadVariableOp?9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?,sequential_4/dense_16/BiasAdd/ReadVariableOp?.sequential_4/dense_16/Tensordot/ReadVariableOp?,sequential_4/dense_17/BiasAdd/ReadVariableOp?.sequential_4/dense_17/Tensordot/ReadVariableOp?
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_4_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_4/query/einsum/EinsumEinsuminputsAmulti_head_attention_4/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2,
*multi_head_attention_4/query/einsum/Einsum?
/multi_head_attention_4/query/add/ReadVariableOpReadVariableOp8multi_head_attention_4_query_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_4/query/add/ReadVariableOp?
 multi_head_attention_4/query/addAddV23multi_head_attention_4/query/einsum/Einsum:output:07multi_head_attention_4/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 multi_head_attention_4/query/add?
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_4_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_4/key/einsum/EinsumEinsuminputs?multi_head_attention_4/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2*
(multi_head_attention_4/key/einsum/Einsum?
-multi_head_attention_4/key/add/ReadVariableOpReadVariableOp6multi_head_attention_4_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention_4/key/add/ReadVariableOp?
multi_head_attention_4/key/addAddV21multi_head_attention_4/key/einsum/Einsum:output:05multi_head_attention_4/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
multi_head_attention_4/key/add?
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_4_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_4/value/einsum/EinsumEinsuminputsAmulti_head_attention_4/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2,
*multi_head_attention_4/value/einsum/Einsum?
/multi_head_attention_4/value/add/ReadVariableOpReadVariableOp8multi_head_attention_4_value_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_4/value/add/ReadVariableOp?
 multi_head_attention_4/value/addAddV23multi_head_attention_4/value/einsum/Einsum:output:07multi_head_attention_4/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 multi_head_attention_4/value/add?
multi_head_attention_4/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention_4/Mul/y?
multi_head_attention_4/MulMul$multi_head_attention_4/query/add:z:0%multi_head_attention_4/Mul/y:output:0*
T0*/
_output_shapes
:?????????@2
multi_head_attention_4/Mul?
$multi_head_attention_4/einsum/EinsumEinsum"multi_head_attention_4/key/add:z:0multi_head_attention_4/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe2&
$multi_head_attention_4/einsum/Einsum?
&multi_head_attention_4/softmax/SoftmaxSoftmax-multi_head_attention_4/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????2(
&multi_head_attention_4/softmax/Softmax?
&multi_head_attention_4/einsum_1/EinsumEinsum0multi_head_attention_4/softmax/Softmax:softmax:0$multi_head_attention_4/value/add:z:0*
N*
T0*/
_output_shapes
:?????????@*
equationacbe,aecd->abcd2(
&multi_head_attention_4/einsum_1/Einsum?
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_4_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02F
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_4/attention_output/einsum/EinsumEinsum/multi_head_attention_4/einsum_1/Einsum:output:0Lmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????@*
equationabcd,cde->abe27
5multi_head_attention_4/attention_output/einsum/Einsum?
:multi_head_attention_4/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_4_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02<
:multi_head_attention_4/attention_output/add/ReadVariableOp?
+multi_head_attention_4/attention_output/addAddV2>multi_head_attention_4/attention_output/einsum/Einsum:output:0Bmulti_head_attention_4/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2-
+multi_head_attention_4/attention_output/addy
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_16/dropout/Const?
dropout_16/dropout/MulMul/multi_head_attention_4/attention_output/add:z:0!dropout_16/dropout/Const:output:0*
T0*+
_output_shapes
:?????????@2
dropout_16/dropout/Mul?
dropout_16/dropout/ShapeShape/multi_head_attention_4/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_16/dropout/Shape?
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????@*
dtype021
/dropout_16/dropout/random_uniform/RandomUniform?
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_16/dropout/GreaterEqual/y?
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????@2!
dropout_16/dropout/GreaterEqual?
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????@2
dropout_16/dropout/Cast?
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????@2
dropout_16/dropout/Mul_1o
addAddV2inputsdropout_16/dropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????@2
add?
4layer_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_8/moments/mean/reduction_indices?
"layer_normalization_8/moments/meanMeanadd:z:0=layer_normalization_8/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2$
"layer_normalization_8/moments/mean?
*layer_normalization_8/moments/StopGradientStopGradient+layer_normalization_8/moments/mean:output:0*
T0*+
_output_shapes
:?????????2,
*layer_normalization_8/moments/StopGradient?
/layer_normalization_8/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_8/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@21
/layer_normalization_8/moments/SquaredDifference?
8layer_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_8/moments/variance/reduction_indices?
&layer_normalization_8/moments/varianceMean3layer_normalization_8/moments/SquaredDifference:z:0Alayer_normalization_8/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2(
&layer_normalization_8/moments/variance?
%layer_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_8/batchnorm/add/y?
#layer_normalization_8/batchnorm/addAddV2/layer_normalization_8/moments/variance:output:0.layer_normalization_8/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2%
#layer_normalization_8/batchnorm/add?
%layer_normalization_8/batchnorm/RsqrtRsqrt'layer_normalization_8/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2'
%layer_normalization_8/batchnorm/Rsqrt?
2layer_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_8/batchnorm/mul/ReadVariableOp?
#layer_normalization_8/batchnorm/mulMul)layer_normalization_8/batchnorm/Rsqrt:y:0:layer_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_8/batchnorm/mul?
%layer_normalization_8/batchnorm/mul_1Muladd:z:0'layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/mul_1?
%layer_normalization_8/batchnorm/mul_2Mul+layer_normalization_8/moments/mean:output:0'layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/mul_2?
.layer_normalization_8/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_8/batchnorm/ReadVariableOp?
#layer_normalization_8/batchnorm/subSub6layer_normalization_8/batchnorm/ReadVariableOp:value:0)layer_normalization_8/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_8/batchnorm/sub?
%layer_normalization_8/batchnorm/add_1AddV2)layer_normalization_8/batchnorm/mul_1:z:0'layer_normalization_8/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/add_1?
.sequential_4/dense_16/Tensordot/ReadVariableOpReadVariableOp7sequential_4_dense_16_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype020
.sequential_4/dense_16/Tensordot/ReadVariableOp?
$sequential_4/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_4/dense_16/Tensordot/axes?
$sequential_4/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_4/dense_16/Tensordot/free?
%sequential_4/dense_16/Tensordot/ShapeShape)layer_normalization_8/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%sequential_4/dense_16/Tensordot/Shape?
-sequential_4/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_16/Tensordot/GatherV2/axis?
(sequential_4/dense_16/Tensordot/GatherV2GatherV2.sequential_4/dense_16/Tensordot/Shape:output:0-sequential_4/dense_16/Tensordot/free:output:06sequential_4/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_4/dense_16/Tensordot/GatherV2?
/sequential_4/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_4/dense_16/Tensordot/GatherV2_1/axis?
*sequential_4/dense_16/Tensordot/GatherV2_1GatherV2.sequential_4/dense_16/Tensordot/Shape:output:0-sequential_4/dense_16/Tensordot/axes:output:08sequential_4/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_4/dense_16/Tensordot/GatherV2_1?
%sequential_4/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_4/dense_16/Tensordot/Const?
$sequential_4/dense_16/Tensordot/ProdProd1sequential_4/dense_16/Tensordot/GatherV2:output:0.sequential_4/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_4/dense_16/Tensordot/Prod?
'sequential_4/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_16/Tensordot/Const_1?
&sequential_4/dense_16/Tensordot/Prod_1Prod3sequential_4/dense_16/Tensordot/GatherV2_1:output:00sequential_4/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_4/dense_16/Tensordot/Prod_1?
+sequential_4/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_4/dense_16/Tensordot/concat/axis?
&sequential_4/dense_16/Tensordot/concatConcatV2-sequential_4/dense_16/Tensordot/free:output:0-sequential_4/dense_16/Tensordot/axes:output:04sequential_4/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/dense_16/Tensordot/concat?
%sequential_4/dense_16/Tensordot/stackPack-sequential_4/dense_16/Tensordot/Prod:output:0/sequential_4/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_4/dense_16/Tensordot/stack?
)sequential_4/dense_16/Tensordot/transpose	Transpose)layer_normalization_8/batchnorm/add_1:z:0/sequential_4/dense_16/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2+
)sequential_4/dense_16/Tensordot/transpose?
'sequential_4/dense_16/Tensordot/ReshapeReshape-sequential_4/dense_16/Tensordot/transpose:y:0.sequential_4/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_4/dense_16/Tensordot/Reshape?
&sequential_4/dense_16/Tensordot/MatMulMatMul0sequential_4/dense_16/Tensordot/Reshape:output:06sequential_4/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2(
&sequential_4/dense_16/Tensordot/MatMul?
'sequential_4/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_16/Tensordot/Const_2?
-sequential_4/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_16/Tensordot/concat_1/axis?
(sequential_4/dense_16/Tensordot/concat_1ConcatV21sequential_4/dense_16/Tensordot/GatherV2:output:00sequential_4/dense_16/Tensordot/Const_2:output:06sequential_4/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_4/dense_16/Tensordot/concat_1?
sequential_4/dense_16/TensordotReshape0sequential_4/dense_16/Tensordot/MatMul:product:01sequential_4/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2!
sequential_4/dense_16/Tensordot?
,sequential_4/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_4/dense_16/BiasAdd/ReadVariableOp?
sequential_4/dense_16/BiasAddBiasAdd(sequential_4/dense_16/Tensordot:output:04sequential_4/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
sequential_4/dense_16/BiasAdd?
sequential_4/dense_16/ReluRelu&sequential_4/dense_16/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
sequential_4/dense_16/Relu?
.sequential_4/dense_17/Tensordot/ReadVariableOpReadVariableOp7sequential_4_dense_17_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype020
.sequential_4/dense_17/Tensordot/ReadVariableOp?
$sequential_4/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_4/dense_17/Tensordot/axes?
$sequential_4/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_4/dense_17/Tensordot/free?
%sequential_4/dense_17/Tensordot/ShapeShape(sequential_4/dense_16/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_4/dense_17/Tensordot/Shape?
-sequential_4/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_17/Tensordot/GatherV2/axis?
(sequential_4/dense_17/Tensordot/GatherV2GatherV2.sequential_4/dense_17/Tensordot/Shape:output:0-sequential_4/dense_17/Tensordot/free:output:06sequential_4/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_4/dense_17/Tensordot/GatherV2?
/sequential_4/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_4/dense_17/Tensordot/GatherV2_1/axis?
*sequential_4/dense_17/Tensordot/GatherV2_1GatherV2.sequential_4/dense_17/Tensordot/Shape:output:0-sequential_4/dense_17/Tensordot/axes:output:08sequential_4/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_4/dense_17/Tensordot/GatherV2_1?
%sequential_4/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_4/dense_17/Tensordot/Const?
$sequential_4/dense_17/Tensordot/ProdProd1sequential_4/dense_17/Tensordot/GatherV2:output:0.sequential_4/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_4/dense_17/Tensordot/Prod?
'sequential_4/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_17/Tensordot/Const_1?
&sequential_4/dense_17/Tensordot/Prod_1Prod3sequential_4/dense_17/Tensordot/GatherV2_1:output:00sequential_4/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_4/dense_17/Tensordot/Prod_1?
+sequential_4/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_4/dense_17/Tensordot/concat/axis?
&sequential_4/dense_17/Tensordot/concatConcatV2-sequential_4/dense_17/Tensordot/free:output:0-sequential_4/dense_17/Tensordot/axes:output:04sequential_4/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/dense_17/Tensordot/concat?
%sequential_4/dense_17/Tensordot/stackPack-sequential_4/dense_17/Tensordot/Prod:output:0/sequential_4/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_4/dense_17/Tensordot/stack?
)sequential_4/dense_17/Tensordot/transpose	Transpose(sequential_4/dense_16/Relu:activations:0/sequential_4/dense_17/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2+
)sequential_4/dense_17/Tensordot/transpose?
'sequential_4/dense_17/Tensordot/ReshapeReshape-sequential_4/dense_17/Tensordot/transpose:y:0.sequential_4/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_4/dense_17/Tensordot/Reshape?
&sequential_4/dense_17/Tensordot/MatMulMatMul0sequential_4/dense_17/Tensordot/Reshape:output:06sequential_4/dense_17/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2(
&sequential_4/dense_17/Tensordot/MatMul?
'sequential_4/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_4/dense_17/Tensordot/Const_2?
-sequential_4/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_17/Tensordot/concat_1/axis?
(sequential_4/dense_17/Tensordot/concat_1ConcatV21sequential_4/dense_17/Tensordot/GatherV2:output:00sequential_4/dense_17/Tensordot/Const_2:output:06sequential_4/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_4/dense_17/Tensordot/concat_1?
sequential_4/dense_17/TensordotReshape0sequential_4/dense_17/Tensordot/MatMul:product:01sequential_4/dense_17/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2!
sequential_4/dense_17/Tensordot?
,sequential_4/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_4/dense_17/BiasAdd/ReadVariableOp?
sequential_4/dense_17/BiasAddBiasAdd(sequential_4/dense_17/Tensordot:output:04sequential_4/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
sequential_4/dense_17/BiasAddy
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_17/dropout/Const?
dropout_17/dropout/MulMul&sequential_4/dense_17/BiasAdd:output:0!dropout_17/dropout/Const:output:0*
T0*+
_output_shapes
:?????????@2
dropout_17/dropout/Mul?
dropout_17/dropout/ShapeShape&sequential_4/dense_17/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_17/dropout/Shape?
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????@*
dtype021
/dropout_17/dropout/random_uniform/RandomUniform?
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_17/dropout/GreaterEqual/y?
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????@2!
dropout_17/dropout/GreaterEqual?
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????@2
dropout_17/dropout/Cast?
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????@2
dropout_17/dropout/Mul_1?
add_1AddV2)layer_normalization_8/batchnorm/add_1:z:0dropout_17/dropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????@2
add_1?
4layer_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_9/moments/mean/reduction_indices?
"layer_normalization_9/moments/meanMean	add_1:z:0=layer_normalization_9/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2$
"layer_normalization_9/moments/mean?
*layer_normalization_9/moments/StopGradientStopGradient+layer_normalization_9/moments/mean:output:0*
T0*+
_output_shapes
:?????????2,
*layer_normalization_9/moments/StopGradient?
/layer_normalization_9/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_9/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@21
/layer_normalization_9/moments/SquaredDifference?
8layer_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_9/moments/variance/reduction_indices?
&layer_normalization_9/moments/varianceMean3layer_normalization_9/moments/SquaredDifference:z:0Alayer_normalization_9/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2(
&layer_normalization_9/moments/variance?
%layer_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_9/batchnorm/add/y?
#layer_normalization_9/batchnorm/addAddV2/layer_normalization_9/moments/variance:output:0.layer_normalization_9/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2%
#layer_normalization_9/batchnorm/add?
%layer_normalization_9/batchnorm/RsqrtRsqrt'layer_normalization_9/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2'
%layer_normalization_9/batchnorm/Rsqrt?
2layer_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_9/batchnorm/mul/ReadVariableOp?
#layer_normalization_9/batchnorm/mulMul)layer_normalization_9/batchnorm/Rsqrt:y:0:layer_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_9/batchnorm/mul?
%layer_normalization_9/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/mul_1?
%layer_normalization_9/batchnorm/mul_2Mul+layer_normalization_9/moments/mean:output:0'layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/mul_2?
.layer_normalization_9/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_9/batchnorm/ReadVariableOp?
#layer_normalization_9/batchnorm/subSub6layer_normalization_9/batchnorm/ReadVariableOp:value:0)layer_normalization_9/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_9/batchnorm/sub?
%layer_normalization_9/batchnorm/add_1AddV2)layer_normalization_9/batchnorm/mul_1:z:0'layer_normalization_9/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/add_1?
IdentityIdentity)layer_normalization_9/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp/^layer_normalization_8/batchnorm/ReadVariableOp3^layer_normalization_8/batchnorm/mul/ReadVariableOp/^layer_normalization_9/batchnorm/ReadVariableOp3^layer_normalization_9/batchnorm/mul/ReadVariableOp;^multi_head_attention_4/attention_output/add/ReadVariableOpE^multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_4/key/add/ReadVariableOp8^multi_head_attention_4/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_4/query/add/ReadVariableOp:^multi_head_attention_4/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_4/value/add/ReadVariableOp:^multi_head_attention_4/value/einsum/Einsum/ReadVariableOp-^sequential_4/dense_16/BiasAdd/ReadVariableOp/^sequential_4/dense_16/Tensordot/ReadVariableOp-^sequential_4/dense_17/BiasAdd/ReadVariableOp/^sequential_4/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????@: : : : : : : : : : : : : : : : 2`
.layer_normalization_8/batchnorm/ReadVariableOp.layer_normalization_8/batchnorm/ReadVariableOp2h
2layer_normalization_8/batchnorm/mul/ReadVariableOp2layer_normalization_8/batchnorm/mul/ReadVariableOp2`
.layer_normalization_9/batchnorm/ReadVariableOp.layer_normalization_9/batchnorm/ReadVariableOp2h
2layer_normalization_9/batchnorm/mul/ReadVariableOp2layer_normalization_9/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_4/attention_output/add/ReadVariableOp:multi_head_attention_4/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_4/key/add/ReadVariableOp-multi_head_attention_4/key/add/ReadVariableOp2r
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_4/query/add/ReadVariableOp/multi_head_attention_4/query/add/ReadVariableOp2v
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_4/value/add/ReadVariableOp/multi_head_attention_4/value/add/ReadVariableOp2v
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp2\
,sequential_4/dense_16/BiasAdd/ReadVariableOp,sequential_4/dense_16/BiasAdd/ReadVariableOp2`
.sequential_4/dense_16/Tensordot/ReadVariableOp.sequential_4/dense_16/Tensordot/ReadVariableOp2\
,sequential_4/dense_17/BiasAdd/ReadVariableOp,sequential_4/dense_17/BiasAdd/ReadVariableOp2`
.sequential_4/dense_17/Tensordot/ReadVariableOp.sequential_4/dense_17/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
3__inference_transformer_block_4_layer_call_fn_83126

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_817992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????@: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
͐
?
B__inference_model_4_layer_call_and_return_conditional_losses_83056

inputsS
Atoken_and_position_embedding_4_embedding_9_embedding_lookup_82875:@S
Atoken_and_position_embedding_4_embedding_8_embedding_lookup_82881:P@l
Vtransformer_block_4_multi_head_attention_4_query_einsum_einsum_readvariableop_resource:@@^
Ltransformer_block_4_multi_head_attention_4_query_add_readvariableop_resource:@j
Ttransformer_block_4_multi_head_attention_4_key_einsum_einsum_readvariableop_resource:@@\
Jtransformer_block_4_multi_head_attention_4_key_add_readvariableop_resource:@l
Vtransformer_block_4_multi_head_attention_4_value_einsum_einsum_readvariableop_resource:@@^
Ltransformer_block_4_multi_head_attention_4_value_add_readvariableop_resource:@w
atransformer_block_4_multi_head_attention_4_attention_output_einsum_einsum_readvariableop_resource:@@e
Wtransformer_block_4_multi_head_attention_4_attention_output_add_readvariableop_resource:@]
Otransformer_block_4_layer_normalization_8_batchnorm_mul_readvariableop_resource:@Y
Ktransformer_block_4_layer_normalization_8_batchnorm_readvariableop_resource:@]
Ktransformer_block_4_sequential_4_dense_16_tensordot_readvariableop_resource:@ W
Itransformer_block_4_sequential_4_dense_16_biasadd_readvariableop_resource: ]
Ktransformer_block_4_sequential_4_dense_17_tensordot_readvariableop_resource: @W
Itransformer_block_4_sequential_4_dense_17_biasadd_readvariableop_resource:@]
Otransformer_block_4_layer_normalization_9_batchnorm_mul_readvariableop_resource:@Y
Ktransformer_block_4_layer_normalization_9_batchnorm_readvariableop_resource:@9
'dense_18_matmul_readvariableop_resource:@6
(dense_18_biasadd_readvariableop_resource:9
'dense_19_matmul_readvariableop_resource:6
(dense_19_biasadd_readvariableop_resource:
identity??dense_18/BiasAdd/ReadVariableOp?dense_18/MatMul/ReadVariableOp?dense_19/BiasAdd/ReadVariableOp?dense_19/MatMul/ReadVariableOp?;token_and_position_embedding_4/embedding_8/embedding_lookup?;token_and_position_embedding_4/embedding_9/embedding_lookup?Btransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp?Ftransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp?Btransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp?Ftransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp?Ntransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp?Xtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?Atransformer_block_4/multi_head_attention_4/key/add/ReadVariableOp?Ktransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?Ctransformer_block_4/multi_head_attention_4/query/add/ReadVariableOp?Mtransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?Ctransformer_block_4/multi_head_attention_4/value/add/ReadVariableOp?Mtransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?@transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp?Btransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp?@transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp?Btransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp?
$token_and_position_embedding_4/ShapeShapeinputs*
T0*
_output_shapes
:2&
$token_and_position_embedding_4/Shape?
2token_and_position_embedding_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????24
2token_and_position_embedding_4/strided_slice/stack?
4token_and_position_embedding_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_4/strided_slice/stack_1?
4token_and_position_embedding_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_4/strided_slice/stack_2?
,token_and_position_embedding_4/strided_sliceStridedSlice-token_and_position_embedding_4/Shape:output:0;token_and_position_embedding_4/strided_slice/stack:output:0=token_and_position_embedding_4/strided_slice/stack_1:output:0=token_and_position_embedding_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_4/strided_slice?
*token_and_position_embedding_4/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_4/range/start?
*token_and_position_embedding_4/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_4/range/delta?
$token_and_position_embedding_4/rangeRange3token_and_position_embedding_4/range/start:output:05token_and_position_embedding_4/strided_slice:output:03token_and_position_embedding_4/range/delta:output:0*#
_output_shapes
:?????????2&
$token_and_position_embedding_4/range?
;token_and_position_embedding_4/embedding_9/embedding_lookupResourceGatherAtoken_and_position_embedding_4_embedding_9_embedding_lookup_82875-token_and_position_embedding_4/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_4/embedding_9/embedding_lookup/82875*'
_output_shapes
:?????????@*
dtype02=
;token_and_position_embedding_4/embedding_9/embedding_lookup?
Dtoken_and_position_embedding_4/embedding_9/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_4/embedding_9/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_4/embedding_9/embedding_lookup/82875*'
_output_shapes
:?????????@2F
Dtoken_and_position_embedding_4/embedding_9/embedding_lookup/Identity?
Ftoken_and_position_embedding_4/embedding_9/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_4/embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@2H
Ftoken_and_position_embedding_4/embedding_9/embedding_lookup/Identity_1?
/token_and_position_embedding_4/embedding_8/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????21
/token_and_position_embedding_4/embedding_8/Cast?
;token_and_position_embedding_4/embedding_8/embedding_lookupResourceGatherAtoken_and_position_embedding_4_embedding_8_embedding_lookup_828813token_and_position_embedding_4/embedding_8/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_4/embedding_8/embedding_lookup/82881*+
_output_shapes
:?????????@*
dtype02=
;token_and_position_embedding_4/embedding_8/embedding_lookup?
Dtoken_and_position_embedding_4/embedding_8/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_4/embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_4/embedding_8/embedding_lookup/82881*+
_output_shapes
:?????????@2F
Dtoken_and_position_embedding_4/embedding_8/embedding_lookup/Identity?
Ftoken_and_position_embedding_4/embedding_8/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_4/embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@2H
Ftoken_and_position_embedding_4/embedding_8/embedding_lookup/Identity_1?
"token_and_position_embedding_4/addAddV2Otoken_and_position_embedding_4/embedding_8/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_4/embedding_9/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:?????????@2$
"token_and_position_embedding_4/add?
Mtransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_4_multi_head_attention_4_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02O
Mtransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?
>transformer_block_4/multi_head_attention_4/query/einsum/EinsumEinsum&token_and_position_embedding_4/add:z:0Utransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2@
>transformer_block_4/multi_head_attention_4/query/einsum/Einsum?
Ctransformer_block_4/multi_head_attention_4/query/add/ReadVariableOpReadVariableOpLtransformer_block_4_multi_head_attention_4_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02E
Ctransformer_block_4/multi_head_attention_4/query/add/ReadVariableOp?
4transformer_block_4/multi_head_attention_4/query/addAddV2Gtransformer_block_4/multi_head_attention_4/query/einsum/Einsum:output:0Ktransformer_block_4/multi_head_attention_4/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@26
4transformer_block_4/multi_head_attention_4/query/add?
Ktransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_4_multi_head_attention_4_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02M
Ktransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?
<transformer_block_4/multi_head_attention_4/key/einsum/EinsumEinsum&token_and_position_embedding_4/add:z:0Stransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2>
<transformer_block_4/multi_head_attention_4/key/einsum/Einsum?
Atransformer_block_4/multi_head_attention_4/key/add/ReadVariableOpReadVariableOpJtransformer_block_4_multi_head_attention_4_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02C
Atransformer_block_4/multi_head_attention_4/key/add/ReadVariableOp?
2transformer_block_4/multi_head_attention_4/key/addAddV2Etransformer_block_4/multi_head_attention_4/key/einsum/Einsum:output:0Itransformer_block_4/multi_head_attention_4/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@24
2transformer_block_4/multi_head_attention_4/key/add?
Mtransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_4_multi_head_attention_4_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02O
Mtransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?
>transformer_block_4/multi_head_attention_4/value/einsum/EinsumEinsum&token_and_position_embedding_4/add:z:0Utransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2@
>transformer_block_4/multi_head_attention_4/value/einsum/Einsum?
Ctransformer_block_4/multi_head_attention_4/value/add/ReadVariableOpReadVariableOpLtransformer_block_4_multi_head_attention_4_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02E
Ctransformer_block_4/multi_head_attention_4/value/add/ReadVariableOp?
4transformer_block_4/multi_head_attention_4/value/addAddV2Gtransformer_block_4/multi_head_attention_4/value/einsum/Einsum:output:0Ktransformer_block_4/multi_head_attention_4/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@26
4transformer_block_4/multi_head_attention_4/value/add?
0transformer_block_4/multi_head_attention_4/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >22
0transformer_block_4/multi_head_attention_4/Mul/y?
.transformer_block_4/multi_head_attention_4/MulMul8transformer_block_4/multi_head_attention_4/query/add:z:09transformer_block_4/multi_head_attention_4/Mul/y:output:0*
T0*/
_output_shapes
:?????????@20
.transformer_block_4/multi_head_attention_4/Mul?
8transformer_block_4/multi_head_attention_4/einsum/EinsumEinsum6transformer_block_4/multi_head_attention_4/key/add:z:02transformer_block_4/multi_head_attention_4/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe2:
8transformer_block_4/multi_head_attention_4/einsum/Einsum?
:transformer_block_4/multi_head_attention_4/softmax/SoftmaxSoftmaxAtransformer_block_4/multi_head_attention_4/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????2<
:transformer_block_4/multi_head_attention_4/softmax/Softmax?
:transformer_block_4/multi_head_attention_4/einsum_1/EinsumEinsumDtransformer_block_4/multi_head_attention_4/softmax/Softmax:softmax:08transformer_block_4/multi_head_attention_4/value/add:z:0*
N*
T0*/
_output_shapes
:?????????@*
equationacbe,aecd->abcd2<
:transformer_block_4/multi_head_attention_4/einsum_1/Einsum?
Xtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_4_multi_head_attention_4_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02Z
Xtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?
Itransformer_block_4/multi_head_attention_4/attention_output/einsum/EinsumEinsumCtransformer_block_4/multi_head_attention_4/einsum_1/Einsum:output:0`transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????@*
equationabcd,cde->abe2K
Itransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum?
Ntransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_4_multi_head_attention_4_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02P
Ntransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp?
?transformer_block_4/multi_head_attention_4/attention_output/addAddV2Rtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum:output:0Vtransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2A
?transformer_block_4/multi_head_attention_4/attention_output/add?
,transformer_block_4/dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2.
,transformer_block_4/dropout_16/dropout/Const?
*transformer_block_4/dropout_16/dropout/MulMulCtransformer_block_4/multi_head_attention_4/attention_output/add:z:05transformer_block_4/dropout_16/dropout/Const:output:0*
T0*+
_output_shapes
:?????????@2,
*transformer_block_4/dropout_16/dropout/Mul?
,transformer_block_4/dropout_16/dropout/ShapeShapeCtransformer_block_4/multi_head_attention_4/attention_output/add:z:0*
T0*
_output_shapes
:2.
,transformer_block_4/dropout_16/dropout/Shape?
Ctransformer_block_4/dropout_16/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_4/dropout_16/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????@*
dtype02E
Ctransformer_block_4/dropout_16/dropout/random_uniform/RandomUniform?
5transformer_block_4/dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=27
5transformer_block_4/dropout_16/dropout/GreaterEqual/y?
3transformer_block_4/dropout_16/dropout/GreaterEqualGreaterEqualLtransformer_block_4/dropout_16/dropout/random_uniform/RandomUniform:output:0>transformer_block_4/dropout_16/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????@25
3transformer_block_4/dropout_16/dropout/GreaterEqual?
+transformer_block_4/dropout_16/dropout/CastCast7transformer_block_4/dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????@2-
+transformer_block_4/dropout_16/dropout/Cast?
,transformer_block_4/dropout_16/dropout/Mul_1Mul.transformer_block_4/dropout_16/dropout/Mul:z:0/transformer_block_4/dropout_16/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????@2.
,transformer_block_4/dropout_16/dropout/Mul_1?
transformer_block_4/addAddV2&token_and_position_embedding_4/add:z:00transformer_block_4/dropout_16/dropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????@2
transformer_block_4/add?
Htransformer_block_4/layer_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_4/layer_normalization_8/moments/mean/reduction_indices?
6transformer_block_4/layer_normalization_8/moments/meanMeantransformer_block_4/add:z:0Qtransformer_block_4/layer_normalization_8/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(28
6transformer_block_4/layer_normalization_8/moments/mean?
>transformer_block_4/layer_normalization_8/moments/StopGradientStopGradient?transformer_block_4/layer_normalization_8/moments/mean:output:0*
T0*+
_output_shapes
:?????????2@
>transformer_block_4/layer_normalization_8/moments/StopGradient?
Ctransformer_block_4/layer_normalization_8/moments/SquaredDifferenceSquaredDifferencetransformer_block_4/add:z:0Gtransformer_block_4/layer_normalization_8/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@2E
Ctransformer_block_4/layer_normalization_8/moments/SquaredDifference?
Ltransformer_block_4/layer_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_4/layer_normalization_8/moments/variance/reduction_indices?
:transformer_block_4/layer_normalization_8/moments/varianceMeanGtransformer_block_4/layer_normalization_8/moments/SquaredDifference:z:0Utransformer_block_4/layer_normalization_8/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2<
:transformer_block_4/layer_normalization_8/moments/variance?
9transformer_block_4/layer_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52;
9transformer_block_4/layer_normalization_8/batchnorm/add/y?
7transformer_block_4/layer_normalization_8/batchnorm/addAddV2Ctransformer_block_4/layer_normalization_8/moments/variance:output:0Btransformer_block_4/layer_normalization_8/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????29
7transformer_block_4/layer_normalization_8/batchnorm/add?
9transformer_block_4/layer_normalization_8/batchnorm/RsqrtRsqrt;transformer_block_4/layer_normalization_8/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2;
9transformer_block_4/layer_normalization_8/batchnorm/Rsqrt?
Ftransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_4_layer_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02H
Ftransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp?
7transformer_block_4/layer_normalization_8/batchnorm/mulMul=transformer_block_4/layer_normalization_8/batchnorm/Rsqrt:y:0Ntransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@29
7transformer_block_4/layer_normalization_8/batchnorm/mul?
9transformer_block_4/layer_normalization_8/batchnorm/mul_1Multransformer_block_4/add:z:0;transformer_block_4/layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_8/batchnorm/mul_1?
9transformer_block_4/layer_normalization_8/batchnorm/mul_2Mul?transformer_block_4/layer_normalization_8/moments/mean:output:0;transformer_block_4/layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_8/batchnorm/mul_2?
Btransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_4_layer_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02D
Btransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp?
7transformer_block_4/layer_normalization_8/batchnorm/subSubJtransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp:value:0=transformer_block_4/layer_normalization_8/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@29
7transformer_block_4/layer_normalization_8/batchnorm/sub?
9transformer_block_4/layer_normalization_8/batchnorm/add_1AddV2=transformer_block_4/layer_normalization_8/batchnorm/mul_1:z:0;transformer_block_4/layer_normalization_8/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_8/batchnorm/add_1?
Btransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_4_sequential_4_dense_16_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02D
Btransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp?
8transformer_block_4/sequential_4/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_4/sequential_4/dense_16/Tensordot/axes?
8transformer_block_4/sequential_4/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_4/sequential_4/dense_16/Tensordot/free?
9transformer_block_4/sequential_4/dense_16/Tensordot/ShapeShape=transformer_block_4/layer_normalization_8/batchnorm/add_1:z:0*
T0*
_output_shapes
:2;
9transformer_block_4/sequential_4/dense_16/Tensordot/Shape?
Atransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2/axis?
<transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2GatherV2Btransformer_block_4/sequential_4/dense_16/Tensordot/Shape:output:0Atransformer_block_4/sequential_4/dense_16/Tensordot/free:output:0Jtransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2?
Ctransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1/axis?
>transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1GatherV2Btransformer_block_4/sequential_4/dense_16/Tensordot/Shape:output:0Atransformer_block_4/sequential_4/dense_16/Tensordot/axes:output:0Ltransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1?
9transformer_block_4/sequential_4/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_4/sequential_4/dense_16/Tensordot/Const?
8transformer_block_4/sequential_4/dense_16/Tensordot/ProdProdEtransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2:output:0Btransformer_block_4/sequential_4/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_4/sequential_4/dense_16/Tensordot/Prod?
;transformer_block_4/sequential_4/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_4/sequential_4/dense_16/Tensordot/Const_1?
:transformer_block_4/sequential_4/dense_16/Tensordot/Prod_1ProdGtransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1:output:0Dtransformer_block_4/sequential_4/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_4/sequential_4/dense_16/Tensordot/Prod_1?
?transformer_block_4/sequential_4/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_4/sequential_4/dense_16/Tensordot/concat/axis?
:transformer_block_4/sequential_4/dense_16/Tensordot/concatConcatV2Atransformer_block_4/sequential_4/dense_16/Tensordot/free:output:0Atransformer_block_4/sequential_4/dense_16/Tensordot/axes:output:0Htransformer_block_4/sequential_4/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_4/sequential_4/dense_16/Tensordot/concat?
9transformer_block_4/sequential_4/dense_16/Tensordot/stackPackAtransformer_block_4/sequential_4/dense_16/Tensordot/Prod:output:0Ctransformer_block_4/sequential_4/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_4/sequential_4/dense_16/Tensordot/stack?
=transformer_block_4/sequential_4/dense_16/Tensordot/transpose	Transpose=transformer_block_4/layer_normalization_8/batchnorm/add_1:z:0Ctransformer_block_4/sequential_4/dense_16/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2?
=transformer_block_4/sequential_4/dense_16/Tensordot/transpose?
;transformer_block_4/sequential_4/dense_16/Tensordot/ReshapeReshapeAtransformer_block_4/sequential_4/dense_16/Tensordot/transpose:y:0Btransformer_block_4/sequential_4/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2=
;transformer_block_4/sequential_4/dense_16/Tensordot/Reshape?
:transformer_block_4/sequential_4/dense_16/Tensordot/MatMulMatMulDtransformer_block_4/sequential_4/dense_16/Tensordot/Reshape:output:0Jtransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2<
:transformer_block_4/sequential_4/dense_16/Tensordot/MatMul?
;transformer_block_4/sequential_4/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_4/sequential_4/dense_16/Tensordot/Const_2?
Atransformer_block_4/sequential_4/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_4/sequential_4/dense_16/Tensordot/concat_1/axis?
<transformer_block_4/sequential_4/dense_16/Tensordot/concat_1ConcatV2Etransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2:output:0Dtransformer_block_4/sequential_4/dense_16/Tensordot/Const_2:output:0Jtransformer_block_4/sequential_4/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_4/sequential_4/dense_16/Tensordot/concat_1?
3transformer_block_4/sequential_4/dense_16/TensordotReshapeDtransformer_block_4/sequential_4/dense_16/Tensordot/MatMul:product:0Etransformer_block_4/sequential_4/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 25
3transformer_block_4/sequential_4/dense_16/Tensordot?
@transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_4_sequential_4_dense_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02B
@transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp?
1transformer_block_4/sequential_4/dense_16/BiasAddBiasAdd<transformer_block_4/sequential_4/dense_16/Tensordot:output:0Htransformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 23
1transformer_block_4/sequential_4/dense_16/BiasAdd?
.transformer_block_4/sequential_4/dense_16/ReluRelu:transformer_block_4/sequential_4/dense_16/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 20
.transformer_block_4/sequential_4/dense_16/Relu?
Btransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_4_sequential_4_dense_17_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02D
Btransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp?
8transformer_block_4/sequential_4/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_4/sequential_4/dense_17/Tensordot/axes?
8transformer_block_4/sequential_4/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_4/sequential_4/dense_17/Tensordot/free?
9transformer_block_4/sequential_4/dense_17/Tensordot/ShapeShape<transformer_block_4/sequential_4/dense_16/Relu:activations:0*
T0*
_output_shapes
:2;
9transformer_block_4/sequential_4/dense_17/Tensordot/Shape?
Atransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2/axis?
<transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2GatherV2Btransformer_block_4/sequential_4/dense_17/Tensordot/Shape:output:0Atransformer_block_4/sequential_4/dense_17/Tensordot/free:output:0Jtransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2?
Ctransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1/axis?
>transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1GatherV2Btransformer_block_4/sequential_4/dense_17/Tensordot/Shape:output:0Atransformer_block_4/sequential_4/dense_17/Tensordot/axes:output:0Ltransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1?
9transformer_block_4/sequential_4/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_4/sequential_4/dense_17/Tensordot/Const?
8transformer_block_4/sequential_4/dense_17/Tensordot/ProdProdEtransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2:output:0Btransformer_block_4/sequential_4/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_4/sequential_4/dense_17/Tensordot/Prod?
;transformer_block_4/sequential_4/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_4/sequential_4/dense_17/Tensordot/Const_1?
:transformer_block_4/sequential_4/dense_17/Tensordot/Prod_1ProdGtransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1:output:0Dtransformer_block_4/sequential_4/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_4/sequential_4/dense_17/Tensordot/Prod_1?
?transformer_block_4/sequential_4/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_4/sequential_4/dense_17/Tensordot/concat/axis?
:transformer_block_4/sequential_4/dense_17/Tensordot/concatConcatV2Atransformer_block_4/sequential_4/dense_17/Tensordot/free:output:0Atransformer_block_4/sequential_4/dense_17/Tensordot/axes:output:0Htransformer_block_4/sequential_4/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_4/sequential_4/dense_17/Tensordot/concat?
9transformer_block_4/sequential_4/dense_17/Tensordot/stackPackAtransformer_block_4/sequential_4/dense_17/Tensordot/Prod:output:0Ctransformer_block_4/sequential_4/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_4/sequential_4/dense_17/Tensordot/stack?
=transformer_block_4/sequential_4/dense_17/Tensordot/transpose	Transpose<transformer_block_4/sequential_4/dense_16/Relu:activations:0Ctransformer_block_4/sequential_4/dense_17/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2?
=transformer_block_4/sequential_4/dense_17/Tensordot/transpose?
;transformer_block_4/sequential_4/dense_17/Tensordot/ReshapeReshapeAtransformer_block_4/sequential_4/dense_17/Tensordot/transpose:y:0Btransformer_block_4/sequential_4/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2=
;transformer_block_4/sequential_4/dense_17/Tensordot/Reshape?
:transformer_block_4/sequential_4/dense_17/Tensordot/MatMulMatMulDtransformer_block_4/sequential_4/dense_17/Tensordot/Reshape:output:0Jtransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2<
:transformer_block_4/sequential_4/dense_17/Tensordot/MatMul?
;transformer_block_4/sequential_4/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2=
;transformer_block_4/sequential_4/dense_17/Tensordot/Const_2?
Atransformer_block_4/sequential_4/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_4/sequential_4/dense_17/Tensordot/concat_1/axis?
<transformer_block_4/sequential_4/dense_17/Tensordot/concat_1ConcatV2Etransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2:output:0Dtransformer_block_4/sequential_4/dense_17/Tensordot/Const_2:output:0Jtransformer_block_4/sequential_4/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_4/sequential_4/dense_17/Tensordot/concat_1?
3transformer_block_4/sequential_4/dense_17/TensordotReshapeDtransformer_block_4/sequential_4/dense_17/Tensordot/MatMul:product:0Etransformer_block_4/sequential_4/dense_17/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@25
3transformer_block_4/sequential_4/dense_17/Tensordot?
@transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_4_sequential_4_dense_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02B
@transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp?
1transformer_block_4/sequential_4/dense_17/BiasAddBiasAdd<transformer_block_4/sequential_4/dense_17/Tensordot:output:0Htransformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@23
1transformer_block_4/sequential_4/dense_17/BiasAdd?
,transformer_block_4/dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2.
,transformer_block_4/dropout_17/dropout/Const?
*transformer_block_4/dropout_17/dropout/MulMul:transformer_block_4/sequential_4/dense_17/BiasAdd:output:05transformer_block_4/dropout_17/dropout/Const:output:0*
T0*+
_output_shapes
:?????????@2,
*transformer_block_4/dropout_17/dropout/Mul?
,transformer_block_4/dropout_17/dropout/ShapeShape:transformer_block_4/sequential_4/dense_17/BiasAdd:output:0*
T0*
_output_shapes
:2.
,transformer_block_4/dropout_17/dropout/Shape?
Ctransformer_block_4/dropout_17/dropout/random_uniform/RandomUniformRandomUniform5transformer_block_4/dropout_17/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????@*
dtype02E
Ctransformer_block_4/dropout_17/dropout/random_uniform/RandomUniform?
5transformer_block_4/dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=27
5transformer_block_4/dropout_17/dropout/GreaterEqual/y?
3transformer_block_4/dropout_17/dropout/GreaterEqualGreaterEqualLtransformer_block_4/dropout_17/dropout/random_uniform/RandomUniform:output:0>transformer_block_4/dropout_17/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????@25
3transformer_block_4/dropout_17/dropout/GreaterEqual?
+transformer_block_4/dropout_17/dropout/CastCast7transformer_block_4/dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????@2-
+transformer_block_4/dropout_17/dropout/Cast?
,transformer_block_4/dropout_17/dropout/Mul_1Mul.transformer_block_4/dropout_17/dropout/Mul:z:0/transformer_block_4/dropout_17/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????@2.
,transformer_block_4/dropout_17/dropout/Mul_1?
transformer_block_4/add_1AddV2=transformer_block_4/layer_normalization_8/batchnorm/add_1:z:00transformer_block_4/dropout_17/dropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????@2
transformer_block_4/add_1?
Htransformer_block_4/layer_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_4/layer_normalization_9/moments/mean/reduction_indices?
6transformer_block_4/layer_normalization_9/moments/meanMeantransformer_block_4/add_1:z:0Qtransformer_block_4/layer_normalization_9/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(28
6transformer_block_4/layer_normalization_9/moments/mean?
>transformer_block_4/layer_normalization_9/moments/StopGradientStopGradient?transformer_block_4/layer_normalization_9/moments/mean:output:0*
T0*+
_output_shapes
:?????????2@
>transformer_block_4/layer_normalization_9/moments/StopGradient?
Ctransformer_block_4/layer_normalization_9/moments/SquaredDifferenceSquaredDifferencetransformer_block_4/add_1:z:0Gtransformer_block_4/layer_normalization_9/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@2E
Ctransformer_block_4/layer_normalization_9/moments/SquaredDifference?
Ltransformer_block_4/layer_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_4/layer_normalization_9/moments/variance/reduction_indices?
:transformer_block_4/layer_normalization_9/moments/varianceMeanGtransformer_block_4/layer_normalization_9/moments/SquaredDifference:z:0Utransformer_block_4/layer_normalization_9/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2<
:transformer_block_4/layer_normalization_9/moments/variance?
9transformer_block_4/layer_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52;
9transformer_block_4/layer_normalization_9/batchnorm/add/y?
7transformer_block_4/layer_normalization_9/batchnorm/addAddV2Ctransformer_block_4/layer_normalization_9/moments/variance:output:0Btransformer_block_4/layer_normalization_9/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????29
7transformer_block_4/layer_normalization_9/batchnorm/add?
9transformer_block_4/layer_normalization_9/batchnorm/RsqrtRsqrt;transformer_block_4/layer_normalization_9/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2;
9transformer_block_4/layer_normalization_9/batchnorm/Rsqrt?
Ftransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_4_layer_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02H
Ftransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp?
7transformer_block_4/layer_normalization_9/batchnorm/mulMul=transformer_block_4/layer_normalization_9/batchnorm/Rsqrt:y:0Ntransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@29
7transformer_block_4/layer_normalization_9/batchnorm/mul?
9transformer_block_4/layer_normalization_9/batchnorm/mul_1Multransformer_block_4/add_1:z:0;transformer_block_4/layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_9/batchnorm/mul_1?
9transformer_block_4/layer_normalization_9/batchnorm/mul_2Mul?transformer_block_4/layer_normalization_9/moments/mean:output:0;transformer_block_4/layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_9/batchnorm/mul_2?
Btransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_4_layer_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02D
Btransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp?
7transformer_block_4/layer_normalization_9/batchnorm/subSubJtransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp:value:0=transformer_block_4/layer_normalization_9/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@29
7transformer_block_4/layer_normalization_9/batchnorm/sub?
9transformer_block_4/layer_normalization_9/batchnorm/add_1AddV2=transformer_block_4/layer_normalization_9/batchnorm/mul_1:z:0;transformer_block_4/layer_normalization_9/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_9/batchnorm/add_1?
1global_average_pooling1d_4/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_4/Mean/reduction_indices?
global_average_pooling1d_4/MeanMean=transformer_block_4/layer_normalization_9/batchnorm/add_1:z:0:global_average_pooling1d_4/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2!
global_average_pooling1d_4/Meany
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_18/dropout/Const?
dropout_18/dropout/MulMul(global_average_pooling1d_4/Mean:output:0!dropout_18/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_18/dropout/Mul?
dropout_18/dropout/ShapeShape(global_average_pooling1d_4/Mean:output:0*
T0*
_output_shapes
:2
dropout_18/dropout/Shape?
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype021
/dropout_18/dropout/random_uniform/RandomUniform?
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_18/dropout/GreaterEqual/y?
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2!
dropout_18/dropout/GreaterEqual?
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_18/dropout/Cast?
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_18/dropout/Mul_1?
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_18/MatMul/ReadVariableOp?
dense_18/MatMulMatMuldropout_18/dropout/Mul_1:z:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_18/MatMul?
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_18/BiasAdd/ReadVariableOp?
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_18/BiasAdds
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_18/Reluy
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_19/dropout/Const?
dropout_19/dropout/MulMuldense_18/Relu:activations:0!dropout_19/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout_19/dropout/Mul
dropout_19/dropout/ShapeShapedense_18/Relu:activations:0*
T0*
_output_shapes
:2
dropout_19/dropout/Shape?
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype021
/dropout_19/dropout/random_uniform/RandomUniform?
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_19/dropout/GreaterEqual/y?
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2!
dropout_19/dropout/GreaterEqual?
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout_19/dropout/Cast?
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout_19/dropout/Mul_1?
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_19/MatMul/ReadVariableOp?
dense_19/MatMulMatMuldropout_19/dropout/Mul_1:z:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/MatMul?
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_19/BiasAdd/ReadVariableOp?
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/BiasAdd|
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_19/Softmaxu
IdentityIdentitydense_19/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp<^token_and_position_embedding_4/embedding_8/embedding_lookup<^token_and_position_embedding_4/embedding_9/embedding_lookupC^transformer_block_4/layer_normalization_8/batchnorm/ReadVariableOpG^transformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOpC^transformer_block_4/layer_normalization_9/batchnorm/ReadVariableOpG^transformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOpO^transformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOpY^transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_4/multi_head_attention_4/key/add/ReadVariableOpL^transformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOpD^transformer_block_4/multi_head_attention_4/query/add/ReadVariableOpN^transformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOpD^transformer_block_4/multi_head_attention_4/value/add/ReadVariableOpN^transformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpA^transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOpC^transformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOpA^transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOpC^transformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2z
;token_and_position_embedding_4/embedding_8/embedding_lookup;token_and_position_embedding_4/embedding_8/embedding_lookup2z
;token_and_position_embedding_4/embedding_9/embedding_lookup;token_and_position_embedding_4/embedding_9/embedding_lookup2?
Btransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOpBtransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp2?
Ftransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOpFtransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp2?
Btransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOpBtransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp2?
Ftransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOpFtransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp2?
Ntransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOpNtransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp2?
Xtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp2?
Atransformer_block_4/multi_head_attention_4/key/add/ReadVariableOpAtransformer_block_4/multi_head_attention_4/key/add/ReadVariableOp2?
Ktransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOpKtransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_4/multi_head_attention_4/query/add/ReadVariableOpCtransformer_block_4/multi_head_attention_4/query/add/ReadVariableOp2?
Mtransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOpMtransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_4/multi_head_attention_4/value/add/ReadVariableOpCtransformer_block_4/multi_head_attention_4/value/add/ReadVariableOp2?
Mtransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpMtransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp2?
@transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp@transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp2?
Btransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOpBtransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp2?
@transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp@transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp2?
Btransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOpBtransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_model_4_layer_call_fn_82699

inputs
unknown:@
	unknown_0:P@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: @

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:

unknown_19:

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_4_layer_call_and_return_conditional_losses_823382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_sequential_4_layer_call_fn_83559

inputs
unknown:@ 
	unknown_0: 
	unknown_1: @
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_814992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_81499

inputs 
dense_16_81457:@ 
dense_16_81459:  
dense_17_81493: @
dense_17_81495:@
identity?? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCallinputsdense_16_81457dense_16_81459*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_16_layer_call_and_return_conditional_losses_814562"
 dense_16/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_81493dense_17_81495*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_814922"
 dense_17/StatefulPartitionedCall?
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
c
E__inference_dropout_18_layer_call_and_return_conditional_losses_81845

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
c
E__inference_dropout_19_layer_call_and_return_conditional_losses_81869

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
C__inference_dense_17_layer_call_and_return_conditional_losses_83765

inputs3
!tensordot_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_82601
input_5
unknown:@
	unknown_0:P@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: @

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:

unknown_19:

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_814182
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
'__inference_model_4_layer_call_fn_82434
input_5
unknown:@
	unknown_0:P@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: @

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:

unknown_19:

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_4_layer_call_and_return_conditional_losses_823382
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
C__inference_dense_18_layer_call_and_return_conditional_losses_81858

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
'__inference_model_4_layer_call_fn_82650

inputs
unknown:@
	unknown_0:P@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@ 

unknown_12: 

unknown_13: @

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:

unknown_19:

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_4_layer_call_and_return_conditional_losses_818892
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_dense_16_layer_call_fn_83695

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_16_layer_call_and_return_conditional_losses_814562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Y__inference_token_and_position_embedding_4_layer_call_and_return_conditional_losses_83089
x4
"embedding_9_embedding_lookup_83076:@4
"embedding_8_embedding_lookup_83082:P@
identity??embedding_8/embedding_lookup?embedding_9/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:?????????2
range?
embedding_9/embedding_lookupResourceGather"embedding_9_embedding_lookup_83076range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_9/embedding_lookup/83076*'
_output_shapes
:?????????@*
dtype02
embedding_9/embedding_lookup?
%embedding_9/embedding_lookup/IdentityIdentity%embedding_9/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_9/embedding_lookup/83076*'
_output_shapes
:?????????@2'
%embedding_9/embedding_lookup/Identity?
'embedding_9/embedding_lookup/Identity_1Identity.embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@2)
'embedding_9/embedding_lookup/Identity_1p
embedding_8/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding_8/Cast?
embedding_8/embedding_lookupResourceGather"embedding_8_embedding_lookup_83082embedding_8/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_8/embedding_lookup/83082*+
_output_shapes
:?????????@*
dtype02
embedding_8/embedding_lookup?
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_8/embedding_lookup/83082*+
_output_shapes
:?????????@2'
%embedding_8/embedding_lookup/Identity?
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@2)
'embedding_8/embedding_lookup/Identity_1?
addAddV20embedding_8/embedding_lookup/Identity_1:output:00embedding_9/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:?????????@2
addf
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp^embedding_8/embedding_lookup^embedding_9/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2<
embedding_9/embedding_lookupembedding_9/embedding_lookup:J F
'
_output_shapes
:?????????

_user_specified_namex
?
V
:__inference_global_average_pooling1d_4_layer_call_fn_83440

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_818382
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
,__inference_sequential_4_layer_call_fn_81583
dense_16_input
unknown:@ 
	unknown_0: 
	unknown_1: @
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_16_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_815592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????@
(
_user_specified_namedense_16_input
??
?
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_83290

inputsX
Bmulti_head_attention_4_query_einsum_einsum_readvariableop_resource:@@J
8multi_head_attention_4_query_add_readvariableop_resource:@V
@multi_head_attention_4_key_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_4_key_add_readvariableop_resource:@X
Bmulti_head_attention_4_value_einsum_einsum_readvariableop_resource:@@J
8multi_head_attention_4_value_add_readvariableop_resource:@c
Mmulti_head_attention_4_attention_output_einsum_einsum_readvariableop_resource:@@Q
Cmulti_head_attention_4_attention_output_add_readvariableop_resource:@I
;layer_normalization_8_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_8_batchnorm_readvariableop_resource:@I
7sequential_4_dense_16_tensordot_readvariableop_resource:@ C
5sequential_4_dense_16_biasadd_readvariableop_resource: I
7sequential_4_dense_17_tensordot_readvariableop_resource: @C
5sequential_4_dense_17_biasadd_readvariableop_resource:@I
;layer_normalization_9_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_9_batchnorm_readvariableop_resource:@
identity??.layer_normalization_8/batchnorm/ReadVariableOp?2layer_normalization_8/batchnorm/mul/ReadVariableOp?.layer_normalization_9/batchnorm/ReadVariableOp?2layer_normalization_9/batchnorm/mul/ReadVariableOp?:multi_head_attention_4/attention_output/add/ReadVariableOp?Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_4/key/add/ReadVariableOp?7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_4/query/add/ReadVariableOp?9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_4/value/add/ReadVariableOp?9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?,sequential_4/dense_16/BiasAdd/ReadVariableOp?.sequential_4/dense_16/Tensordot/ReadVariableOp?,sequential_4/dense_17/BiasAdd/ReadVariableOp?.sequential_4/dense_17/Tensordot/ReadVariableOp?
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_4_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_4/query/einsum/EinsumEinsuminputsAmulti_head_attention_4/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2,
*multi_head_attention_4/query/einsum/Einsum?
/multi_head_attention_4/query/add/ReadVariableOpReadVariableOp8multi_head_attention_4_query_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_4/query/add/ReadVariableOp?
 multi_head_attention_4/query/addAddV23multi_head_attention_4/query/einsum/Einsum:output:07multi_head_attention_4/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 multi_head_attention_4/query/add?
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_4_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_4/key/einsum/EinsumEinsuminputs?multi_head_attention_4/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2*
(multi_head_attention_4/key/einsum/Einsum?
-multi_head_attention_4/key/add/ReadVariableOpReadVariableOp6multi_head_attention_4_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention_4/key/add/ReadVariableOp?
multi_head_attention_4/key/addAddV21multi_head_attention_4/key/einsum/Einsum:output:05multi_head_attention_4/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
multi_head_attention_4/key/add?
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_4_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_4/value/einsum/EinsumEinsuminputsAmulti_head_attention_4/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2,
*multi_head_attention_4/value/einsum/Einsum?
/multi_head_attention_4/value/add/ReadVariableOpReadVariableOp8multi_head_attention_4_value_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_4/value/add/ReadVariableOp?
 multi_head_attention_4/value/addAddV23multi_head_attention_4/value/einsum/Einsum:output:07multi_head_attention_4/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 multi_head_attention_4/value/add?
multi_head_attention_4/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention_4/Mul/y?
multi_head_attention_4/MulMul$multi_head_attention_4/query/add:z:0%multi_head_attention_4/Mul/y:output:0*
T0*/
_output_shapes
:?????????@2
multi_head_attention_4/Mul?
$multi_head_attention_4/einsum/EinsumEinsum"multi_head_attention_4/key/add:z:0multi_head_attention_4/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe2&
$multi_head_attention_4/einsum/Einsum?
&multi_head_attention_4/softmax/SoftmaxSoftmax-multi_head_attention_4/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????2(
&multi_head_attention_4/softmax/Softmax?
'multi_head_attention_4/dropout/IdentityIdentity0multi_head_attention_4/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????2)
'multi_head_attention_4/dropout/Identity?
&multi_head_attention_4/einsum_1/EinsumEinsum0multi_head_attention_4/dropout/Identity:output:0$multi_head_attention_4/value/add:z:0*
N*
T0*/
_output_shapes
:?????????@*
equationacbe,aecd->abcd2(
&multi_head_attention_4/einsum_1/Einsum?
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_4_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02F
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_4/attention_output/einsum/EinsumEinsum/multi_head_attention_4/einsum_1/Einsum:output:0Lmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????@*
equationabcd,cde->abe27
5multi_head_attention_4/attention_output/einsum/Einsum?
:multi_head_attention_4/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_4_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02<
:multi_head_attention_4/attention_output/add/ReadVariableOp?
+multi_head_attention_4/attention_output/addAddV2>multi_head_attention_4/attention_output/einsum/Einsum:output:0Bmulti_head_attention_4/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2-
+multi_head_attention_4/attention_output/add?
dropout_16/IdentityIdentity/multi_head_attention_4/attention_output/add:z:0*
T0*+
_output_shapes
:?????????@2
dropout_16/Identityo
addAddV2inputsdropout_16/Identity:output:0*
T0*+
_output_shapes
:?????????@2
add?
4layer_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_8/moments/mean/reduction_indices?
"layer_normalization_8/moments/meanMeanadd:z:0=layer_normalization_8/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2$
"layer_normalization_8/moments/mean?
*layer_normalization_8/moments/StopGradientStopGradient+layer_normalization_8/moments/mean:output:0*
T0*+
_output_shapes
:?????????2,
*layer_normalization_8/moments/StopGradient?
/layer_normalization_8/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_8/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@21
/layer_normalization_8/moments/SquaredDifference?
8layer_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_8/moments/variance/reduction_indices?
&layer_normalization_8/moments/varianceMean3layer_normalization_8/moments/SquaredDifference:z:0Alayer_normalization_8/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2(
&layer_normalization_8/moments/variance?
%layer_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_8/batchnorm/add/y?
#layer_normalization_8/batchnorm/addAddV2/layer_normalization_8/moments/variance:output:0.layer_normalization_8/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2%
#layer_normalization_8/batchnorm/add?
%layer_normalization_8/batchnorm/RsqrtRsqrt'layer_normalization_8/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2'
%layer_normalization_8/batchnorm/Rsqrt?
2layer_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_8/batchnorm/mul/ReadVariableOp?
#layer_normalization_8/batchnorm/mulMul)layer_normalization_8/batchnorm/Rsqrt:y:0:layer_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_8/batchnorm/mul?
%layer_normalization_8/batchnorm/mul_1Muladd:z:0'layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/mul_1?
%layer_normalization_8/batchnorm/mul_2Mul+layer_normalization_8/moments/mean:output:0'layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/mul_2?
.layer_normalization_8/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_8/batchnorm/ReadVariableOp?
#layer_normalization_8/batchnorm/subSub6layer_normalization_8/batchnorm/ReadVariableOp:value:0)layer_normalization_8/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_8/batchnorm/sub?
%layer_normalization_8/batchnorm/add_1AddV2)layer_normalization_8/batchnorm/mul_1:z:0'layer_normalization_8/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/add_1?
.sequential_4/dense_16/Tensordot/ReadVariableOpReadVariableOp7sequential_4_dense_16_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype020
.sequential_4/dense_16/Tensordot/ReadVariableOp?
$sequential_4/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_4/dense_16/Tensordot/axes?
$sequential_4/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_4/dense_16/Tensordot/free?
%sequential_4/dense_16/Tensordot/ShapeShape)layer_normalization_8/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%sequential_4/dense_16/Tensordot/Shape?
-sequential_4/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_16/Tensordot/GatherV2/axis?
(sequential_4/dense_16/Tensordot/GatherV2GatherV2.sequential_4/dense_16/Tensordot/Shape:output:0-sequential_4/dense_16/Tensordot/free:output:06sequential_4/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_4/dense_16/Tensordot/GatherV2?
/sequential_4/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_4/dense_16/Tensordot/GatherV2_1/axis?
*sequential_4/dense_16/Tensordot/GatherV2_1GatherV2.sequential_4/dense_16/Tensordot/Shape:output:0-sequential_4/dense_16/Tensordot/axes:output:08sequential_4/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_4/dense_16/Tensordot/GatherV2_1?
%sequential_4/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_4/dense_16/Tensordot/Const?
$sequential_4/dense_16/Tensordot/ProdProd1sequential_4/dense_16/Tensordot/GatherV2:output:0.sequential_4/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_4/dense_16/Tensordot/Prod?
'sequential_4/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_16/Tensordot/Const_1?
&sequential_4/dense_16/Tensordot/Prod_1Prod3sequential_4/dense_16/Tensordot/GatherV2_1:output:00sequential_4/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_4/dense_16/Tensordot/Prod_1?
+sequential_4/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_4/dense_16/Tensordot/concat/axis?
&sequential_4/dense_16/Tensordot/concatConcatV2-sequential_4/dense_16/Tensordot/free:output:0-sequential_4/dense_16/Tensordot/axes:output:04sequential_4/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/dense_16/Tensordot/concat?
%sequential_4/dense_16/Tensordot/stackPack-sequential_4/dense_16/Tensordot/Prod:output:0/sequential_4/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_4/dense_16/Tensordot/stack?
)sequential_4/dense_16/Tensordot/transpose	Transpose)layer_normalization_8/batchnorm/add_1:z:0/sequential_4/dense_16/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2+
)sequential_4/dense_16/Tensordot/transpose?
'sequential_4/dense_16/Tensordot/ReshapeReshape-sequential_4/dense_16/Tensordot/transpose:y:0.sequential_4/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_4/dense_16/Tensordot/Reshape?
&sequential_4/dense_16/Tensordot/MatMulMatMul0sequential_4/dense_16/Tensordot/Reshape:output:06sequential_4/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2(
&sequential_4/dense_16/Tensordot/MatMul?
'sequential_4/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_16/Tensordot/Const_2?
-sequential_4/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_16/Tensordot/concat_1/axis?
(sequential_4/dense_16/Tensordot/concat_1ConcatV21sequential_4/dense_16/Tensordot/GatherV2:output:00sequential_4/dense_16/Tensordot/Const_2:output:06sequential_4/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_4/dense_16/Tensordot/concat_1?
sequential_4/dense_16/TensordotReshape0sequential_4/dense_16/Tensordot/MatMul:product:01sequential_4/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2!
sequential_4/dense_16/Tensordot?
,sequential_4/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_4/dense_16/BiasAdd/ReadVariableOp?
sequential_4/dense_16/BiasAddBiasAdd(sequential_4/dense_16/Tensordot:output:04sequential_4/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
sequential_4/dense_16/BiasAdd?
sequential_4/dense_16/ReluRelu&sequential_4/dense_16/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
sequential_4/dense_16/Relu?
.sequential_4/dense_17/Tensordot/ReadVariableOpReadVariableOp7sequential_4_dense_17_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype020
.sequential_4/dense_17/Tensordot/ReadVariableOp?
$sequential_4/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_4/dense_17/Tensordot/axes?
$sequential_4/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_4/dense_17/Tensordot/free?
%sequential_4/dense_17/Tensordot/ShapeShape(sequential_4/dense_16/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_4/dense_17/Tensordot/Shape?
-sequential_4/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_17/Tensordot/GatherV2/axis?
(sequential_4/dense_17/Tensordot/GatherV2GatherV2.sequential_4/dense_17/Tensordot/Shape:output:0-sequential_4/dense_17/Tensordot/free:output:06sequential_4/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_4/dense_17/Tensordot/GatherV2?
/sequential_4/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_4/dense_17/Tensordot/GatherV2_1/axis?
*sequential_4/dense_17/Tensordot/GatherV2_1GatherV2.sequential_4/dense_17/Tensordot/Shape:output:0-sequential_4/dense_17/Tensordot/axes:output:08sequential_4/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_4/dense_17/Tensordot/GatherV2_1?
%sequential_4/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_4/dense_17/Tensordot/Const?
$sequential_4/dense_17/Tensordot/ProdProd1sequential_4/dense_17/Tensordot/GatherV2:output:0.sequential_4/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_4/dense_17/Tensordot/Prod?
'sequential_4/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_17/Tensordot/Const_1?
&sequential_4/dense_17/Tensordot/Prod_1Prod3sequential_4/dense_17/Tensordot/GatherV2_1:output:00sequential_4/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_4/dense_17/Tensordot/Prod_1?
+sequential_4/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_4/dense_17/Tensordot/concat/axis?
&sequential_4/dense_17/Tensordot/concatConcatV2-sequential_4/dense_17/Tensordot/free:output:0-sequential_4/dense_17/Tensordot/axes:output:04sequential_4/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/dense_17/Tensordot/concat?
%sequential_4/dense_17/Tensordot/stackPack-sequential_4/dense_17/Tensordot/Prod:output:0/sequential_4/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_4/dense_17/Tensordot/stack?
)sequential_4/dense_17/Tensordot/transpose	Transpose(sequential_4/dense_16/Relu:activations:0/sequential_4/dense_17/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2+
)sequential_4/dense_17/Tensordot/transpose?
'sequential_4/dense_17/Tensordot/ReshapeReshape-sequential_4/dense_17/Tensordot/transpose:y:0.sequential_4/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_4/dense_17/Tensordot/Reshape?
&sequential_4/dense_17/Tensordot/MatMulMatMul0sequential_4/dense_17/Tensordot/Reshape:output:06sequential_4/dense_17/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2(
&sequential_4/dense_17/Tensordot/MatMul?
'sequential_4/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_4/dense_17/Tensordot/Const_2?
-sequential_4/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_17/Tensordot/concat_1/axis?
(sequential_4/dense_17/Tensordot/concat_1ConcatV21sequential_4/dense_17/Tensordot/GatherV2:output:00sequential_4/dense_17/Tensordot/Const_2:output:06sequential_4/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_4/dense_17/Tensordot/concat_1?
sequential_4/dense_17/TensordotReshape0sequential_4/dense_17/Tensordot/MatMul:product:01sequential_4/dense_17/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2!
sequential_4/dense_17/Tensordot?
,sequential_4/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_4/dense_17/BiasAdd/ReadVariableOp?
sequential_4/dense_17/BiasAddBiasAdd(sequential_4/dense_17/Tensordot:output:04sequential_4/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
sequential_4/dense_17/BiasAdd?
dropout_17/IdentityIdentity&sequential_4/dense_17/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
dropout_17/Identity?
add_1AddV2)layer_normalization_8/batchnorm/add_1:z:0dropout_17/Identity:output:0*
T0*+
_output_shapes
:?????????@2
add_1?
4layer_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_9/moments/mean/reduction_indices?
"layer_normalization_9/moments/meanMean	add_1:z:0=layer_normalization_9/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2$
"layer_normalization_9/moments/mean?
*layer_normalization_9/moments/StopGradientStopGradient+layer_normalization_9/moments/mean:output:0*
T0*+
_output_shapes
:?????????2,
*layer_normalization_9/moments/StopGradient?
/layer_normalization_9/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_9/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@21
/layer_normalization_9/moments/SquaredDifference?
8layer_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_9/moments/variance/reduction_indices?
&layer_normalization_9/moments/varianceMean3layer_normalization_9/moments/SquaredDifference:z:0Alayer_normalization_9/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2(
&layer_normalization_9/moments/variance?
%layer_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_9/batchnorm/add/y?
#layer_normalization_9/batchnorm/addAddV2/layer_normalization_9/moments/variance:output:0.layer_normalization_9/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2%
#layer_normalization_9/batchnorm/add?
%layer_normalization_9/batchnorm/RsqrtRsqrt'layer_normalization_9/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2'
%layer_normalization_9/batchnorm/Rsqrt?
2layer_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_9/batchnorm/mul/ReadVariableOp?
#layer_normalization_9/batchnorm/mulMul)layer_normalization_9/batchnorm/Rsqrt:y:0:layer_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_9/batchnorm/mul?
%layer_normalization_9/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/mul_1?
%layer_normalization_9/batchnorm/mul_2Mul+layer_normalization_9/moments/mean:output:0'layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/mul_2?
.layer_normalization_9/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_9/batchnorm/ReadVariableOp?
#layer_normalization_9/batchnorm/subSub6layer_normalization_9/batchnorm/ReadVariableOp:value:0)layer_normalization_9/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_9/batchnorm/sub?
%layer_normalization_9/batchnorm/add_1AddV2)layer_normalization_9/batchnorm/mul_1:z:0'layer_normalization_9/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/add_1?
IdentityIdentity)layer_normalization_9/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp/^layer_normalization_8/batchnorm/ReadVariableOp3^layer_normalization_8/batchnorm/mul/ReadVariableOp/^layer_normalization_9/batchnorm/ReadVariableOp3^layer_normalization_9/batchnorm/mul/ReadVariableOp;^multi_head_attention_4/attention_output/add/ReadVariableOpE^multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_4/key/add/ReadVariableOp8^multi_head_attention_4/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_4/query/add/ReadVariableOp:^multi_head_attention_4/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_4/value/add/ReadVariableOp:^multi_head_attention_4/value/einsum/Einsum/ReadVariableOp-^sequential_4/dense_16/BiasAdd/ReadVariableOp/^sequential_4/dense_16/Tensordot/ReadVariableOp-^sequential_4/dense_17/BiasAdd/ReadVariableOp/^sequential_4/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????@: : : : : : : : : : : : : : : : 2`
.layer_normalization_8/batchnorm/ReadVariableOp.layer_normalization_8/batchnorm/ReadVariableOp2h
2layer_normalization_8/batchnorm/mul/ReadVariableOp2layer_normalization_8/batchnorm/mul/ReadVariableOp2`
.layer_normalization_9/batchnorm/ReadVariableOp.layer_normalization_9/batchnorm/ReadVariableOp2h
2layer_normalization_9/batchnorm/mul/ReadVariableOp2layer_normalization_9/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_4/attention_output/add/ReadVariableOp:multi_head_attention_4/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_4/key/add/ReadVariableOp-multi_head_attention_4/key/add/ReadVariableOp2r
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_4/query/add/ReadVariableOp/multi_head_attention_4/query/add/ReadVariableOp2v
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_4/value/add/ReadVariableOp/multi_head_attention_4/value/add/ReadVariableOp2v
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp2\
,sequential_4/dense_16/BiasAdd/ReadVariableOp,sequential_4/dense_16/BiasAdd/ReadVariableOp2`
.sequential_4/dense_16/Tensordot/ReadVariableOp.sequential_4/dense_16/Tensordot/ReadVariableOp2\
,sequential_4/dense_17/BiasAdd/ReadVariableOp,sequential_4/dense_17/BiasAdd/ReadVariableOp2`
.sequential_4/dense_17/Tensordot/ReadVariableOp.sequential_4/dense_17/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?/
?

B__inference_model_4_layer_call_and_return_conditional_losses_82338

inputs6
$token_and_position_embedding_4_82286:@6
$token_and_position_embedding_4_82288:P@/
transformer_block_4_82291:@@+
transformer_block_4_82293:@/
transformer_block_4_82295:@@+
transformer_block_4_82297:@/
transformer_block_4_82299:@@+
transformer_block_4_82301:@/
transformer_block_4_82303:@@'
transformer_block_4_82305:@'
transformer_block_4_82307:@'
transformer_block_4_82309:@+
transformer_block_4_82311:@ '
transformer_block_4_82313: +
transformer_block_4_82315: @'
transformer_block_4_82317:@'
transformer_block_4_82319:@'
transformer_block_4_82321:@ 
dense_18_82326:@
dense_18_82328: 
dense_19_82332:
dense_19_82334:
identity?? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?"dropout_18/StatefulPartitionedCall?"dropout_19/StatefulPartitionedCall?6token_and_position_embedding_4/StatefulPartitionedCall?+transformer_block_4/StatefulPartitionedCall?
6token_and_position_embedding_4/StatefulPartitionedCallStatefulPartitionedCallinputs$token_and_position_embedding_4_82286$token_and_position_embedding_4_82288*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *b
f]R[
Y__inference_token_and_position_embedding_4_layer_call_and_return_conditional_losses_8166628
6token_and_position_embedding_4/StatefulPartitionedCall?
+transformer_block_4/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_4/StatefulPartitionedCall:output:0transformer_block_4_82291transformer_block_4_82293transformer_block_4_82295transformer_block_4_82297transformer_block_4_82299transformer_block_4_82301transformer_block_4_82303transformer_block_4_82305transformer_block_4_82307transformer_block_4_82309transformer_block_4_82311transformer_block_4_82313transformer_block_4_82315transformer_block_4_82317transformer_block_4_82319transformer_block_4_82321*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_821872-
+transformer_block_4/StatefulPartitionedCall?
*global_average_pooling1d_4/PartitionedCallPartitionedCall4transformer_block_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_818382,
*global_average_pooling1d_4/PartitionedCall?
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_819992$
"dropout_18/StatefulPartitionedCall?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0dense_18_82326dense_18_82328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_18_layer_call_and_return_conditional_losses_818582"
 dense_18/StatefulPartitionedCall?
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_819662$
"dropout_19/StatefulPartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_19_82332dense_19_82334*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_19_layer_call_and_return_conditional_losses_818822"
 dense_19/StatefulPartitionedCall?
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall7^token_and_position_embedding_4/StatefulPartitionedCall,^transformer_block_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2p
6token_and_position_embedding_4/StatefulPartitionedCall6token_and_position_embedding_4/StatefulPartitionedCall2Z
+transformer_block_4/StatefulPartitionedCall+transformer_block_4/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_19_layer_call_and_return_conditional_losses_81882

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?	
B__inference_model_4_layer_call_and_return_conditional_losses_81889

inputs6
$token_and_position_embedding_4_81667:@6
$token_and_position_embedding_4_81669:P@/
transformer_block_4_81800:@@+
transformer_block_4_81802:@/
transformer_block_4_81804:@@+
transformer_block_4_81806:@/
transformer_block_4_81808:@@+
transformer_block_4_81810:@/
transformer_block_4_81812:@@'
transformer_block_4_81814:@'
transformer_block_4_81816:@'
transformer_block_4_81818:@+
transformer_block_4_81820:@ '
transformer_block_4_81822: +
transformer_block_4_81824: @'
transformer_block_4_81826:@'
transformer_block_4_81828:@'
transformer_block_4_81830:@ 
dense_18_81859:@
dense_18_81861: 
dense_19_81883:
dense_19_81885:
identity?? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?6token_and_position_embedding_4/StatefulPartitionedCall?+transformer_block_4/StatefulPartitionedCall?
6token_and_position_embedding_4/StatefulPartitionedCallStatefulPartitionedCallinputs$token_and_position_embedding_4_81667$token_and_position_embedding_4_81669*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *b
f]R[
Y__inference_token_and_position_embedding_4_layer_call_and_return_conditional_losses_8166628
6token_and_position_embedding_4/StatefulPartitionedCall?
+transformer_block_4/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_4/StatefulPartitionedCall:output:0transformer_block_4_81800transformer_block_4_81802transformer_block_4_81804transformer_block_4_81806transformer_block_4_81808transformer_block_4_81810transformer_block_4_81812transformer_block_4_81814transformer_block_4_81816transformer_block_4_81818transformer_block_4_81820transformer_block_4_81822transformer_block_4_81824transformer_block_4_81826transformer_block_4_81828transformer_block_4_81830*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_817992-
+transformer_block_4/StatefulPartitionedCall?
*global_average_pooling1d_4/PartitionedCallPartitionedCall4transformer_block_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_818382,
*global_average_pooling1d_4/PartitionedCall?
dropout_18/PartitionedCallPartitionedCall3global_average_pooling1d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_818452
dropout_18/PartitionedCall?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0dense_18_81859dense_18_81861*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_18_layer_call_and_return_conditional_losses_818582"
 dense_18/StatefulPartitionedCall?
dropout_19/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_818692
dropout_19/PartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_19_81883dense_19_81885*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_19_layer_call_and_return_conditional_losses_818822"
 dense_19/StatefulPartitionedCall?
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall7^token_and_position_embedding_4/StatefulPartitionedCall,^transformer_block_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2p
6token_and_position_embedding_4/StatefulPartitionedCall6token_and_position_embedding_4/StatefulPartitionedCall2Z
+transformer_block_4/StatefulPartitionedCall+transformer_block_4/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_18_layer_call_and_return_conditional_losses_81999

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
(__inference_dense_18_layer_call_fn_83488

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_18_layer_call_and_return_conditional_losses_818582
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_83430

inputsX
Bmulti_head_attention_4_query_einsum_einsum_readvariableop_resource:@@J
8multi_head_attention_4_query_add_readvariableop_resource:@V
@multi_head_attention_4_key_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_4_key_add_readvariableop_resource:@X
Bmulti_head_attention_4_value_einsum_einsum_readvariableop_resource:@@J
8multi_head_attention_4_value_add_readvariableop_resource:@c
Mmulti_head_attention_4_attention_output_einsum_einsum_readvariableop_resource:@@Q
Cmulti_head_attention_4_attention_output_add_readvariableop_resource:@I
;layer_normalization_8_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_8_batchnorm_readvariableop_resource:@I
7sequential_4_dense_16_tensordot_readvariableop_resource:@ C
5sequential_4_dense_16_biasadd_readvariableop_resource: I
7sequential_4_dense_17_tensordot_readvariableop_resource: @C
5sequential_4_dense_17_biasadd_readvariableop_resource:@I
;layer_normalization_9_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_9_batchnorm_readvariableop_resource:@
identity??.layer_normalization_8/batchnorm/ReadVariableOp?2layer_normalization_8/batchnorm/mul/ReadVariableOp?.layer_normalization_9/batchnorm/ReadVariableOp?2layer_normalization_9/batchnorm/mul/ReadVariableOp?:multi_head_attention_4/attention_output/add/ReadVariableOp?Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_4/key/add/ReadVariableOp?7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_4/query/add/ReadVariableOp?9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_4/value/add/ReadVariableOp?9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?,sequential_4/dense_16/BiasAdd/ReadVariableOp?.sequential_4/dense_16/Tensordot/ReadVariableOp?,sequential_4/dense_17/BiasAdd/ReadVariableOp?.sequential_4/dense_17/Tensordot/ReadVariableOp?
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_4_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_4/query/einsum/EinsumEinsuminputsAmulti_head_attention_4/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2,
*multi_head_attention_4/query/einsum/Einsum?
/multi_head_attention_4/query/add/ReadVariableOpReadVariableOp8multi_head_attention_4_query_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_4/query/add/ReadVariableOp?
 multi_head_attention_4/query/addAddV23multi_head_attention_4/query/einsum/Einsum:output:07multi_head_attention_4/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 multi_head_attention_4/query/add?
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_4_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_4/key/einsum/EinsumEinsuminputs?multi_head_attention_4/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2*
(multi_head_attention_4/key/einsum/Einsum?
-multi_head_attention_4/key/add/ReadVariableOpReadVariableOp6multi_head_attention_4_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention_4/key/add/ReadVariableOp?
multi_head_attention_4/key/addAddV21multi_head_attention_4/key/einsum/Einsum:output:05multi_head_attention_4/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
multi_head_attention_4/key/add?
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_4_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_4/value/einsum/EinsumEinsuminputsAmulti_head_attention_4/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2,
*multi_head_attention_4/value/einsum/Einsum?
/multi_head_attention_4/value/add/ReadVariableOpReadVariableOp8multi_head_attention_4_value_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_4/value/add/ReadVariableOp?
 multi_head_attention_4/value/addAddV23multi_head_attention_4/value/einsum/Einsum:output:07multi_head_attention_4/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 multi_head_attention_4/value/add?
multi_head_attention_4/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention_4/Mul/y?
multi_head_attention_4/MulMul$multi_head_attention_4/query/add:z:0%multi_head_attention_4/Mul/y:output:0*
T0*/
_output_shapes
:?????????@2
multi_head_attention_4/Mul?
$multi_head_attention_4/einsum/EinsumEinsum"multi_head_attention_4/key/add:z:0multi_head_attention_4/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe2&
$multi_head_attention_4/einsum/Einsum?
&multi_head_attention_4/softmax/SoftmaxSoftmax-multi_head_attention_4/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????2(
&multi_head_attention_4/softmax/Softmax?
&multi_head_attention_4/einsum_1/EinsumEinsum0multi_head_attention_4/softmax/Softmax:softmax:0$multi_head_attention_4/value/add:z:0*
N*
T0*/
_output_shapes
:?????????@*
equationacbe,aecd->abcd2(
&multi_head_attention_4/einsum_1/Einsum?
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_4_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02F
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_4/attention_output/einsum/EinsumEinsum/multi_head_attention_4/einsum_1/Einsum:output:0Lmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????@*
equationabcd,cde->abe27
5multi_head_attention_4/attention_output/einsum/Einsum?
:multi_head_attention_4/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_4_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02<
:multi_head_attention_4/attention_output/add/ReadVariableOp?
+multi_head_attention_4/attention_output/addAddV2>multi_head_attention_4/attention_output/einsum/Einsum:output:0Bmulti_head_attention_4/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2-
+multi_head_attention_4/attention_output/addy
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_16/dropout/Const?
dropout_16/dropout/MulMul/multi_head_attention_4/attention_output/add:z:0!dropout_16/dropout/Const:output:0*
T0*+
_output_shapes
:?????????@2
dropout_16/dropout/Mul?
dropout_16/dropout/ShapeShape/multi_head_attention_4/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_16/dropout/Shape?
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????@*
dtype021
/dropout_16/dropout/random_uniform/RandomUniform?
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_16/dropout/GreaterEqual/y?
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????@2!
dropout_16/dropout/GreaterEqual?
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????@2
dropout_16/dropout/Cast?
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????@2
dropout_16/dropout/Mul_1o
addAddV2inputsdropout_16/dropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????@2
add?
4layer_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_8/moments/mean/reduction_indices?
"layer_normalization_8/moments/meanMeanadd:z:0=layer_normalization_8/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2$
"layer_normalization_8/moments/mean?
*layer_normalization_8/moments/StopGradientStopGradient+layer_normalization_8/moments/mean:output:0*
T0*+
_output_shapes
:?????????2,
*layer_normalization_8/moments/StopGradient?
/layer_normalization_8/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_8/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@21
/layer_normalization_8/moments/SquaredDifference?
8layer_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_8/moments/variance/reduction_indices?
&layer_normalization_8/moments/varianceMean3layer_normalization_8/moments/SquaredDifference:z:0Alayer_normalization_8/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2(
&layer_normalization_8/moments/variance?
%layer_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_8/batchnorm/add/y?
#layer_normalization_8/batchnorm/addAddV2/layer_normalization_8/moments/variance:output:0.layer_normalization_8/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2%
#layer_normalization_8/batchnorm/add?
%layer_normalization_8/batchnorm/RsqrtRsqrt'layer_normalization_8/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2'
%layer_normalization_8/batchnorm/Rsqrt?
2layer_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_8/batchnorm/mul/ReadVariableOp?
#layer_normalization_8/batchnorm/mulMul)layer_normalization_8/batchnorm/Rsqrt:y:0:layer_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_8/batchnorm/mul?
%layer_normalization_8/batchnorm/mul_1Muladd:z:0'layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/mul_1?
%layer_normalization_8/batchnorm/mul_2Mul+layer_normalization_8/moments/mean:output:0'layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/mul_2?
.layer_normalization_8/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_8/batchnorm/ReadVariableOp?
#layer_normalization_8/batchnorm/subSub6layer_normalization_8/batchnorm/ReadVariableOp:value:0)layer_normalization_8/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_8/batchnorm/sub?
%layer_normalization_8/batchnorm/add_1AddV2)layer_normalization_8/batchnorm/mul_1:z:0'layer_normalization_8/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/add_1?
.sequential_4/dense_16/Tensordot/ReadVariableOpReadVariableOp7sequential_4_dense_16_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype020
.sequential_4/dense_16/Tensordot/ReadVariableOp?
$sequential_4/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_4/dense_16/Tensordot/axes?
$sequential_4/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_4/dense_16/Tensordot/free?
%sequential_4/dense_16/Tensordot/ShapeShape)layer_normalization_8/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%sequential_4/dense_16/Tensordot/Shape?
-sequential_4/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_16/Tensordot/GatherV2/axis?
(sequential_4/dense_16/Tensordot/GatherV2GatherV2.sequential_4/dense_16/Tensordot/Shape:output:0-sequential_4/dense_16/Tensordot/free:output:06sequential_4/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_4/dense_16/Tensordot/GatherV2?
/sequential_4/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_4/dense_16/Tensordot/GatherV2_1/axis?
*sequential_4/dense_16/Tensordot/GatherV2_1GatherV2.sequential_4/dense_16/Tensordot/Shape:output:0-sequential_4/dense_16/Tensordot/axes:output:08sequential_4/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_4/dense_16/Tensordot/GatherV2_1?
%sequential_4/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_4/dense_16/Tensordot/Const?
$sequential_4/dense_16/Tensordot/ProdProd1sequential_4/dense_16/Tensordot/GatherV2:output:0.sequential_4/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_4/dense_16/Tensordot/Prod?
'sequential_4/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_16/Tensordot/Const_1?
&sequential_4/dense_16/Tensordot/Prod_1Prod3sequential_4/dense_16/Tensordot/GatherV2_1:output:00sequential_4/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_4/dense_16/Tensordot/Prod_1?
+sequential_4/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_4/dense_16/Tensordot/concat/axis?
&sequential_4/dense_16/Tensordot/concatConcatV2-sequential_4/dense_16/Tensordot/free:output:0-sequential_4/dense_16/Tensordot/axes:output:04sequential_4/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/dense_16/Tensordot/concat?
%sequential_4/dense_16/Tensordot/stackPack-sequential_4/dense_16/Tensordot/Prod:output:0/sequential_4/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_4/dense_16/Tensordot/stack?
)sequential_4/dense_16/Tensordot/transpose	Transpose)layer_normalization_8/batchnorm/add_1:z:0/sequential_4/dense_16/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2+
)sequential_4/dense_16/Tensordot/transpose?
'sequential_4/dense_16/Tensordot/ReshapeReshape-sequential_4/dense_16/Tensordot/transpose:y:0.sequential_4/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_4/dense_16/Tensordot/Reshape?
&sequential_4/dense_16/Tensordot/MatMulMatMul0sequential_4/dense_16/Tensordot/Reshape:output:06sequential_4/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2(
&sequential_4/dense_16/Tensordot/MatMul?
'sequential_4/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_16/Tensordot/Const_2?
-sequential_4/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_16/Tensordot/concat_1/axis?
(sequential_4/dense_16/Tensordot/concat_1ConcatV21sequential_4/dense_16/Tensordot/GatherV2:output:00sequential_4/dense_16/Tensordot/Const_2:output:06sequential_4/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_4/dense_16/Tensordot/concat_1?
sequential_4/dense_16/TensordotReshape0sequential_4/dense_16/Tensordot/MatMul:product:01sequential_4/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2!
sequential_4/dense_16/Tensordot?
,sequential_4/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_4/dense_16/BiasAdd/ReadVariableOp?
sequential_4/dense_16/BiasAddBiasAdd(sequential_4/dense_16/Tensordot:output:04sequential_4/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
sequential_4/dense_16/BiasAdd?
sequential_4/dense_16/ReluRelu&sequential_4/dense_16/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
sequential_4/dense_16/Relu?
.sequential_4/dense_17/Tensordot/ReadVariableOpReadVariableOp7sequential_4_dense_17_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype020
.sequential_4/dense_17/Tensordot/ReadVariableOp?
$sequential_4/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_4/dense_17/Tensordot/axes?
$sequential_4/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_4/dense_17/Tensordot/free?
%sequential_4/dense_17/Tensordot/ShapeShape(sequential_4/dense_16/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_4/dense_17/Tensordot/Shape?
-sequential_4/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_17/Tensordot/GatherV2/axis?
(sequential_4/dense_17/Tensordot/GatherV2GatherV2.sequential_4/dense_17/Tensordot/Shape:output:0-sequential_4/dense_17/Tensordot/free:output:06sequential_4/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_4/dense_17/Tensordot/GatherV2?
/sequential_4/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_4/dense_17/Tensordot/GatherV2_1/axis?
*sequential_4/dense_17/Tensordot/GatherV2_1GatherV2.sequential_4/dense_17/Tensordot/Shape:output:0-sequential_4/dense_17/Tensordot/axes:output:08sequential_4/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_4/dense_17/Tensordot/GatherV2_1?
%sequential_4/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_4/dense_17/Tensordot/Const?
$sequential_4/dense_17/Tensordot/ProdProd1sequential_4/dense_17/Tensordot/GatherV2:output:0.sequential_4/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_4/dense_17/Tensordot/Prod?
'sequential_4/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_17/Tensordot/Const_1?
&sequential_4/dense_17/Tensordot/Prod_1Prod3sequential_4/dense_17/Tensordot/GatherV2_1:output:00sequential_4/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_4/dense_17/Tensordot/Prod_1?
+sequential_4/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_4/dense_17/Tensordot/concat/axis?
&sequential_4/dense_17/Tensordot/concatConcatV2-sequential_4/dense_17/Tensordot/free:output:0-sequential_4/dense_17/Tensordot/axes:output:04sequential_4/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/dense_17/Tensordot/concat?
%sequential_4/dense_17/Tensordot/stackPack-sequential_4/dense_17/Tensordot/Prod:output:0/sequential_4/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_4/dense_17/Tensordot/stack?
)sequential_4/dense_17/Tensordot/transpose	Transpose(sequential_4/dense_16/Relu:activations:0/sequential_4/dense_17/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2+
)sequential_4/dense_17/Tensordot/transpose?
'sequential_4/dense_17/Tensordot/ReshapeReshape-sequential_4/dense_17/Tensordot/transpose:y:0.sequential_4/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_4/dense_17/Tensordot/Reshape?
&sequential_4/dense_17/Tensordot/MatMulMatMul0sequential_4/dense_17/Tensordot/Reshape:output:06sequential_4/dense_17/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2(
&sequential_4/dense_17/Tensordot/MatMul?
'sequential_4/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_4/dense_17/Tensordot/Const_2?
-sequential_4/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_17/Tensordot/concat_1/axis?
(sequential_4/dense_17/Tensordot/concat_1ConcatV21sequential_4/dense_17/Tensordot/GatherV2:output:00sequential_4/dense_17/Tensordot/Const_2:output:06sequential_4/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_4/dense_17/Tensordot/concat_1?
sequential_4/dense_17/TensordotReshape0sequential_4/dense_17/Tensordot/MatMul:product:01sequential_4/dense_17/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2!
sequential_4/dense_17/Tensordot?
,sequential_4/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_4/dense_17/BiasAdd/ReadVariableOp?
sequential_4/dense_17/BiasAddBiasAdd(sequential_4/dense_17/Tensordot:output:04sequential_4/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
sequential_4/dense_17/BiasAddy
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_17/dropout/Const?
dropout_17/dropout/MulMul&sequential_4/dense_17/BiasAdd:output:0!dropout_17/dropout/Const:output:0*
T0*+
_output_shapes
:?????????@2
dropout_17/dropout/Mul?
dropout_17/dropout/ShapeShape&sequential_4/dense_17/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_17/dropout/Shape?
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????@*
dtype021
/dropout_17/dropout/random_uniform/RandomUniform?
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2#
!dropout_17/dropout/GreaterEqual/y?
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????@2!
dropout_17/dropout/GreaterEqual?
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????@2
dropout_17/dropout/Cast?
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????@2
dropout_17/dropout/Mul_1?
add_1AddV2)layer_normalization_8/batchnorm/add_1:z:0dropout_17/dropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????@2
add_1?
4layer_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_9/moments/mean/reduction_indices?
"layer_normalization_9/moments/meanMean	add_1:z:0=layer_normalization_9/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2$
"layer_normalization_9/moments/mean?
*layer_normalization_9/moments/StopGradientStopGradient+layer_normalization_9/moments/mean:output:0*
T0*+
_output_shapes
:?????????2,
*layer_normalization_9/moments/StopGradient?
/layer_normalization_9/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_9/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@21
/layer_normalization_9/moments/SquaredDifference?
8layer_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_9/moments/variance/reduction_indices?
&layer_normalization_9/moments/varianceMean3layer_normalization_9/moments/SquaredDifference:z:0Alayer_normalization_9/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2(
&layer_normalization_9/moments/variance?
%layer_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_9/batchnorm/add/y?
#layer_normalization_9/batchnorm/addAddV2/layer_normalization_9/moments/variance:output:0.layer_normalization_9/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2%
#layer_normalization_9/batchnorm/add?
%layer_normalization_9/batchnorm/RsqrtRsqrt'layer_normalization_9/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2'
%layer_normalization_9/batchnorm/Rsqrt?
2layer_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_9/batchnorm/mul/ReadVariableOp?
#layer_normalization_9/batchnorm/mulMul)layer_normalization_9/batchnorm/Rsqrt:y:0:layer_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_9/batchnorm/mul?
%layer_normalization_9/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/mul_1?
%layer_normalization_9/batchnorm/mul_2Mul+layer_normalization_9/moments/mean:output:0'layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/mul_2?
.layer_normalization_9/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_9/batchnorm/ReadVariableOp?
#layer_normalization_9/batchnorm/subSub6layer_normalization_9/batchnorm/ReadVariableOp:value:0)layer_normalization_9/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_9/batchnorm/sub?
%layer_normalization_9/batchnorm/add_1AddV2)layer_normalization_9/batchnorm/mul_1:z:0'layer_normalization_9/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/add_1?
IdentityIdentity)layer_normalization_9/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp/^layer_normalization_8/batchnorm/ReadVariableOp3^layer_normalization_8/batchnorm/mul/ReadVariableOp/^layer_normalization_9/batchnorm/ReadVariableOp3^layer_normalization_9/batchnorm/mul/ReadVariableOp;^multi_head_attention_4/attention_output/add/ReadVariableOpE^multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_4/key/add/ReadVariableOp8^multi_head_attention_4/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_4/query/add/ReadVariableOp:^multi_head_attention_4/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_4/value/add/ReadVariableOp:^multi_head_attention_4/value/einsum/Einsum/ReadVariableOp-^sequential_4/dense_16/BiasAdd/ReadVariableOp/^sequential_4/dense_16/Tensordot/ReadVariableOp-^sequential_4/dense_17/BiasAdd/ReadVariableOp/^sequential_4/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????@: : : : : : : : : : : : : : : : 2`
.layer_normalization_8/batchnorm/ReadVariableOp.layer_normalization_8/batchnorm/ReadVariableOp2h
2layer_normalization_8/batchnorm/mul/ReadVariableOp2layer_normalization_8/batchnorm/mul/ReadVariableOp2`
.layer_normalization_9/batchnorm/ReadVariableOp.layer_normalization_9/batchnorm/ReadVariableOp2h
2layer_normalization_9/batchnorm/mul/ReadVariableOp2layer_normalization_9/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_4/attention_output/add/ReadVariableOp:multi_head_attention_4/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_4/key/add/ReadVariableOp-multi_head_attention_4/key/add/ReadVariableOp2r
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_4/query/add/ReadVariableOp/multi_head_attention_4/query/add/ReadVariableOp2v
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_4/value/add/ReadVariableOp/multi_head_attention_4/value/add/ReadVariableOp2v
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp2\
,sequential_4/dense_16/BiasAdd/ReadVariableOp,sequential_4/dense_16/BiasAdd/ReadVariableOp2`
.sequential_4/dense_16/Tensordot/ReadVariableOp.sequential_4/dense_16/Tensordot/ReadVariableOp2\
,sequential_4/dense_17/BiasAdd/ReadVariableOp,sequential_4/dense_17/BiasAdd/ReadVariableOp2`
.sequential_4/dense_17/Tensordot/ReadVariableOp.sequential_4/dense_17/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
? 
?
C__inference_dense_17_layer_call_and_return_conditional_losses_81492

inputs3
!tensordot_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
F
*__inference_dropout_19_layer_call_fn_83504

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_818692
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?:
!__inference__traced_restore_84248
file_prefix2
 assignvariableop_dense_18_kernel:@.
 assignvariableop_1_dense_18_bias:4
"assignvariableop_2_dense_19_kernel:.
 assignvariableop_3_dense_19_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: Z
Hassignvariableop_9_token_and_position_embedding_4_embedding_8_embeddings:P@[
Iassignvariableop_10_token_and_position_embedding_4_embedding_9_embeddings:@a
Kassignvariableop_11_transformer_block_4_multi_head_attention_4_query_kernel:@@[
Iassignvariableop_12_transformer_block_4_multi_head_attention_4_query_bias:@_
Iassignvariableop_13_transformer_block_4_multi_head_attention_4_key_kernel:@@Y
Gassignvariableop_14_transformer_block_4_multi_head_attention_4_key_bias:@a
Kassignvariableop_15_transformer_block_4_multi_head_attention_4_value_kernel:@@[
Iassignvariableop_16_transformer_block_4_multi_head_attention_4_value_bias:@l
Vassignvariableop_17_transformer_block_4_multi_head_attention_4_attention_output_kernel:@@b
Tassignvariableop_18_transformer_block_4_multi_head_attention_4_attention_output_bias:@5
#assignvariableop_19_dense_16_kernel:@ /
!assignvariableop_20_dense_16_bias: 5
#assignvariableop_21_dense_17_kernel: @/
!assignvariableop_22_dense_17_bias:@Q
Cassignvariableop_23_transformer_block_4_layer_normalization_8_gamma:@P
Bassignvariableop_24_transformer_block_4_layer_normalization_8_beta:@Q
Cassignvariableop_25_transformer_block_4_layer_normalization_9_gamma:@P
Bassignvariableop_26_transformer_block_4_layer_normalization_9_beta:@#
assignvariableop_27_total: #
assignvariableop_28_count: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: <
*assignvariableop_31_adam_dense_18_kernel_m:@6
(assignvariableop_32_adam_dense_18_bias_m:<
*assignvariableop_33_adam_dense_19_kernel_m:6
(assignvariableop_34_adam_dense_19_bias_m:b
Passignvariableop_35_adam_token_and_position_embedding_4_embedding_8_embeddings_m:P@b
Passignvariableop_36_adam_token_and_position_embedding_4_embedding_9_embeddings_m:@h
Rassignvariableop_37_adam_transformer_block_4_multi_head_attention_4_query_kernel_m:@@b
Passignvariableop_38_adam_transformer_block_4_multi_head_attention_4_query_bias_m:@f
Passignvariableop_39_adam_transformer_block_4_multi_head_attention_4_key_kernel_m:@@`
Nassignvariableop_40_adam_transformer_block_4_multi_head_attention_4_key_bias_m:@h
Rassignvariableop_41_adam_transformer_block_4_multi_head_attention_4_value_kernel_m:@@b
Passignvariableop_42_adam_transformer_block_4_multi_head_attention_4_value_bias_m:@s
]assignvariableop_43_adam_transformer_block_4_multi_head_attention_4_attention_output_kernel_m:@@i
[assignvariableop_44_adam_transformer_block_4_multi_head_attention_4_attention_output_bias_m:@<
*assignvariableop_45_adam_dense_16_kernel_m:@ 6
(assignvariableop_46_adam_dense_16_bias_m: <
*assignvariableop_47_adam_dense_17_kernel_m: @6
(assignvariableop_48_adam_dense_17_bias_m:@X
Jassignvariableop_49_adam_transformer_block_4_layer_normalization_8_gamma_m:@W
Iassignvariableop_50_adam_transformer_block_4_layer_normalization_8_beta_m:@X
Jassignvariableop_51_adam_transformer_block_4_layer_normalization_9_gamma_m:@W
Iassignvariableop_52_adam_transformer_block_4_layer_normalization_9_beta_m:@<
*assignvariableop_53_adam_dense_18_kernel_v:@6
(assignvariableop_54_adam_dense_18_bias_v:<
*assignvariableop_55_adam_dense_19_kernel_v:6
(assignvariableop_56_adam_dense_19_bias_v:b
Passignvariableop_57_adam_token_and_position_embedding_4_embedding_8_embeddings_v:P@b
Passignvariableop_58_adam_token_and_position_embedding_4_embedding_9_embeddings_v:@h
Rassignvariableop_59_adam_transformer_block_4_multi_head_attention_4_query_kernel_v:@@b
Passignvariableop_60_adam_transformer_block_4_multi_head_attention_4_query_bias_v:@f
Passignvariableop_61_adam_transformer_block_4_multi_head_attention_4_key_kernel_v:@@`
Nassignvariableop_62_adam_transformer_block_4_multi_head_attention_4_key_bias_v:@h
Rassignvariableop_63_adam_transformer_block_4_multi_head_attention_4_value_kernel_v:@@b
Passignvariableop_64_adam_transformer_block_4_multi_head_attention_4_value_bias_v:@s
]assignvariableop_65_adam_transformer_block_4_multi_head_attention_4_attention_output_kernel_v:@@i
[assignvariableop_66_adam_transformer_block_4_multi_head_attention_4_attention_output_bias_v:@<
*assignvariableop_67_adam_dense_16_kernel_v:@ 6
(assignvariableop_68_adam_dense_16_bias_v: <
*assignvariableop_69_adam_dense_17_kernel_v: @6
(assignvariableop_70_adam_dense_17_bias_v:@X
Jassignvariableop_71_adam_transformer_block_4_layer_normalization_8_gamma_v:@W
Iassignvariableop_72_adam_transformer_block_4_layer_normalization_8_beta_v:@X
Jassignvariableop_73_adam_transformer_block_4_layer_normalization_9_gamma_v:@W
Iassignvariableop_74_adam_transformer_block_4_layer_normalization_9_beta_v:@
identity_76??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_8?AssignVariableOp_9?$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?#
value?#B?#LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_19_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_19_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpHassignvariableop_9_token_and_position_embedding_4_embedding_8_embeddingsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpIassignvariableop_10_token_and_position_embedding_4_embedding_9_embeddingsIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpKassignvariableop_11_transformer_block_4_multi_head_attention_4_query_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpIassignvariableop_12_transformer_block_4_multi_head_attention_4_query_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpIassignvariableop_13_transformer_block_4_multi_head_attention_4_key_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpGassignvariableop_14_transformer_block_4_multi_head_attention_4_key_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpKassignvariableop_15_transformer_block_4_multi_head_attention_4_value_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpIassignvariableop_16_transformer_block_4_multi_head_attention_4_value_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpVassignvariableop_17_transformer_block_4_multi_head_attention_4_attention_output_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpTassignvariableop_18_transformer_block_4_multi_head_attention_4_attention_output_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_dense_16_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp!assignvariableop_20_dense_16_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp#assignvariableop_21_dense_17_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp!assignvariableop_22_dense_17_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpCassignvariableop_23_transformer_block_4_layer_normalization_8_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_transformer_block_4_layer_normalization_8_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpCassignvariableop_25_transformer_block_4_layer_normalization_9_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpBassignvariableop_26_transformer_block_4_layer_normalization_9_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_18_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_18_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_19_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_19_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpPassignvariableop_35_adam_token_and_position_embedding_4_embedding_8_embeddings_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpPassignvariableop_36_adam_token_and_position_embedding_4_embedding_9_embeddings_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpRassignvariableop_37_adam_transformer_block_4_multi_head_attention_4_query_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpPassignvariableop_38_adam_transformer_block_4_multi_head_attention_4_query_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpPassignvariableop_39_adam_transformer_block_4_multi_head_attention_4_key_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpNassignvariableop_40_adam_transformer_block_4_multi_head_attention_4_key_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpRassignvariableop_41_adam_transformer_block_4_multi_head_attention_4_value_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpPassignvariableop_42_adam_transformer_block_4_multi_head_attention_4_value_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp]assignvariableop_43_adam_transformer_block_4_multi_head_attention_4_attention_output_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp[assignvariableop_44_adam_transformer_block_4_multi_head_attention_4_attention_output_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_16_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_16_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_17_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_17_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOpJassignvariableop_49_adam_transformer_block_4_layer_normalization_8_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOpIassignvariableop_50_adam_transformer_block_4_layer_normalization_8_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOpJassignvariableop_51_adam_transformer_block_4_layer_normalization_9_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOpIassignvariableop_52_adam_transformer_block_4_layer_normalization_9_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_18_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_18_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_19_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_19_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOpPassignvariableop_57_adam_token_and_position_embedding_4_embedding_8_embeddings_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOpPassignvariableop_58_adam_token_and_position_embedding_4_embedding_9_embeddings_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOpRassignvariableop_59_adam_transformer_block_4_multi_head_attention_4_query_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOpPassignvariableop_60_adam_transformer_block_4_multi_head_attention_4_query_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOpPassignvariableop_61_adam_transformer_block_4_multi_head_attention_4_key_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOpNassignvariableop_62_adam_transformer_block_4_multi_head_attention_4_key_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOpRassignvariableop_63_adam_transformer_block_4_multi_head_attention_4_value_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOpPassignvariableop_64_adam_transformer_block_4_multi_head_attention_4_value_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp]assignvariableop_65_adam_transformer_block_4_multi_head_attention_4_attention_output_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp[assignvariableop_66_adam_transformer_block_4_multi_head_attention_4_attention_output_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_dense_16_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_dense_16_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_dense_17_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_dense_17_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOpJassignvariableop_71_adam_transformer_block_4_layer_normalization_8_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOpIassignvariableop_72_adam_transformer_block_4_layer_normalization_8_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOpJassignvariableop_73_adam_transformer_block_4_layer_normalization_9_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOpIassignvariableop_74_adam_transformer_block_4_layer_normalization_9_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_749
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_75f
Identity_76IdentityIdentity_75:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_76?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_76Identity_76:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_81611
dense_16_input 
dense_16_81600:@ 
dense_16_81602:  
dense_17_81605: @
dense_17_81607:@
identity?? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCalldense_16_inputdense_16_81600dense_16_81602*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_16_layer_call_and_return_conditional_losses_814562"
 dense_16/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_81605dense_17_81607*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_814922"
 dense_17/StatefulPartitionedCall?
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????@
(
_user_specified_namedense_16_input
?
?
C__inference_dense_18_layer_call_and_return_conditional_losses_83499

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
ǈ
?
 __inference__wrapped_model_81418
input_5[
Imodel_4_token_and_position_embedding_4_embedding_9_embedding_lookup_81264:@[
Imodel_4_token_and_position_embedding_4_embedding_8_embedding_lookup_81270:P@t
^model_4_transformer_block_4_multi_head_attention_4_query_einsum_einsum_readvariableop_resource:@@f
Tmodel_4_transformer_block_4_multi_head_attention_4_query_add_readvariableop_resource:@r
\model_4_transformer_block_4_multi_head_attention_4_key_einsum_einsum_readvariableop_resource:@@d
Rmodel_4_transformer_block_4_multi_head_attention_4_key_add_readvariableop_resource:@t
^model_4_transformer_block_4_multi_head_attention_4_value_einsum_einsum_readvariableop_resource:@@f
Tmodel_4_transformer_block_4_multi_head_attention_4_value_add_readvariableop_resource:@
imodel_4_transformer_block_4_multi_head_attention_4_attention_output_einsum_einsum_readvariableop_resource:@@m
_model_4_transformer_block_4_multi_head_attention_4_attention_output_add_readvariableop_resource:@e
Wmodel_4_transformer_block_4_layer_normalization_8_batchnorm_mul_readvariableop_resource:@a
Smodel_4_transformer_block_4_layer_normalization_8_batchnorm_readvariableop_resource:@e
Smodel_4_transformer_block_4_sequential_4_dense_16_tensordot_readvariableop_resource:@ _
Qmodel_4_transformer_block_4_sequential_4_dense_16_biasadd_readvariableop_resource: e
Smodel_4_transformer_block_4_sequential_4_dense_17_tensordot_readvariableop_resource: @_
Qmodel_4_transformer_block_4_sequential_4_dense_17_biasadd_readvariableop_resource:@e
Wmodel_4_transformer_block_4_layer_normalization_9_batchnorm_mul_readvariableop_resource:@a
Smodel_4_transformer_block_4_layer_normalization_9_batchnorm_readvariableop_resource:@A
/model_4_dense_18_matmul_readvariableop_resource:@>
0model_4_dense_18_biasadd_readvariableop_resource:A
/model_4_dense_19_matmul_readvariableop_resource:>
0model_4_dense_19_biasadd_readvariableop_resource:
identity??'model_4/dense_18/BiasAdd/ReadVariableOp?&model_4/dense_18/MatMul/ReadVariableOp?'model_4/dense_19/BiasAdd/ReadVariableOp?&model_4/dense_19/MatMul/ReadVariableOp?Cmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookup?Cmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookup?Jmodel_4/transformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp?Nmodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp?Jmodel_4/transformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp?Nmodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp?Vmodel_4/transformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp?`model_4/transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?Imodel_4/transformer_block_4/multi_head_attention_4/key/add/ReadVariableOp?Smodel_4/transformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?Kmodel_4/transformer_block_4/multi_head_attention_4/query/add/ReadVariableOp?Umodel_4/transformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?Kmodel_4/transformer_block_4/multi_head_attention_4/value/add/ReadVariableOp?Umodel_4/transformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?Hmodel_4/transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp?Jmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp?Hmodel_4/transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp?Jmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp?
,model_4/token_and_position_embedding_4/ShapeShapeinput_5*
T0*
_output_shapes
:2.
,model_4/token_and_position_embedding_4/Shape?
:model_4/token_and_position_embedding_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2<
:model_4/token_and_position_embedding_4/strided_slice/stack?
<model_4/token_and_position_embedding_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2>
<model_4/token_and_position_embedding_4/strided_slice/stack_1?
<model_4/token_and_position_embedding_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model_4/token_and_position_embedding_4/strided_slice/stack_2?
4model_4/token_and_position_embedding_4/strided_sliceStridedSlice5model_4/token_and_position_embedding_4/Shape:output:0Cmodel_4/token_and_position_embedding_4/strided_slice/stack:output:0Emodel_4/token_and_position_embedding_4/strided_slice/stack_1:output:0Emodel_4/token_and_position_embedding_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4model_4/token_and_position_embedding_4/strided_slice?
2model_4/token_and_position_embedding_4/range/startConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_4/token_and_position_embedding_4/range/start?
2model_4/token_and_position_embedding_4/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :24
2model_4/token_and_position_embedding_4/range/delta?
,model_4/token_and_position_embedding_4/rangeRange;model_4/token_and_position_embedding_4/range/start:output:0=model_4/token_and_position_embedding_4/strided_slice:output:0;model_4/token_and_position_embedding_4/range/delta:output:0*#
_output_shapes
:?????????2.
,model_4/token_and_position_embedding_4/range?
Cmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookupResourceGatherImodel_4_token_and_position_embedding_4_embedding_9_embedding_lookup_812645model_4/token_and_position_embedding_4/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*\
_classR
PNloc:@model_4/token_and_position_embedding_4/embedding_9/embedding_lookup/81264*'
_output_shapes
:?????????@*
dtype02E
Cmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookup?
Lmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookup/IdentityIdentityLmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*\
_classR
PNloc:@model_4/token_and_position_embedding_4/embedding_9/embedding_lookup/81264*'
_output_shapes
:?????????@2N
Lmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookup/Identity?
Nmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookup/Identity_1IdentityUmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@2P
Nmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookup/Identity_1?
7model_4/token_and_position_embedding_4/embedding_8/CastCastinput_5*

DstT0*

SrcT0*'
_output_shapes
:?????????29
7model_4/token_and_position_embedding_4/embedding_8/Cast?
Cmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookupResourceGatherImodel_4_token_and_position_embedding_4_embedding_8_embedding_lookup_81270;model_4/token_and_position_embedding_4/embedding_8/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*\
_classR
PNloc:@model_4/token_and_position_embedding_4/embedding_8/embedding_lookup/81270*+
_output_shapes
:?????????@*
dtype02E
Cmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookup?
Lmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookup/IdentityIdentityLmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*\
_classR
PNloc:@model_4/token_and_position_embedding_4/embedding_8/embedding_lookup/81270*+
_output_shapes
:?????????@2N
Lmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookup/Identity?
Nmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookup/Identity_1IdentityUmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@2P
Nmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookup/Identity_1?
*model_4/token_and_position_embedding_4/addAddV2Wmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookup/Identity_1:output:0Wmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:?????????@2,
*model_4/token_and_position_embedding_4/add?
Umodel_4/transformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOpReadVariableOp^model_4_transformer_block_4_multi_head_attention_4_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02W
Umodel_4/transformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?
Fmodel_4/transformer_block_4/multi_head_attention_4/query/einsum/EinsumEinsum.model_4/token_and_position_embedding_4/add:z:0]model_4/transformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2H
Fmodel_4/transformer_block_4/multi_head_attention_4/query/einsum/Einsum?
Kmodel_4/transformer_block_4/multi_head_attention_4/query/add/ReadVariableOpReadVariableOpTmodel_4_transformer_block_4_multi_head_attention_4_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02M
Kmodel_4/transformer_block_4/multi_head_attention_4/query/add/ReadVariableOp?
<model_4/transformer_block_4/multi_head_attention_4/query/addAddV2Omodel_4/transformer_block_4/multi_head_attention_4/query/einsum/Einsum:output:0Smodel_4/transformer_block_4/multi_head_attention_4/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2>
<model_4/transformer_block_4/multi_head_attention_4/query/add?
Smodel_4/transformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOpReadVariableOp\model_4_transformer_block_4_multi_head_attention_4_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02U
Smodel_4/transformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?
Dmodel_4/transformer_block_4/multi_head_attention_4/key/einsum/EinsumEinsum.model_4/token_and_position_embedding_4/add:z:0[model_4/transformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2F
Dmodel_4/transformer_block_4/multi_head_attention_4/key/einsum/Einsum?
Imodel_4/transformer_block_4/multi_head_attention_4/key/add/ReadVariableOpReadVariableOpRmodel_4_transformer_block_4_multi_head_attention_4_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02K
Imodel_4/transformer_block_4/multi_head_attention_4/key/add/ReadVariableOp?
:model_4/transformer_block_4/multi_head_attention_4/key/addAddV2Mmodel_4/transformer_block_4/multi_head_attention_4/key/einsum/Einsum:output:0Qmodel_4/transformer_block_4/multi_head_attention_4/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2<
:model_4/transformer_block_4/multi_head_attention_4/key/add?
Umodel_4/transformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpReadVariableOp^model_4_transformer_block_4_multi_head_attention_4_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02W
Umodel_4/transformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?
Fmodel_4/transformer_block_4/multi_head_attention_4/value/einsum/EinsumEinsum.model_4/token_and_position_embedding_4/add:z:0]model_4/transformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2H
Fmodel_4/transformer_block_4/multi_head_attention_4/value/einsum/Einsum?
Kmodel_4/transformer_block_4/multi_head_attention_4/value/add/ReadVariableOpReadVariableOpTmodel_4_transformer_block_4_multi_head_attention_4_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02M
Kmodel_4/transformer_block_4/multi_head_attention_4/value/add/ReadVariableOp?
<model_4/transformer_block_4/multi_head_attention_4/value/addAddV2Omodel_4/transformer_block_4/multi_head_attention_4/value/einsum/Einsum:output:0Smodel_4/transformer_block_4/multi_head_attention_4/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2>
<model_4/transformer_block_4/multi_head_attention_4/value/add?
8model_4/transformer_block_4/multi_head_attention_4/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2:
8model_4/transformer_block_4/multi_head_attention_4/Mul/y?
6model_4/transformer_block_4/multi_head_attention_4/MulMul@model_4/transformer_block_4/multi_head_attention_4/query/add:z:0Amodel_4/transformer_block_4/multi_head_attention_4/Mul/y:output:0*
T0*/
_output_shapes
:?????????@28
6model_4/transformer_block_4/multi_head_attention_4/Mul?
@model_4/transformer_block_4/multi_head_attention_4/einsum/EinsumEinsum>model_4/transformer_block_4/multi_head_attention_4/key/add:z:0:model_4/transformer_block_4/multi_head_attention_4/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe2B
@model_4/transformer_block_4/multi_head_attention_4/einsum/Einsum?
Bmodel_4/transformer_block_4/multi_head_attention_4/softmax/SoftmaxSoftmaxImodel_4/transformer_block_4/multi_head_attention_4/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????2D
Bmodel_4/transformer_block_4/multi_head_attention_4/softmax/Softmax?
Cmodel_4/transformer_block_4/multi_head_attention_4/dropout/IdentityIdentityLmodel_4/transformer_block_4/multi_head_attention_4/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????2E
Cmodel_4/transformer_block_4/multi_head_attention_4/dropout/Identity?
Bmodel_4/transformer_block_4/multi_head_attention_4/einsum_1/EinsumEinsumLmodel_4/transformer_block_4/multi_head_attention_4/dropout/Identity:output:0@model_4/transformer_block_4/multi_head_attention_4/value/add:z:0*
N*
T0*/
_output_shapes
:?????????@*
equationacbe,aecd->abcd2D
Bmodel_4/transformer_block_4/multi_head_attention_4/einsum_1/Einsum?
`model_4/transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpimodel_4_transformer_block_4_multi_head_attention_4_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02b
`model_4/transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?
Qmodel_4/transformer_block_4/multi_head_attention_4/attention_output/einsum/EinsumEinsumKmodel_4/transformer_block_4/multi_head_attention_4/einsum_1/Einsum:output:0hmodel_4/transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????@*
equationabcd,cde->abe2S
Qmodel_4/transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum?
Vmodel_4/transformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOpReadVariableOp_model_4_transformer_block_4_multi_head_attention_4_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02X
Vmodel_4/transformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp?
Gmodel_4/transformer_block_4/multi_head_attention_4/attention_output/addAddV2Zmodel_4/transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum:output:0^model_4/transformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2I
Gmodel_4/transformer_block_4/multi_head_attention_4/attention_output/add?
/model_4/transformer_block_4/dropout_16/IdentityIdentityKmodel_4/transformer_block_4/multi_head_attention_4/attention_output/add:z:0*
T0*+
_output_shapes
:?????????@21
/model_4/transformer_block_4/dropout_16/Identity?
model_4/transformer_block_4/addAddV2.model_4/token_and_position_embedding_4/add:z:08model_4/transformer_block_4/dropout_16/Identity:output:0*
T0*+
_output_shapes
:?????????@2!
model_4/transformer_block_4/add?
Pmodel_4/transformer_block_4/layer_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Pmodel_4/transformer_block_4/layer_normalization_8/moments/mean/reduction_indices?
>model_4/transformer_block_4/layer_normalization_8/moments/meanMean#model_4/transformer_block_4/add:z:0Ymodel_4/transformer_block_4/layer_normalization_8/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2@
>model_4/transformer_block_4/layer_normalization_8/moments/mean?
Fmodel_4/transformer_block_4/layer_normalization_8/moments/StopGradientStopGradientGmodel_4/transformer_block_4/layer_normalization_8/moments/mean:output:0*
T0*+
_output_shapes
:?????????2H
Fmodel_4/transformer_block_4/layer_normalization_8/moments/StopGradient?
Kmodel_4/transformer_block_4/layer_normalization_8/moments/SquaredDifferenceSquaredDifference#model_4/transformer_block_4/add:z:0Omodel_4/transformer_block_4/layer_normalization_8/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@2M
Kmodel_4/transformer_block_4/layer_normalization_8/moments/SquaredDifference?
Tmodel_4/transformer_block_4/layer_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2V
Tmodel_4/transformer_block_4/layer_normalization_8/moments/variance/reduction_indices?
Bmodel_4/transformer_block_4/layer_normalization_8/moments/varianceMeanOmodel_4/transformer_block_4/layer_normalization_8/moments/SquaredDifference:z:0]model_4/transformer_block_4/layer_normalization_8/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2D
Bmodel_4/transformer_block_4/layer_normalization_8/moments/variance?
Amodel_4/transformer_block_4/layer_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52C
Amodel_4/transformer_block_4/layer_normalization_8/batchnorm/add/y?
?model_4/transformer_block_4/layer_normalization_8/batchnorm/addAddV2Kmodel_4/transformer_block_4/layer_normalization_8/moments/variance:output:0Jmodel_4/transformer_block_4/layer_normalization_8/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2A
?model_4/transformer_block_4/layer_normalization_8/batchnorm/add?
Amodel_4/transformer_block_4/layer_normalization_8/batchnorm/RsqrtRsqrtCmodel_4/transformer_block_4/layer_normalization_8/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2C
Amodel_4/transformer_block_4/layer_normalization_8/batchnorm/Rsqrt?
Nmodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpWmodel_4_transformer_block_4_layer_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02P
Nmodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp?
?model_4/transformer_block_4/layer_normalization_8/batchnorm/mulMulEmodel_4/transformer_block_4/layer_normalization_8/batchnorm/Rsqrt:y:0Vmodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2A
?model_4/transformer_block_4/layer_normalization_8/batchnorm/mul?
Amodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul_1Mul#model_4/transformer_block_4/add:z:0Cmodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2C
Amodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul_1?
Amodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul_2MulGmodel_4/transformer_block_4/layer_normalization_8/moments/mean:output:0Cmodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2C
Amodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul_2?
Jmodel_4/transformer_block_4/layer_normalization_8/batchnorm/ReadVariableOpReadVariableOpSmodel_4_transformer_block_4_layer_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jmodel_4/transformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp?
?model_4/transformer_block_4/layer_normalization_8/batchnorm/subSubRmodel_4/transformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp:value:0Emodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@2A
?model_4/transformer_block_4/layer_normalization_8/batchnorm/sub?
Amodel_4/transformer_block_4/layer_normalization_8/batchnorm/add_1AddV2Emodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul_1:z:0Cmodel_4/transformer_block_4/layer_normalization_8/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2C
Amodel_4/transformer_block_4/layer_normalization_8/batchnorm/add_1?
Jmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOpReadVariableOpSmodel_4_transformer_block_4_sequential_4_dense_16_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02L
Jmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp?
@model_4/transformer_block_4/sequential_4/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2B
@model_4/transformer_block_4/sequential_4/dense_16/Tensordot/axes?
@model_4/transformer_block_4/sequential_4/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@model_4/transformer_block_4/sequential_4/dense_16/Tensordot/free?
Amodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/ShapeShapeEmodel_4/transformer_block_4/layer_normalization_8/batchnorm/add_1:z:0*
T0*
_output_shapes
:2C
Amodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Shape?
Imodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2/axis?
Dmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2GatherV2Jmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Shape:output:0Imodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/free:output:0Rmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2F
Dmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2?
Kmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2M
Kmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1/axis?
Fmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1GatherV2Jmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Shape:output:0Imodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/axes:output:0Tmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2H
Fmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1?
Amodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2C
Amodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Const?
@model_4/transformer_block_4/sequential_4/dense_16/Tensordot/ProdProdMmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2:output:0Jmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2B
@model_4/transformer_block_4/sequential_4/dense_16/Tensordot/Prod?
Cmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2E
Cmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Const_1?
Bmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Prod_1ProdOmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1:output:0Lmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2D
Bmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Prod_1?
Gmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat/axis?
Bmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concatConcatV2Imodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/free:output:0Imodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/axes:output:0Pmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2D
Bmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat?
Amodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/stackPackImodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Prod:output:0Kmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2C
Amodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/stack?
Emodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/transpose	TransposeEmodel_4/transformer_block_4/layer_normalization_8/batchnorm/add_1:z:0Kmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2G
Emodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/transpose?
Cmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/ReshapeReshapeImodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/transpose:y:0Jmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2E
Cmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Reshape?
Bmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/MatMulMatMulLmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Reshape:output:0Rmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2D
Bmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/MatMul?
Cmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2E
Cmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Const_2?
Imodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat_1/axis?
Dmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat_1ConcatV2Mmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2:output:0Lmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/Const_2:output:0Rmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2F
Dmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat_1?
;model_4/transformer_block_4/sequential_4/dense_16/TensordotReshapeLmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/MatMul:product:0Mmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2=
;model_4/transformer_block_4/sequential_4/dense_16/Tensordot?
Hmodel_4/transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOpReadVariableOpQmodel_4_transformer_block_4_sequential_4_dense_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02J
Hmodel_4/transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp?
9model_4/transformer_block_4/sequential_4/dense_16/BiasAddBiasAddDmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot:output:0Pmodel_4/transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2;
9model_4/transformer_block_4/sequential_4/dense_16/BiasAdd?
6model_4/transformer_block_4/sequential_4/dense_16/ReluReluBmodel_4/transformer_block_4/sequential_4/dense_16/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 28
6model_4/transformer_block_4/sequential_4/dense_16/Relu?
Jmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOpReadVariableOpSmodel_4_transformer_block_4_sequential_4_dense_17_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02L
Jmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp?
@model_4/transformer_block_4/sequential_4/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2B
@model_4/transformer_block_4/sequential_4/dense_17/Tensordot/axes?
@model_4/transformer_block_4/sequential_4/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2B
@model_4/transformer_block_4/sequential_4/dense_17/Tensordot/free?
Amodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/ShapeShapeDmodel_4/transformer_block_4/sequential_4/dense_16/Relu:activations:0*
T0*
_output_shapes
:2C
Amodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Shape?
Imodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2/axis?
Dmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2GatherV2Jmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Shape:output:0Imodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/free:output:0Rmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2F
Dmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2?
Kmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2M
Kmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1/axis?
Fmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1GatherV2Jmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Shape:output:0Imodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/axes:output:0Tmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2H
Fmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1?
Amodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2C
Amodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Const?
@model_4/transformer_block_4/sequential_4/dense_17/Tensordot/ProdProdMmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2:output:0Jmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2B
@model_4/transformer_block_4/sequential_4/dense_17/Tensordot/Prod?
Cmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2E
Cmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Const_1?
Bmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Prod_1ProdOmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1:output:0Lmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2D
Bmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Prod_1?
Gmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat/axis?
Bmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concatConcatV2Imodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/free:output:0Imodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/axes:output:0Pmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2D
Bmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat?
Amodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/stackPackImodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Prod:output:0Kmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2C
Amodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/stack?
Emodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/transpose	TransposeDmodel_4/transformer_block_4/sequential_4/dense_16/Relu:activations:0Kmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2G
Emodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/transpose?
Cmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/ReshapeReshapeImodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/transpose:y:0Jmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2E
Cmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Reshape?
Bmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/MatMulMatMulLmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Reshape:output:0Rmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2D
Bmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/MatMul?
Cmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2E
Cmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Const_2?
Imodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat_1/axis?
Dmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat_1ConcatV2Mmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2:output:0Lmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/Const_2:output:0Rmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2F
Dmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat_1?
;model_4/transformer_block_4/sequential_4/dense_17/TensordotReshapeLmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/MatMul:product:0Mmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2=
;model_4/transformer_block_4/sequential_4/dense_17/Tensordot?
Hmodel_4/transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOpReadVariableOpQmodel_4_transformer_block_4_sequential_4_dense_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02J
Hmodel_4/transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp?
9model_4/transformer_block_4/sequential_4/dense_17/BiasAddBiasAddDmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot:output:0Pmodel_4/transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2;
9model_4/transformer_block_4/sequential_4/dense_17/BiasAdd?
/model_4/transformer_block_4/dropout_17/IdentityIdentityBmodel_4/transformer_block_4/sequential_4/dense_17/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@21
/model_4/transformer_block_4/dropout_17/Identity?
!model_4/transformer_block_4/add_1AddV2Emodel_4/transformer_block_4/layer_normalization_8/batchnorm/add_1:z:08model_4/transformer_block_4/dropout_17/Identity:output:0*
T0*+
_output_shapes
:?????????@2#
!model_4/transformer_block_4/add_1?
Pmodel_4/transformer_block_4/layer_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Pmodel_4/transformer_block_4/layer_normalization_9/moments/mean/reduction_indices?
>model_4/transformer_block_4/layer_normalization_9/moments/meanMean%model_4/transformer_block_4/add_1:z:0Ymodel_4/transformer_block_4/layer_normalization_9/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2@
>model_4/transformer_block_4/layer_normalization_9/moments/mean?
Fmodel_4/transformer_block_4/layer_normalization_9/moments/StopGradientStopGradientGmodel_4/transformer_block_4/layer_normalization_9/moments/mean:output:0*
T0*+
_output_shapes
:?????????2H
Fmodel_4/transformer_block_4/layer_normalization_9/moments/StopGradient?
Kmodel_4/transformer_block_4/layer_normalization_9/moments/SquaredDifferenceSquaredDifference%model_4/transformer_block_4/add_1:z:0Omodel_4/transformer_block_4/layer_normalization_9/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@2M
Kmodel_4/transformer_block_4/layer_normalization_9/moments/SquaredDifference?
Tmodel_4/transformer_block_4/layer_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2V
Tmodel_4/transformer_block_4/layer_normalization_9/moments/variance/reduction_indices?
Bmodel_4/transformer_block_4/layer_normalization_9/moments/varianceMeanOmodel_4/transformer_block_4/layer_normalization_9/moments/SquaredDifference:z:0]model_4/transformer_block_4/layer_normalization_9/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2D
Bmodel_4/transformer_block_4/layer_normalization_9/moments/variance?
Amodel_4/transformer_block_4/layer_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52C
Amodel_4/transformer_block_4/layer_normalization_9/batchnorm/add/y?
?model_4/transformer_block_4/layer_normalization_9/batchnorm/addAddV2Kmodel_4/transformer_block_4/layer_normalization_9/moments/variance:output:0Jmodel_4/transformer_block_4/layer_normalization_9/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2A
?model_4/transformer_block_4/layer_normalization_9/batchnorm/add?
Amodel_4/transformer_block_4/layer_normalization_9/batchnorm/RsqrtRsqrtCmodel_4/transformer_block_4/layer_normalization_9/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2C
Amodel_4/transformer_block_4/layer_normalization_9/batchnorm/Rsqrt?
Nmodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpWmodel_4_transformer_block_4_layer_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02P
Nmodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp?
?model_4/transformer_block_4/layer_normalization_9/batchnorm/mulMulEmodel_4/transformer_block_4/layer_normalization_9/batchnorm/Rsqrt:y:0Vmodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2A
?model_4/transformer_block_4/layer_normalization_9/batchnorm/mul?
Amodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul_1Mul%model_4/transformer_block_4/add_1:z:0Cmodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2C
Amodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul_1?
Amodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul_2MulGmodel_4/transformer_block_4/layer_normalization_9/moments/mean:output:0Cmodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2C
Amodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul_2?
Jmodel_4/transformer_block_4/layer_normalization_9/batchnorm/ReadVariableOpReadVariableOpSmodel_4_transformer_block_4_layer_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jmodel_4/transformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp?
?model_4/transformer_block_4/layer_normalization_9/batchnorm/subSubRmodel_4/transformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp:value:0Emodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@2A
?model_4/transformer_block_4/layer_normalization_9/batchnorm/sub?
Amodel_4/transformer_block_4/layer_normalization_9/batchnorm/add_1AddV2Emodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul_1:z:0Cmodel_4/transformer_block_4/layer_normalization_9/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2C
Amodel_4/transformer_block_4/layer_normalization_9/batchnorm/add_1?
9model_4/global_average_pooling1d_4/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2;
9model_4/global_average_pooling1d_4/Mean/reduction_indices?
'model_4/global_average_pooling1d_4/MeanMeanEmodel_4/transformer_block_4/layer_normalization_9/batchnorm/add_1:z:0Bmodel_4/global_average_pooling1d_4/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2)
'model_4/global_average_pooling1d_4/Mean?
model_4/dropout_18/IdentityIdentity0model_4/global_average_pooling1d_4/Mean:output:0*
T0*'
_output_shapes
:?????????@2
model_4/dropout_18/Identity?
&model_4/dense_18/MatMul/ReadVariableOpReadVariableOp/model_4_dense_18_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02(
&model_4/dense_18/MatMul/ReadVariableOp?
model_4/dense_18/MatMulMatMul$model_4/dropout_18/Identity:output:0.model_4/dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_4/dense_18/MatMul?
'model_4/dense_18/BiasAdd/ReadVariableOpReadVariableOp0model_4_dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_4/dense_18/BiasAdd/ReadVariableOp?
model_4/dense_18/BiasAddBiasAdd!model_4/dense_18/MatMul:product:0/model_4/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_4/dense_18/BiasAdd?
model_4/dense_18/ReluRelu!model_4/dense_18/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_4/dense_18/Relu?
model_4/dropout_19/IdentityIdentity#model_4/dense_18/Relu:activations:0*
T0*'
_output_shapes
:?????????2
model_4/dropout_19/Identity?
&model_4/dense_19/MatMul/ReadVariableOpReadVariableOp/model_4_dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&model_4/dense_19/MatMul/ReadVariableOp?
model_4/dense_19/MatMulMatMul$model_4/dropout_19/Identity:output:0.model_4/dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_4/dense_19/MatMul?
'model_4/dense_19/BiasAdd/ReadVariableOpReadVariableOp0model_4_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_4/dense_19/BiasAdd/ReadVariableOp?
model_4/dense_19/BiasAddBiasAdd!model_4/dense_19/MatMul:product:0/model_4/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_4/dense_19/BiasAdd?
model_4/dense_19/SoftmaxSoftmax!model_4/dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_4/dense_19/Softmax}
IdentityIdentity"model_4/dense_19/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp(^model_4/dense_18/BiasAdd/ReadVariableOp'^model_4/dense_18/MatMul/ReadVariableOp(^model_4/dense_19/BiasAdd/ReadVariableOp'^model_4/dense_19/MatMul/ReadVariableOpD^model_4/token_and_position_embedding_4/embedding_8/embedding_lookupD^model_4/token_and_position_embedding_4/embedding_9/embedding_lookupK^model_4/transformer_block_4/layer_normalization_8/batchnorm/ReadVariableOpO^model_4/transformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOpK^model_4/transformer_block_4/layer_normalization_9/batchnorm/ReadVariableOpO^model_4/transformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOpW^model_4/transformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOpa^model_4/transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpJ^model_4/transformer_block_4/multi_head_attention_4/key/add/ReadVariableOpT^model_4/transformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOpL^model_4/transformer_block_4/multi_head_attention_4/query/add/ReadVariableOpV^model_4/transformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOpL^model_4/transformer_block_4/multi_head_attention_4/value/add/ReadVariableOpV^model_4/transformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpI^model_4/transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOpK^model_4/transformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOpI^model_4/transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOpK^model_4/transformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2R
'model_4/dense_18/BiasAdd/ReadVariableOp'model_4/dense_18/BiasAdd/ReadVariableOp2P
&model_4/dense_18/MatMul/ReadVariableOp&model_4/dense_18/MatMul/ReadVariableOp2R
'model_4/dense_19/BiasAdd/ReadVariableOp'model_4/dense_19/BiasAdd/ReadVariableOp2P
&model_4/dense_19/MatMul/ReadVariableOp&model_4/dense_19/MatMul/ReadVariableOp2?
Cmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookupCmodel_4/token_and_position_embedding_4/embedding_8/embedding_lookup2?
Cmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookupCmodel_4/token_and_position_embedding_4/embedding_9/embedding_lookup2?
Jmodel_4/transformer_block_4/layer_normalization_8/batchnorm/ReadVariableOpJmodel_4/transformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp2?
Nmodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOpNmodel_4/transformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp2?
Jmodel_4/transformer_block_4/layer_normalization_9/batchnorm/ReadVariableOpJmodel_4/transformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp2?
Nmodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOpNmodel_4/transformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp2?
Vmodel_4/transformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOpVmodel_4/transformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp2?
`model_4/transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp`model_4/transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp2?
Imodel_4/transformer_block_4/multi_head_attention_4/key/add/ReadVariableOpImodel_4/transformer_block_4/multi_head_attention_4/key/add/ReadVariableOp2?
Smodel_4/transformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOpSmodel_4/transformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp2?
Kmodel_4/transformer_block_4/multi_head_attention_4/query/add/ReadVariableOpKmodel_4/transformer_block_4/multi_head_attention_4/query/add/ReadVariableOp2?
Umodel_4/transformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOpUmodel_4/transformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp2?
Kmodel_4/transformer_block_4/multi_head_attention_4/value/add/ReadVariableOpKmodel_4/transformer_block_4/multi_head_attention_4/value/add/ReadVariableOp2?
Umodel_4/transformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpUmodel_4/transformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp2?
Hmodel_4/transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOpHmodel_4/transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp2?
Jmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOpJmodel_4/transformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp2?
Hmodel_4/transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOpHmodel_4/transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp2?
Jmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOpJmodel_4/transformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_81559

inputs 
dense_16_81548:@ 
dense_16_81550:  
dense_17_81553: @
dense_17_81555:@
identity?? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCallinputsdense_16_81548dense_16_81550*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_16_layer_call_and_return_conditional_losses_814562"
 dense_16/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_81553dense_17_81555*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_814922"
 dense_17/StatefulPartitionedCall?
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
B__inference_model_4_layer_call_and_return_conditional_losses_82864

inputsS
Atoken_and_position_embedding_4_embedding_9_embedding_lookup_82710:@S
Atoken_and_position_embedding_4_embedding_8_embedding_lookup_82716:P@l
Vtransformer_block_4_multi_head_attention_4_query_einsum_einsum_readvariableop_resource:@@^
Ltransformer_block_4_multi_head_attention_4_query_add_readvariableop_resource:@j
Ttransformer_block_4_multi_head_attention_4_key_einsum_einsum_readvariableop_resource:@@\
Jtransformer_block_4_multi_head_attention_4_key_add_readvariableop_resource:@l
Vtransformer_block_4_multi_head_attention_4_value_einsum_einsum_readvariableop_resource:@@^
Ltransformer_block_4_multi_head_attention_4_value_add_readvariableop_resource:@w
atransformer_block_4_multi_head_attention_4_attention_output_einsum_einsum_readvariableop_resource:@@e
Wtransformer_block_4_multi_head_attention_4_attention_output_add_readvariableop_resource:@]
Otransformer_block_4_layer_normalization_8_batchnorm_mul_readvariableop_resource:@Y
Ktransformer_block_4_layer_normalization_8_batchnorm_readvariableop_resource:@]
Ktransformer_block_4_sequential_4_dense_16_tensordot_readvariableop_resource:@ W
Itransformer_block_4_sequential_4_dense_16_biasadd_readvariableop_resource: ]
Ktransformer_block_4_sequential_4_dense_17_tensordot_readvariableop_resource: @W
Itransformer_block_4_sequential_4_dense_17_biasadd_readvariableop_resource:@]
Otransformer_block_4_layer_normalization_9_batchnorm_mul_readvariableop_resource:@Y
Ktransformer_block_4_layer_normalization_9_batchnorm_readvariableop_resource:@9
'dense_18_matmul_readvariableop_resource:@6
(dense_18_biasadd_readvariableop_resource:9
'dense_19_matmul_readvariableop_resource:6
(dense_19_biasadd_readvariableop_resource:
identity??dense_18/BiasAdd/ReadVariableOp?dense_18/MatMul/ReadVariableOp?dense_19/BiasAdd/ReadVariableOp?dense_19/MatMul/ReadVariableOp?;token_and_position_embedding_4/embedding_8/embedding_lookup?;token_and_position_embedding_4/embedding_9/embedding_lookup?Btransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp?Ftransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp?Btransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp?Ftransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp?Ntransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp?Xtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?Atransformer_block_4/multi_head_attention_4/key/add/ReadVariableOp?Ktransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?Ctransformer_block_4/multi_head_attention_4/query/add/ReadVariableOp?Mtransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?Ctransformer_block_4/multi_head_attention_4/value/add/ReadVariableOp?Mtransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?@transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp?Btransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp?@transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp?Btransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp?
$token_and_position_embedding_4/ShapeShapeinputs*
T0*
_output_shapes
:2&
$token_and_position_embedding_4/Shape?
2token_and_position_embedding_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????24
2token_and_position_embedding_4/strided_slice/stack?
4token_and_position_embedding_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 26
4token_and_position_embedding_4/strided_slice/stack_1?
4token_and_position_embedding_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4token_and_position_embedding_4/strided_slice/stack_2?
,token_and_position_embedding_4/strided_sliceStridedSlice-token_and_position_embedding_4/Shape:output:0;token_and_position_embedding_4/strided_slice/stack:output:0=token_and_position_embedding_4/strided_slice/stack_1:output:0=token_and_position_embedding_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,token_and_position_embedding_4/strided_slice?
*token_and_position_embedding_4/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*token_and_position_embedding_4/range/start?
*token_and_position_embedding_4/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*token_and_position_embedding_4/range/delta?
$token_and_position_embedding_4/rangeRange3token_and_position_embedding_4/range/start:output:05token_and_position_embedding_4/strided_slice:output:03token_and_position_embedding_4/range/delta:output:0*#
_output_shapes
:?????????2&
$token_and_position_embedding_4/range?
;token_and_position_embedding_4/embedding_9/embedding_lookupResourceGatherAtoken_and_position_embedding_4_embedding_9_embedding_lookup_82710-token_and_position_embedding_4/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_4/embedding_9/embedding_lookup/82710*'
_output_shapes
:?????????@*
dtype02=
;token_and_position_embedding_4/embedding_9/embedding_lookup?
Dtoken_and_position_embedding_4/embedding_9/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_4/embedding_9/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_4/embedding_9/embedding_lookup/82710*'
_output_shapes
:?????????@2F
Dtoken_and_position_embedding_4/embedding_9/embedding_lookup/Identity?
Ftoken_and_position_embedding_4/embedding_9/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_4/embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@2H
Ftoken_and_position_embedding_4/embedding_9/embedding_lookup/Identity_1?
/token_and_position_embedding_4/embedding_8/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????21
/token_and_position_embedding_4/embedding_8/Cast?
;token_and_position_embedding_4/embedding_8/embedding_lookupResourceGatherAtoken_and_position_embedding_4_embedding_8_embedding_lookup_827163token_and_position_embedding_4/embedding_8/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*T
_classJ
HFloc:@token_and_position_embedding_4/embedding_8/embedding_lookup/82716*+
_output_shapes
:?????????@*
dtype02=
;token_and_position_embedding_4/embedding_8/embedding_lookup?
Dtoken_and_position_embedding_4/embedding_8/embedding_lookup/IdentityIdentityDtoken_and_position_embedding_4/embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*T
_classJ
HFloc:@token_and_position_embedding_4/embedding_8/embedding_lookup/82716*+
_output_shapes
:?????????@2F
Dtoken_and_position_embedding_4/embedding_8/embedding_lookup/Identity?
Ftoken_and_position_embedding_4/embedding_8/embedding_lookup/Identity_1IdentityMtoken_and_position_embedding_4/embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@2H
Ftoken_and_position_embedding_4/embedding_8/embedding_lookup/Identity_1?
"token_and_position_embedding_4/addAddV2Otoken_and_position_embedding_4/embedding_8/embedding_lookup/Identity_1:output:0Otoken_and_position_embedding_4/embedding_9/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:?????????@2$
"token_and_position_embedding_4/add?
Mtransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_4_multi_head_attention_4_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02O
Mtransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?
>transformer_block_4/multi_head_attention_4/query/einsum/EinsumEinsum&token_and_position_embedding_4/add:z:0Utransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2@
>transformer_block_4/multi_head_attention_4/query/einsum/Einsum?
Ctransformer_block_4/multi_head_attention_4/query/add/ReadVariableOpReadVariableOpLtransformer_block_4_multi_head_attention_4_query_add_readvariableop_resource*
_output_shapes

:@*
dtype02E
Ctransformer_block_4/multi_head_attention_4/query/add/ReadVariableOp?
4transformer_block_4/multi_head_attention_4/query/addAddV2Gtransformer_block_4/multi_head_attention_4/query/einsum/Einsum:output:0Ktransformer_block_4/multi_head_attention_4/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@26
4transformer_block_4/multi_head_attention_4/query/add?
Ktransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_4_multi_head_attention_4_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02M
Ktransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?
<transformer_block_4/multi_head_attention_4/key/einsum/EinsumEinsum&token_and_position_embedding_4/add:z:0Stransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2>
<transformer_block_4/multi_head_attention_4/key/einsum/Einsum?
Atransformer_block_4/multi_head_attention_4/key/add/ReadVariableOpReadVariableOpJtransformer_block_4_multi_head_attention_4_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02C
Atransformer_block_4/multi_head_attention_4/key/add/ReadVariableOp?
2transformer_block_4/multi_head_attention_4/key/addAddV2Etransformer_block_4/multi_head_attention_4/key/einsum/Einsum:output:0Itransformer_block_4/multi_head_attention_4/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@24
2transformer_block_4/multi_head_attention_4/key/add?
Mtransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_4_multi_head_attention_4_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02O
Mtransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?
>transformer_block_4/multi_head_attention_4/value/einsum/EinsumEinsum&token_and_position_embedding_4/add:z:0Utransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2@
>transformer_block_4/multi_head_attention_4/value/einsum/Einsum?
Ctransformer_block_4/multi_head_attention_4/value/add/ReadVariableOpReadVariableOpLtransformer_block_4_multi_head_attention_4_value_add_readvariableop_resource*
_output_shapes

:@*
dtype02E
Ctransformer_block_4/multi_head_attention_4/value/add/ReadVariableOp?
4transformer_block_4/multi_head_attention_4/value/addAddV2Gtransformer_block_4/multi_head_attention_4/value/einsum/Einsum:output:0Ktransformer_block_4/multi_head_attention_4/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@26
4transformer_block_4/multi_head_attention_4/value/add?
0transformer_block_4/multi_head_attention_4/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >22
0transformer_block_4/multi_head_attention_4/Mul/y?
.transformer_block_4/multi_head_attention_4/MulMul8transformer_block_4/multi_head_attention_4/query/add:z:09transformer_block_4/multi_head_attention_4/Mul/y:output:0*
T0*/
_output_shapes
:?????????@20
.transformer_block_4/multi_head_attention_4/Mul?
8transformer_block_4/multi_head_attention_4/einsum/EinsumEinsum6transformer_block_4/multi_head_attention_4/key/add:z:02transformer_block_4/multi_head_attention_4/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe2:
8transformer_block_4/multi_head_attention_4/einsum/Einsum?
:transformer_block_4/multi_head_attention_4/softmax/SoftmaxSoftmaxAtransformer_block_4/multi_head_attention_4/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????2<
:transformer_block_4/multi_head_attention_4/softmax/Softmax?
;transformer_block_4/multi_head_attention_4/dropout/IdentityIdentityDtransformer_block_4/multi_head_attention_4/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????2=
;transformer_block_4/multi_head_attention_4/dropout/Identity?
:transformer_block_4/multi_head_attention_4/einsum_1/EinsumEinsumDtransformer_block_4/multi_head_attention_4/dropout/Identity:output:08transformer_block_4/multi_head_attention_4/value/add:z:0*
N*
T0*/
_output_shapes
:?????????@*
equationacbe,aecd->abcd2<
:transformer_block_4/multi_head_attention_4/einsum_1/Einsum?
Xtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_4_multi_head_attention_4_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02Z
Xtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?
Itransformer_block_4/multi_head_attention_4/attention_output/einsum/EinsumEinsumCtransformer_block_4/multi_head_attention_4/einsum_1/Einsum:output:0`transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????@*
equationabcd,cde->abe2K
Itransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum?
Ntransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_4_multi_head_attention_4_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02P
Ntransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp?
?transformer_block_4/multi_head_attention_4/attention_output/addAddV2Rtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum:output:0Vtransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2A
?transformer_block_4/multi_head_attention_4/attention_output/add?
'transformer_block_4/dropout_16/IdentityIdentityCtransformer_block_4/multi_head_attention_4/attention_output/add:z:0*
T0*+
_output_shapes
:?????????@2)
'transformer_block_4/dropout_16/Identity?
transformer_block_4/addAddV2&token_and_position_embedding_4/add:z:00transformer_block_4/dropout_16/Identity:output:0*
T0*+
_output_shapes
:?????????@2
transformer_block_4/add?
Htransformer_block_4/layer_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_4/layer_normalization_8/moments/mean/reduction_indices?
6transformer_block_4/layer_normalization_8/moments/meanMeantransformer_block_4/add:z:0Qtransformer_block_4/layer_normalization_8/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(28
6transformer_block_4/layer_normalization_8/moments/mean?
>transformer_block_4/layer_normalization_8/moments/StopGradientStopGradient?transformer_block_4/layer_normalization_8/moments/mean:output:0*
T0*+
_output_shapes
:?????????2@
>transformer_block_4/layer_normalization_8/moments/StopGradient?
Ctransformer_block_4/layer_normalization_8/moments/SquaredDifferenceSquaredDifferencetransformer_block_4/add:z:0Gtransformer_block_4/layer_normalization_8/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@2E
Ctransformer_block_4/layer_normalization_8/moments/SquaredDifference?
Ltransformer_block_4/layer_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_4/layer_normalization_8/moments/variance/reduction_indices?
:transformer_block_4/layer_normalization_8/moments/varianceMeanGtransformer_block_4/layer_normalization_8/moments/SquaredDifference:z:0Utransformer_block_4/layer_normalization_8/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2<
:transformer_block_4/layer_normalization_8/moments/variance?
9transformer_block_4/layer_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52;
9transformer_block_4/layer_normalization_8/batchnorm/add/y?
7transformer_block_4/layer_normalization_8/batchnorm/addAddV2Ctransformer_block_4/layer_normalization_8/moments/variance:output:0Btransformer_block_4/layer_normalization_8/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????29
7transformer_block_4/layer_normalization_8/batchnorm/add?
9transformer_block_4/layer_normalization_8/batchnorm/RsqrtRsqrt;transformer_block_4/layer_normalization_8/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2;
9transformer_block_4/layer_normalization_8/batchnorm/Rsqrt?
Ftransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_4_layer_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02H
Ftransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp?
7transformer_block_4/layer_normalization_8/batchnorm/mulMul=transformer_block_4/layer_normalization_8/batchnorm/Rsqrt:y:0Ntransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@29
7transformer_block_4/layer_normalization_8/batchnorm/mul?
9transformer_block_4/layer_normalization_8/batchnorm/mul_1Multransformer_block_4/add:z:0;transformer_block_4/layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_8/batchnorm/mul_1?
9transformer_block_4/layer_normalization_8/batchnorm/mul_2Mul?transformer_block_4/layer_normalization_8/moments/mean:output:0;transformer_block_4/layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_8/batchnorm/mul_2?
Btransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_4_layer_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02D
Btransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp?
7transformer_block_4/layer_normalization_8/batchnorm/subSubJtransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp:value:0=transformer_block_4/layer_normalization_8/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@29
7transformer_block_4/layer_normalization_8/batchnorm/sub?
9transformer_block_4/layer_normalization_8/batchnorm/add_1AddV2=transformer_block_4/layer_normalization_8/batchnorm/mul_1:z:0;transformer_block_4/layer_normalization_8/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_8/batchnorm/add_1?
Btransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_4_sequential_4_dense_16_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02D
Btransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp?
8transformer_block_4/sequential_4/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_4/sequential_4/dense_16/Tensordot/axes?
8transformer_block_4/sequential_4/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_4/sequential_4/dense_16/Tensordot/free?
9transformer_block_4/sequential_4/dense_16/Tensordot/ShapeShape=transformer_block_4/layer_normalization_8/batchnorm/add_1:z:0*
T0*
_output_shapes
:2;
9transformer_block_4/sequential_4/dense_16/Tensordot/Shape?
Atransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2/axis?
<transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2GatherV2Btransformer_block_4/sequential_4/dense_16/Tensordot/Shape:output:0Atransformer_block_4/sequential_4/dense_16/Tensordot/free:output:0Jtransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2?
Ctransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1/axis?
>transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1GatherV2Btransformer_block_4/sequential_4/dense_16/Tensordot/Shape:output:0Atransformer_block_4/sequential_4/dense_16/Tensordot/axes:output:0Ltransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1?
9transformer_block_4/sequential_4/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_4/sequential_4/dense_16/Tensordot/Const?
8transformer_block_4/sequential_4/dense_16/Tensordot/ProdProdEtransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2:output:0Btransformer_block_4/sequential_4/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_4/sequential_4/dense_16/Tensordot/Prod?
;transformer_block_4/sequential_4/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_4/sequential_4/dense_16/Tensordot/Const_1?
:transformer_block_4/sequential_4/dense_16/Tensordot/Prod_1ProdGtransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2_1:output:0Dtransformer_block_4/sequential_4/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_4/sequential_4/dense_16/Tensordot/Prod_1?
?transformer_block_4/sequential_4/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_4/sequential_4/dense_16/Tensordot/concat/axis?
:transformer_block_4/sequential_4/dense_16/Tensordot/concatConcatV2Atransformer_block_4/sequential_4/dense_16/Tensordot/free:output:0Atransformer_block_4/sequential_4/dense_16/Tensordot/axes:output:0Htransformer_block_4/sequential_4/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_4/sequential_4/dense_16/Tensordot/concat?
9transformer_block_4/sequential_4/dense_16/Tensordot/stackPackAtransformer_block_4/sequential_4/dense_16/Tensordot/Prod:output:0Ctransformer_block_4/sequential_4/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_4/sequential_4/dense_16/Tensordot/stack?
=transformer_block_4/sequential_4/dense_16/Tensordot/transpose	Transpose=transformer_block_4/layer_normalization_8/batchnorm/add_1:z:0Ctransformer_block_4/sequential_4/dense_16/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2?
=transformer_block_4/sequential_4/dense_16/Tensordot/transpose?
;transformer_block_4/sequential_4/dense_16/Tensordot/ReshapeReshapeAtransformer_block_4/sequential_4/dense_16/Tensordot/transpose:y:0Btransformer_block_4/sequential_4/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2=
;transformer_block_4/sequential_4/dense_16/Tensordot/Reshape?
:transformer_block_4/sequential_4/dense_16/Tensordot/MatMulMatMulDtransformer_block_4/sequential_4/dense_16/Tensordot/Reshape:output:0Jtransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2<
:transformer_block_4/sequential_4/dense_16/Tensordot/MatMul?
;transformer_block_4/sequential_4/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_4/sequential_4/dense_16/Tensordot/Const_2?
Atransformer_block_4/sequential_4/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_4/sequential_4/dense_16/Tensordot/concat_1/axis?
<transformer_block_4/sequential_4/dense_16/Tensordot/concat_1ConcatV2Etransformer_block_4/sequential_4/dense_16/Tensordot/GatherV2:output:0Dtransformer_block_4/sequential_4/dense_16/Tensordot/Const_2:output:0Jtransformer_block_4/sequential_4/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_4/sequential_4/dense_16/Tensordot/concat_1?
3transformer_block_4/sequential_4/dense_16/TensordotReshapeDtransformer_block_4/sequential_4/dense_16/Tensordot/MatMul:product:0Etransformer_block_4/sequential_4/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 25
3transformer_block_4/sequential_4/dense_16/Tensordot?
@transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_4_sequential_4_dense_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02B
@transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp?
1transformer_block_4/sequential_4/dense_16/BiasAddBiasAdd<transformer_block_4/sequential_4/dense_16/Tensordot:output:0Htransformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 23
1transformer_block_4/sequential_4/dense_16/BiasAdd?
.transformer_block_4/sequential_4/dense_16/ReluRelu:transformer_block_4/sequential_4/dense_16/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 20
.transformer_block_4/sequential_4/dense_16/Relu?
Btransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOpReadVariableOpKtransformer_block_4_sequential_4_dense_17_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02D
Btransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp?
8transformer_block_4/sequential_4/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2:
8transformer_block_4/sequential_4/dense_17/Tensordot/axes?
8transformer_block_4/sequential_4/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2:
8transformer_block_4/sequential_4/dense_17/Tensordot/free?
9transformer_block_4/sequential_4/dense_17/Tensordot/ShapeShape<transformer_block_4/sequential_4/dense_16/Relu:activations:0*
T0*
_output_shapes
:2;
9transformer_block_4/sequential_4/dense_17/Tensordot/Shape?
Atransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2/axis?
<transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2GatherV2Btransformer_block_4/sequential_4/dense_17/Tensordot/Shape:output:0Atransformer_block_4/sequential_4/dense_17/Tensordot/free:output:0Jtransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2>
<transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2?
Ctransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1/axis?
>transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1GatherV2Btransformer_block_4/sequential_4/dense_17/Tensordot/Shape:output:0Atransformer_block_4/sequential_4/dense_17/Tensordot/axes:output:0Ltransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2@
>transformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1?
9transformer_block_4/sequential_4/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2;
9transformer_block_4/sequential_4/dense_17/Tensordot/Const?
8transformer_block_4/sequential_4/dense_17/Tensordot/ProdProdEtransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2:output:0Btransformer_block_4/sequential_4/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2:
8transformer_block_4/sequential_4/dense_17/Tensordot/Prod?
;transformer_block_4/sequential_4/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_block_4/sequential_4/dense_17/Tensordot/Const_1?
:transformer_block_4/sequential_4/dense_17/Tensordot/Prod_1ProdGtransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2_1:output:0Dtransformer_block_4/sequential_4/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2<
:transformer_block_4/sequential_4/dense_17/Tensordot/Prod_1?
?transformer_block_4/sequential_4/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2A
?transformer_block_4/sequential_4/dense_17/Tensordot/concat/axis?
:transformer_block_4/sequential_4/dense_17/Tensordot/concatConcatV2Atransformer_block_4/sequential_4/dense_17/Tensordot/free:output:0Atransformer_block_4/sequential_4/dense_17/Tensordot/axes:output:0Htransformer_block_4/sequential_4/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2<
:transformer_block_4/sequential_4/dense_17/Tensordot/concat?
9transformer_block_4/sequential_4/dense_17/Tensordot/stackPackAtransformer_block_4/sequential_4/dense_17/Tensordot/Prod:output:0Ctransformer_block_4/sequential_4/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_4/sequential_4/dense_17/Tensordot/stack?
=transformer_block_4/sequential_4/dense_17/Tensordot/transpose	Transpose<transformer_block_4/sequential_4/dense_16/Relu:activations:0Ctransformer_block_4/sequential_4/dense_17/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2?
=transformer_block_4/sequential_4/dense_17/Tensordot/transpose?
;transformer_block_4/sequential_4/dense_17/Tensordot/ReshapeReshapeAtransformer_block_4/sequential_4/dense_17/Tensordot/transpose:y:0Btransformer_block_4/sequential_4/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2=
;transformer_block_4/sequential_4/dense_17/Tensordot/Reshape?
:transformer_block_4/sequential_4/dense_17/Tensordot/MatMulMatMulDtransformer_block_4/sequential_4/dense_17/Tensordot/Reshape:output:0Jtransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2<
:transformer_block_4/sequential_4/dense_17/Tensordot/MatMul?
;transformer_block_4/sequential_4/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2=
;transformer_block_4/sequential_4/dense_17/Tensordot/Const_2?
Atransformer_block_4/sequential_4/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atransformer_block_4/sequential_4/dense_17/Tensordot/concat_1/axis?
<transformer_block_4/sequential_4/dense_17/Tensordot/concat_1ConcatV2Etransformer_block_4/sequential_4/dense_17/Tensordot/GatherV2:output:0Dtransformer_block_4/sequential_4/dense_17/Tensordot/Const_2:output:0Jtransformer_block_4/sequential_4/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2>
<transformer_block_4/sequential_4/dense_17/Tensordot/concat_1?
3transformer_block_4/sequential_4/dense_17/TensordotReshapeDtransformer_block_4/sequential_4/dense_17/Tensordot/MatMul:product:0Etransformer_block_4/sequential_4/dense_17/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@25
3transformer_block_4/sequential_4/dense_17/Tensordot?
@transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOpReadVariableOpItransformer_block_4_sequential_4_dense_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02B
@transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp?
1transformer_block_4/sequential_4/dense_17/BiasAddBiasAdd<transformer_block_4/sequential_4/dense_17/Tensordot:output:0Htransformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@23
1transformer_block_4/sequential_4/dense_17/BiasAdd?
'transformer_block_4/dropout_17/IdentityIdentity:transformer_block_4/sequential_4/dense_17/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2)
'transformer_block_4/dropout_17/Identity?
transformer_block_4/add_1AddV2=transformer_block_4/layer_normalization_8/batchnorm/add_1:z:00transformer_block_4/dropout_17/Identity:output:0*
T0*+
_output_shapes
:?????????@2
transformer_block_4/add_1?
Htransformer_block_4/layer_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_4/layer_normalization_9/moments/mean/reduction_indices?
6transformer_block_4/layer_normalization_9/moments/meanMeantransformer_block_4/add_1:z:0Qtransformer_block_4/layer_normalization_9/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(28
6transformer_block_4/layer_normalization_9/moments/mean?
>transformer_block_4/layer_normalization_9/moments/StopGradientStopGradient?transformer_block_4/layer_normalization_9/moments/mean:output:0*
T0*+
_output_shapes
:?????????2@
>transformer_block_4/layer_normalization_9/moments/StopGradient?
Ctransformer_block_4/layer_normalization_9/moments/SquaredDifferenceSquaredDifferencetransformer_block_4/add_1:z:0Gtransformer_block_4/layer_normalization_9/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@2E
Ctransformer_block_4/layer_normalization_9/moments/SquaredDifference?
Ltransformer_block_4/layer_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_4/layer_normalization_9/moments/variance/reduction_indices?
:transformer_block_4/layer_normalization_9/moments/varianceMeanGtransformer_block_4/layer_normalization_9/moments/SquaredDifference:z:0Utransformer_block_4/layer_normalization_9/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2<
:transformer_block_4/layer_normalization_9/moments/variance?
9transformer_block_4/layer_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52;
9transformer_block_4/layer_normalization_9/batchnorm/add/y?
7transformer_block_4/layer_normalization_9/batchnorm/addAddV2Ctransformer_block_4/layer_normalization_9/moments/variance:output:0Btransformer_block_4/layer_normalization_9/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????29
7transformer_block_4/layer_normalization_9/batchnorm/add?
9transformer_block_4/layer_normalization_9/batchnorm/RsqrtRsqrt;transformer_block_4/layer_normalization_9/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2;
9transformer_block_4/layer_normalization_9/batchnorm/Rsqrt?
Ftransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_4_layer_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02H
Ftransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp?
7transformer_block_4/layer_normalization_9/batchnorm/mulMul=transformer_block_4/layer_normalization_9/batchnorm/Rsqrt:y:0Ntransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@29
7transformer_block_4/layer_normalization_9/batchnorm/mul?
9transformer_block_4/layer_normalization_9/batchnorm/mul_1Multransformer_block_4/add_1:z:0;transformer_block_4/layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_9/batchnorm/mul_1?
9transformer_block_4/layer_normalization_9/batchnorm/mul_2Mul?transformer_block_4/layer_normalization_9/moments/mean:output:0;transformer_block_4/layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_9/batchnorm/mul_2?
Btransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_4_layer_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02D
Btransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp?
7transformer_block_4/layer_normalization_9/batchnorm/subSubJtransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp:value:0=transformer_block_4/layer_normalization_9/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@29
7transformer_block_4/layer_normalization_9/batchnorm/sub?
9transformer_block_4/layer_normalization_9/batchnorm/add_1AddV2=transformer_block_4/layer_normalization_9/batchnorm/mul_1:z:0;transformer_block_4/layer_normalization_9/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2;
9transformer_block_4/layer_normalization_9/batchnorm/add_1?
1global_average_pooling1d_4/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_4/Mean/reduction_indices?
global_average_pooling1d_4/MeanMean=transformer_block_4/layer_normalization_9/batchnorm/add_1:z:0:global_average_pooling1d_4/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2!
global_average_pooling1d_4/Mean?
dropout_18/IdentityIdentity(global_average_pooling1d_4/Mean:output:0*
T0*'
_output_shapes
:?????????@2
dropout_18/Identity?
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_18/MatMul/ReadVariableOp?
dense_18/MatMulMatMuldropout_18/Identity:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_18/MatMul?
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_18/BiasAdd/ReadVariableOp?
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_18/BiasAdds
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_18/Relu?
dropout_19/IdentityIdentitydense_18/Relu:activations:0*
T0*'
_output_shapes
:?????????2
dropout_19/Identity?
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_19/MatMul/ReadVariableOp?
dense_19/MatMulMatMuldropout_19/Identity:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/MatMul?
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_19/BiasAdd/ReadVariableOp?
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_19/BiasAdd|
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_19/Softmaxu
IdentityIdentitydense_19/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp<^token_and_position_embedding_4/embedding_8/embedding_lookup<^token_and_position_embedding_4/embedding_9/embedding_lookupC^transformer_block_4/layer_normalization_8/batchnorm/ReadVariableOpG^transformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOpC^transformer_block_4/layer_normalization_9/batchnorm/ReadVariableOpG^transformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOpO^transformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOpY^transformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_4/multi_head_attention_4/key/add/ReadVariableOpL^transformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOpD^transformer_block_4/multi_head_attention_4/query/add/ReadVariableOpN^transformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOpD^transformer_block_4/multi_head_attention_4/value/add/ReadVariableOpN^transformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpA^transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOpC^transformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOpA^transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOpC^transformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2z
;token_and_position_embedding_4/embedding_8/embedding_lookup;token_and_position_embedding_4/embedding_8/embedding_lookup2z
;token_and_position_embedding_4/embedding_9/embedding_lookup;token_and_position_embedding_4/embedding_9/embedding_lookup2?
Btransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOpBtransformer_block_4/layer_normalization_8/batchnorm/ReadVariableOp2?
Ftransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOpFtransformer_block_4/layer_normalization_8/batchnorm/mul/ReadVariableOp2?
Btransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOpBtransformer_block_4/layer_normalization_9/batchnorm/ReadVariableOp2?
Ftransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOpFtransformer_block_4/layer_normalization_9/batchnorm/mul/ReadVariableOp2?
Ntransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOpNtransformer_block_4/multi_head_attention_4/attention_output/add/ReadVariableOp2?
Xtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_4/multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp2?
Atransformer_block_4/multi_head_attention_4/key/add/ReadVariableOpAtransformer_block_4/multi_head_attention_4/key/add/ReadVariableOp2?
Ktransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOpKtransformer_block_4/multi_head_attention_4/key/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_4/multi_head_attention_4/query/add/ReadVariableOpCtransformer_block_4/multi_head_attention_4/query/add/ReadVariableOp2?
Mtransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOpMtransformer_block_4/multi_head_attention_4/query/einsum/Einsum/ReadVariableOp2?
Ctransformer_block_4/multi_head_attention_4/value/add/ReadVariableOpCtransformer_block_4/multi_head_attention_4/value/add/ReadVariableOp2?
Mtransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOpMtransformer_block_4/multi_head_attention_4/value/einsum/Einsum/ReadVariableOp2?
@transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp@transformer_block_4/sequential_4/dense_16/BiasAdd/ReadVariableOp2?
Btransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOpBtransformer_block_4/sequential_4/dense_16/Tensordot/ReadVariableOp2?
@transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp@transformer_block_4/sequential_4/dense_17/BiasAdd/ReadVariableOp2?
Btransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOpBtransformer_block_4/sequential_4/dense_17/Tensordot/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_83452

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
(__inference_dense_19_layer_call_fn_83535

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_19_layer_call_and_return_conditional_losses_818822
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_83629

inputs<
*dense_16_tensordot_readvariableop_resource:@ 6
(dense_16_biasadd_readvariableop_resource: <
*dense_17_tensordot_readvariableop_resource: @6
(dense_17_biasadd_readvariableop_resource:@
identity??dense_16/BiasAdd/ReadVariableOp?!dense_16/Tensordot/ReadVariableOp?dense_17/BiasAdd/ReadVariableOp?!dense_17/Tensordot/ReadVariableOp?
!dense_16/Tensordot/ReadVariableOpReadVariableOp*dense_16_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02#
!dense_16/Tensordot/ReadVariableOp|
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_16/Tensordot/axes?
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_16/Tensordot/freej
dense_16/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_16/Tensordot/Shape?
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_16/Tensordot/GatherV2/axis?
dense_16/Tensordot/GatherV2GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/free:output:0)dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_16/Tensordot/GatherV2?
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_16/Tensordot/GatherV2_1/axis?
dense_16/Tensordot/GatherV2_1GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/axes:output:0+dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_16/Tensordot/GatherV2_1~
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_16/Tensordot/Const?
dense_16/Tensordot/ProdProd$dense_16/Tensordot/GatherV2:output:0!dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_16/Tensordot/Prod?
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_16/Tensordot/Const_1?
dense_16/Tensordot/Prod_1Prod&dense_16/Tensordot/GatherV2_1:output:0#dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_16/Tensordot/Prod_1?
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_16/Tensordot/concat/axis?
dense_16/Tensordot/concatConcatV2 dense_16/Tensordot/free:output:0 dense_16/Tensordot/axes:output:0'dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/concat?
dense_16/Tensordot/stackPack dense_16/Tensordot/Prod:output:0"dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/stack?
dense_16/Tensordot/transpose	Transposeinputs"dense_16/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
dense_16/Tensordot/transpose?
dense_16/Tensordot/ReshapeReshape dense_16/Tensordot/transpose:y:0!dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_16/Tensordot/Reshape?
dense_16/Tensordot/MatMulMatMul#dense_16/Tensordot/Reshape:output:0)dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_16/Tensordot/MatMul?
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_16/Tensordot/Const_2?
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_16/Tensordot/concat_1/axis?
dense_16/Tensordot/concat_1ConcatV2$dense_16/Tensordot/GatherV2:output:0#dense_16/Tensordot/Const_2:output:0)dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/concat_1?
dense_16/TensordotReshape#dense_16/Tensordot/MatMul:product:0$dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2
dense_16/Tensordot?
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_16/BiasAdd/ReadVariableOp?
dense_16/BiasAddBiasAdddense_16/Tensordot:output:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
dense_16/BiasAddw
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
dense_16/Relu?
!dense_17/Tensordot/ReadVariableOpReadVariableOp*dense_17_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02#
!dense_17/Tensordot/ReadVariableOp|
dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_17/Tensordot/axes?
dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_17/Tensordot/free
dense_17/Tensordot/ShapeShapedense_16/Relu:activations:0*
T0*
_output_shapes
:2
dense_17/Tensordot/Shape?
 dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_17/Tensordot/GatherV2/axis?
dense_17/Tensordot/GatherV2GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/free:output:0)dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_17/Tensordot/GatherV2?
"dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_17/Tensordot/GatherV2_1/axis?
dense_17/Tensordot/GatherV2_1GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/axes:output:0+dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_17/Tensordot/GatherV2_1~
dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_17/Tensordot/Const?
dense_17/Tensordot/ProdProd$dense_17/Tensordot/GatherV2:output:0!dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_17/Tensordot/Prod?
dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_17/Tensordot/Const_1?
dense_17/Tensordot/Prod_1Prod&dense_17/Tensordot/GatherV2_1:output:0#dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_17/Tensordot/Prod_1?
dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_17/Tensordot/concat/axis?
dense_17/Tensordot/concatConcatV2 dense_17/Tensordot/free:output:0 dense_17/Tensordot/axes:output:0'dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/concat?
dense_17/Tensordot/stackPack dense_17/Tensordot/Prod:output:0"dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/stack?
dense_17/Tensordot/transpose	Transposedense_16/Relu:activations:0"dense_17/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2
dense_17/Tensordot/transpose?
dense_17/Tensordot/ReshapeReshape dense_17/Tensordot/transpose:y:0!dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_17/Tensordot/Reshape?
dense_17/Tensordot/MatMulMatMul#dense_17/Tensordot/Reshape:output:0)dense_17/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_17/Tensordot/MatMul?
dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_17/Tensordot/Const_2?
 dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_17/Tensordot/concat_1/axis?
dense_17/Tensordot/concat_1ConcatV2$dense_17/Tensordot/GatherV2:output:0#dense_17/Tensordot/Const_2:output:0)dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/concat_1?
dense_17/TensordotReshape#dense_17/Tensordot/MatMul:product:0$dense_17/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
dense_17/Tensordot?
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_17/BiasAdd/ReadVariableOp?
dense_17/BiasAddBiasAdddense_17/Tensordot:output:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
dense_17/BiasAddx
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp ^dense_16/BiasAdd/ReadVariableOp"^dense_16/Tensordot/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp"^dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : 2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2F
!dense_16/Tensordot/ReadVariableOp!dense_16/Tensordot/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2F
!dense_17/Tensordot/ReadVariableOp!dense_17/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?,
?	
B__inference_model_4_layer_call_and_return_conditional_losses_82489
input_56
$token_and_position_embedding_4_82437:@6
$token_and_position_embedding_4_82439:P@/
transformer_block_4_82442:@@+
transformer_block_4_82444:@/
transformer_block_4_82446:@@+
transformer_block_4_82448:@/
transformer_block_4_82450:@@+
transformer_block_4_82452:@/
transformer_block_4_82454:@@'
transformer_block_4_82456:@'
transformer_block_4_82458:@'
transformer_block_4_82460:@+
transformer_block_4_82462:@ '
transformer_block_4_82464: +
transformer_block_4_82466: @'
transformer_block_4_82468:@'
transformer_block_4_82470:@'
transformer_block_4_82472:@ 
dense_18_82477:@
dense_18_82479: 
dense_19_82483:
dense_19_82485:
identity?? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?6token_and_position_embedding_4/StatefulPartitionedCall?+transformer_block_4/StatefulPartitionedCall?
6token_and_position_embedding_4/StatefulPartitionedCallStatefulPartitionedCallinput_5$token_and_position_embedding_4_82437$token_and_position_embedding_4_82439*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *b
f]R[
Y__inference_token_and_position_embedding_4_layer_call_and_return_conditional_losses_8166628
6token_and_position_embedding_4/StatefulPartitionedCall?
+transformer_block_4/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_4/StatefulPartitionedCall:output:0transformer_block_4_82442transformer_block_4_82444transformer_block_4_82446transformer_block_4_82448transformer_block_4_82450transformer_block_4_82452transformer_block_4_82454transformer_block_4_82456transformer_block_4_82458transformer_block_4_82460transformer_block_4_82462transformer_block_4_82464transformer_block_4_82466transformer_block_4_82468transformer_block_4_82470transformer_block_4_82472*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_817992-
+transformer_block_4/StatefulPartitionedCall?
*global_average_pooling1d_4/PartitionedCallPartitionedCall4transformer_block_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_818382,
*global_average_pooling1d_4/PartitionedCall?
dropout_18/PartitionedCallPartitionedCall3global_average_pooling1d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_818452
dropout_18/PartitionedCall?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0dense_18_82477dense_18_82479*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_18_layer_call_and_return_conditional_losses_818582"
 dense_18/StatefulPartitionedCall?
dropout_19/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_818692
dropout_19/PartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_19_82483dense_19_82485*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_19_layer_call_and_return_conditional_losses_818822"
 dense_19/StatefulPartitionedCall?
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall7^token_and_position_embedding_4/StatefulPartitionedCall,^transformer_block_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2p
6token_and_position_embedding_4/StatefulPartitionedCall6token_and_position_embedding_4/StatefulPartitionedCall2Z
+transformer_block_4/StatefulPartitionedCall+transformer_block_4/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
d
E__inference_dropout_18_layer_call_and_return_conditional_losses_83479

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
F
*__inference_dropout_18_layer_call_fn_83457

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_818452
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?K
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_83686

inputs<
*dense_16_tensordot_readvariableop_resource:@ 6
(dense_16_biasadd_readvariableop_resource: <
*dense_17_tensordot_readvariableop_resource: @6
(dense_17_biasadd_readvariableop_resource:@
identity??dense_16/BiasAdd/ReadVariableOp?!dense_16/Tensordot/ReadVariableOp?dense_17/BiasAdd/ReadVariableOp?!dense_17/Tensordot/ReadVariableOp?
!dense_16/Tensordot/ReadVariableOpReadVariableOp*dense_16_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02#
!dense_16/Tensordot/ReadVariableOp|
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_16/Tensordot/axes?
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_16/Tensordot/freej
dense_16/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_16/Tensordot/Shape?
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_16/Tensordot/GatherV2/axis?
dense_16/Tensordot/GatherV2GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/free:output:0)dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_16/Tensordot/GatherV2?
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_16/Tensordot/GatherV2_1/axis?
dense_16/Tensordot/GatherV2_1GatherV2!dense_16/Tensordot/Shape:output:0 dense_16/Tensordot/axes:output:0+dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_16/Tensordot/GatherV2_1~
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_16/Tensordot/Const?
dense_16/Tensordot/ProdProd$dense_16/Tensordot/GatherV2:output:0!dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_16/Tensordot/Prod?
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_16/Tensordot/Const_1?
dense_16/Tensordot/Prod_1Prod&dense_16/Tensordot/GatherV2_1:output:0#dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_16/Tensordot/Prod_1?
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_16/Tensordot/concat/axis?
dense_16/Tensordot/concatConcatV2 dense_16/Tensordot/free:output:0 dense_16/Tensordot/axes:output:0'dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/concat?
dense_16/Tensordot/stackPack dense_16/Tensordot/Prod:output:0"dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/stack?
dense_16/Tensordot/transpose	Transposeinputs"dense_16/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
dense_16/Tensordot/transpose?
dense_16/Tensordot/ReshapeReshape dense_16/Tensordot/transpose:y:0!dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_16/Tensordot/Reshape?
dense_16/Tensordot/MatMulMatMul#dense_16/Tensordot/Reshape:output:0)dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_16/Tensordot/MatMul?
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_16/Tensordot/Const_2?
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_16/Tensordot/concat_1/axis?
dense_16/Tensordot/concat_1ConcatV2$dense_16/Tensordot/GatherV2:output:0#dense_16/Tensordot/Const_2:output:0)dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_16/Tensordot/concat_1?
dense_16/TensordotReshape#dense_16/Tensordot/MatMul:product:0$dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2
dense_16/Tensordot?
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_16/BiasAdd/ReadVariableOp?
dense_16/BiasAddBiasAdddense_16/Tensordot:output:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
dense_16/BiasAddw
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
dense_16/Relu?
!dense_17/Tensordot/ReadVariableOpReadVariableOp*dense_17_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02#
!dense_17/Tensordot/ReadVariableOp|
dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_17/Tensordot/axes?
dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_17/Tensordot/free
dense_17/Tensordot/ShapeShapedense_16/Relu:activations:0*
T0*
_output_shapes
:2
dense_17/Tensordot/Shape?
 dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_17/Tensordot/GatherV2/axis?
dense_17/Tensordot/GatherV2GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/free:output:0)dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_17/Tensordot/GatherV2?
"dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_17/Tensordot/GatherV2_1/axis?
dense_17/Tensordot/GatherV2_1GatherV2!dense_17/Tensordot/Shape:output:0 dense_17/Tensordot/axes:output:0+dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_17/Tensordot/GatherV2_1~
dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_17/Tensordot/Const?
dense_17/Tensordot/ProdProd$dense_17/Tensordot/GatherV2:output:0!dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_17/Tensordot/Prod?
dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_17/Tensordot/Const_1?
dense_17/Tensordot/Prod_1Prod&dense_17/Tensordot/GatherV2_1:output:0#dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_17/Tensordot/Prod_1?
dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_17/Tensordot/concat/axis?
dense_17/Tensordot/concatConcatV2 dense_17/Tensordot/free:output:0 dense_17/Tensordot/axes:output:0'dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/concat?
dense_17/Tensordot/stackPack dense_17/Tensordot/Prod:output:0"dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/stack?
dense_17/Tensordot/transpose	Transposedense_16/Relu:activations:0"dense_17/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2
dense_17/Tensordot/transpose?
dense_17/Tensordot/ReshapeReshape dense_17/Tensordot/transpose:y:0!dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_17/Tensordot/Reshape?
dense_17/Tensordot/MatMulMatMul#dense_17/Tensordot/Reshape:output:0)dense_17/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_17/Tensordot/MatMul?
dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_17/Tensordot/Const_2?
 dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_17/Tensordot/concat_1/axis?
dense_17/Tensordot/concat_1ConcatV2$dense_17/Tensordot/GatherV2:output:0#dense_17/Tensordot/Const_2:output:0)dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_17/Tensordot/concat_1?
dense_17/TensordotReshape#dense_17/Tensordot/MatMul:product:0$dense_17/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2
dense_17/Tensordot?
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_17/BiasAdd/ReadVariableOp?
dense_17/BiasAddBiasAdddense_17/Tensordot:output:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
dense_17/BiasAddx
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp ^dense_16/BiasAdd/ReadVariableOp"^dense_16/Tensordot/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp"^dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : 2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2F
!dense_16/Tensordot/ReadVariableOp!dense_16/Tensordot/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2F
!dense_17/Tensordot/ReadVariableOp!dense_17/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
Y__inference_token_and_position_embedding_4_layer_call_and_return_conditional_losses_81666
x4
"embedding_9_embedding_lookup_81653:@4
"embedding_8_embedding_lookup_81659:P@
identity??embedding_8/embedding_lookup?embedding_9/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/delta?
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:?????????2
range?
embedding_9/embedding_lookupResourceGather"embedding_9_embedding_lookup_81653range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_9/embedding_lookup/81653*'
_output_shapes
:?????????@*
dtype02
embedding_9/embedding_lookup?
%embedding_9/embedding_lookup/IdentityIdentity%embedding_9/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_9/embedding_lookup/81653*'
_output_shapes
:?????????@2'
%embedding_9/embedding_lookup/Identity?
'embedding_9/embedding_lookup/Identity_1Identity.embedding_9/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@2)
'embedding_9/embedding_lookup/Identity_1p
embedding_8/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding_8/Cast?
embedding_8/embedding_lookupResourceGather"embedding_8_embedding_lookup_81659embedding_8/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_8/embedding_lookup/81659*+
_output_shapes
:?????????@*
dtype02
embedding_8/embedding_lookup?
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_8/embedding_lookup/81659*+
_output_shapes
:?????????@2'
%embedding_8/embedding_lookup/Identity?
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????@2)
'embedding_8/embedding_lookup/Identity_1?
addAddV20embedding_8/embedding_lookup/Identity_1:output:00embedding_9/embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:?????????@2
addf
IdentityIdentityadd:z:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp^embedding_8/embedding_lookup^embedding_9/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2<
embedding_9/embedding_lookupembedding_9/embedding_lookup:J F
'
_output_shapes
:?????????

_user_specified_namex
?
d
E__inference_dropout_19_layer_call_and_return_conditional_losses_81966

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?!
?
C__inference_dense_16_layer_call_and_return_conditional_losses_83726

inputs3
!tensordot_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
c
*__inference_dropout_19_layer_call_fn_83509

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_819662
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?+
__inference__traced_save_84013
file_prefix.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopT
Psavev2_token_and_position_embedding_4_embedding_8_embeddings_read_readvariableopT
Psavev2_token_and_position_embedding_4_embedding_9_embeddings_read_readvariableopV
Rsavev2_transformer_block_4_multi_head_attention_4_query_kernel_read_readvariableopT
Psavev2_transformer_block_4_multi_head_attention_4_query_bias_read_readvariableopT
Psavev2_transformer_block_4_multi_head_attention_4_key_kernel_read_readvariableopR
Nsavev2_transformer_block_4_multi_head_attention_4_key_bias_read_readvariableopV
Rsavev2_transformer_block_4_multi_head_attention_4_value_kernel_read_readvariableopT
Psavev2_transformer_block_4_multi_head_attention_4_value_bias_read_readvariableopa
]savev2_transformer_block_4_multi_head_attention_4_attention_output_kernel_read_readvariableop_
[savev2_transformer_block_4_multi_head_attention_4_attention_output_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableopN
Jsavev2_transformer_block_4_layer_normalization_8_gamma_read_readvariableopM
Isavev2_transformer_block_4_layer_normalization_8_beta_read_readvariableopN
Jsavev2_transformer_block_4_layer_normalization_9_gamma_read_readvariableopM
Isavev2_transformer_block_4_layer_normalization_9_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_18_kernel_m_read_readvariableop3
/savev2_adam_dense_18_bias_m_read_readvariableop5
1savev2_adam_dense_19_kernel_m_read_readvariableop3
/savev2_adam_dense_19_bias_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_4_embedding_8_embeddings_m_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_4_embedding_9_embeddings_m_read_readvariableop]
Ysavev2_adam_transformer_block_4_multi_head_attention_4_query_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_4_multi_head_attention_4_query_bias_m_read_readvariableop[
Wsavev2_adam_transformer_block_4_multi_head_attention_4_key_kernel_m_read_readvariableopY
Usavev2_adam_transformer_block_4_multi_head_attention_4_key_bias_m_read_readvariableop]
Ysavev2_adam_transformer_block_4_multi_head_attention_4_value_kernel_m_read_readvariableop[
Wsavev2_adam_transformer_block_4_multi_head_attention_4_value_bias_m_read_readvariableoph
dsavev2_adam_transformer_block_4_multi_head_attention_4_attention_output_kernel_m_read_readvariableopf
bsavev2_adam_transformer_block_4_multi_head_attention_4_attention_output_bias_m_read_readvariableop5
1savev2_adam_dense_16_kernel_m_read_readvariableop3
/savev2_adam_dense_16_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableopU
Qsavev2_adam_transformer_block_4_layer_normalization_8_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_4_layer_normalization_8_beta_m_read_readvariableopU
Qsavev2_adam_transformer_block_4_layer_normalization_9_gamma_m_read_readvariableopT
Psavev2_adam_transformer_block_4_layer_normalization_9_beta_m_read_readvariableop5
1savev2_adam_dense_18_kernel_v_read_readvariableop3
/savev2_adam_dense_18_bias_v_read_readvariableop5
1savev2_adam_dense_19_kernel_v_read_readvariableop3
/savev2_adam_dense_19_bias_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_4_embedding_8_embeddings_v_read_readvariableop[
Wsavev2_adam_token_and_position_embedding_4_embedding_9_embeddings_v_read_readvariableop]
Ysavev2_adam_transformer_block_4_multi_head_attention_4_query_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_4_multi_head_attention_4_query_bias_v_read_readvariableop[
Wsavev2_adam_transformer_block_4_multi_head_attention_4_key_kernel_v_read_readvariableopY
Usavev2_adam_transformer_block_4_multi_head_attention_4_key_bias_v_read_readvariableop]
Ysavev2_adam_transformer_block_4_multi_head_attention_4_value_kernel_v_read_readvariableop[
Wsavev2_adam_transformer_block_4_multi_head_attention_4_value_bias_v_read_readvariableoph
dsavev2_adam_transformer_block_4_multi_head_attention_4_attention_output_kernel_v_read_readvariableopf
bsavev2_adam_transformer_block_4_multi_head_attention_4_attention_output_bias_v_read_readvariableop5
1savev2_adam_dense_16_kernel_v_read_readvariableop3
/savev2_adam_dense_16_bias_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableopU
Qsavev2_adam_transformer_block_4_layer_normalization_8_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_4_layer_normalization_8_beta_v_read_readvariableopU
Qsavev2_adam_transformer_block_4_layer_normalization_9_gamma_v_read_readvariableopT
Psavev2_adam_transformer_block_4_layer_normalization_9_beta_v_read_readvariableop
savev2_const

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
ShardedFilename?$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?#
value?#B?#LB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?*
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopPsavev2_token_and_position_embedding_4_embedding_8_embeddings_read_readvariableopPsavev2_token_and_position_embedding_4_embedding_9_embeddings_read_readvariableopRsavev2_transformer_block_4_multi_head_attention_4_query_kernel_read_readvariableopPsavev2_transformer_block_4_multi_head_attention_4_query_bias_read_readvariableopPsavev2_transformer_block_4_multi_head_attention_4_key_kernel_read_readvariableopNsavev2_transformer_block_4_multi_head_attention_4_key_bias_read_readvariableopRsavev2_transformer_block_4_multi_head_attention_4_value_kernel_read_readvariableopPsavev2_transformer_block_4_multi_head_attention_4_value_bias_read_readvariableop]savev2_transformer_block_4_multi_head_attention_4_attention_output_kernel_read_readvariableop[savev2_transformer_block_4_multi_head_attention_4_attention_output_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableopJsavev2_transformer_block_4_layer_normalization_8_gamma_read_readvariableopIsavev2_transformer_block_4_layer_normalization_8_beta_read_readvariableopJsavev2_transformer_block_4_layer_normalization_9_gamma_read_readvariableopIsavev2_transformer_block_4_layer_normalization_9_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_18_kernel_m_read_readvariableop/savev2_adam_dense_18_bias_m_read_readvariableop1savev2_adam_dense_19_kernel_m_read_readvariableop/savev2_adam_dense_19_bias_m_read_readvariableopWsavev2_adam_token_and_position_embedding_4_embedding_8_embeddings_m_read_readvariableopWsavev2_adam_token_and_position_embedding_4_embedding_9_embeddings_m_read_readvariableopYsavev2_adam_transformer_block_4_multi_head_attention_4_query_kernel_m_read_readvariableopWsavev2_adam_transformer_block_4_multi_head_attention_4_query_bias_m_read_readvariableopWsavev2_adam_transformer_block_4_multi_head_attention_4_key_kernel_m_read_readvariableopUsavev2_adam_transformer_block_4_multi_head_attention_4_key_bias_m_read_readvariableopYsavev2_adam_transformer_block_4_multi_head_attention_4_value_kernel_m_read_readvariableopWsavev2_adam_transformer_block_4_multi_head_attention_4_value_bias_m_read_readvariableopdsavev2_adam_transformer_block_4_multi_head_attention_4_attention_output_kernel_m_read_readvariableopbsavev2_adam_transformer_block_4_multi_head_attention_4_attention_output_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableopQsavev2_adam_transformer_block_4_layer_normalization_8_gamma_m_read_readvariableopPsavev2_adam_transformer_block_4_layer_normalization_8_beta_m_read_readvariableopQsavev2_adam_transformer_block_4_layer_normalization_9_gamma_m_read_readvariableopPsavev2_adam_transformer_block_4_layer_normalization_9_beta_m_read_readvariableop1savev2_adam_dense_18_kernel_v_read_readvariableop/savev2_adam_dense_18_bias_v_read_readvariableop1savev2_adam_dense_19_kernel_v_read_readvariableop/savev2_adam_dense_19_bias_v_read_readvariableopWsavev2_adam_token_and_position_embedding_4_embedding_8_embeddings_v_read_readvariableopWsavev2_adam_token_and_position_embedding_4_embedding_9_embeddings_v_read_readvariableopYsavev2_adam_transformer_block_4_multi_head_attention_4_query_kernel_v_read_readvariableopWsavev2_adam_transformer_block_4_multi_head_attention_4_query_bias_v_read_readvariableopWsavev2_adam_transformer_block_4_multi_head_attention_4_key_kernel_v_read_readvariableopUsavev2_adam_transformer_block_4_multi_head_attention_4_key_bias_v_read_readvariableopYsavev2_adam_transformer_block_4_multi_head_attention_4_value_kernel_v_read_readvariableopWsavev2_adam_transformer_block_4_multi_head_attention_4_value_bias_v_read_readvariableopdsavev2_adam_transformer_block_4_multi_head_attention_4_attention_output_kernel_v_read_readvariableopbsavev2_adam_transformer_block_4_multi_head_attention_4_attention_output_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableopQsavev2_adam_transformer_block_4_layer_normalization_8_gamma_v_read_readvariableopPsavev2_adam_transformer_block_4_layer_normalization_8_beta_v_read_readvariableopQsavev2_adam_transformer_block_4_layer_normalization_9_gamma_v_read_readvariableopPsavev2_adam_transformer_block_4_layer_normalization_9_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	2
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

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :@:::: : : : : :P@:@:@@:@:@@:@:@@:@:@@:@:@ : : @:@:@:@:@:@: : : : :@::::P@:@:@@:@:@@:@:@@:@:@@:@:@ : : @:@:@:@:@:@:@::::P@:@:@@:@:@@:@:@@:@:@@:@:@ : : @:@:@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :$
 

_output_shapes

:P@:$ 

_output_shapes

:@:($
"
_output_shapes
:@@:$ 

_output_shapes

:@:($
"
_output_shapes
:@@:$ 

_output_shapes

:@:($
"
_output_shapes
:@@:$ 

_output_shapes

:@:($
"
_output_shapes
:@@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$  

_output_shapes

:@: !

_output_shapes
::$" 

_output_shapes

:: #

_output_shapes
::$$ 

_output_shapes

:P@:$% 

_output_shapes

:@:(&$
"
_output_shapes
:@@:$' 

_output_shapes

:@:(($
"
_output_shapes
:@@:$) 

_output_shapes

:@:(*$
"
_output_shapes
:@@:$+ 

_output_shapes

:@:(,$
"
_output_shapes
:@@: -

_output_shapes
:@:$. 

_output_shapes

:@ : /

_output_shapes
: :$0 

_output_shapes

: @: 1

_output_shapes
:@: 2

_output_shapes
:@: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@:$6 

_output_shapes

:@: 7

_output_shapes
::$8 

_output_shapes

:: 9

_output_shapes
::$: 

_output_shapes

:P@:$; 

_output_shapes

:@:(<$
"
_output_shapes
:@@:$= 

_output_shapes

:@:(>$
"
_output_shapes
:@@:$? 

_output_shapes

:@:(@$
"
_output_shapes
:@@:$A 

_output_shapes

:@:(B$
"
_output_shapes
:@@: C

_output_shapes
:@:$D 

_output_shapes

:@ : E

_output_shapes
: :$F 

_output_shapes

: @: G

_output_shapes
:@: H

_output_shapes
:@: I

_output_shapes
:@: J

_output_shapes
:@: K

_output_shapes
:@:L

_output_shapes
: 
?
c
*__inference_dropout_18_layer_call_fn_83462

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_819992
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?/
?

B__inference_model_4_layer_call_and_return_conditional_losses_82544
input_56
$token_and_position_embedding_4_82492:@6
$token_and_position_embedding_4_82494:P@/
transformer_block_4_82497:@@+
transformer_block_4_82499:@/
transformer_block_4_82501:@@+
transformer_block_4_82503:@/
transformer_block_4_82505:@@+
transformer_block_4_82507:@/
transformer_block_4_82509:@@'
transformer_block_4_82511:@'
transformer_block_4_82513:@'
transformer_block_4_82515:@+
transformer_block_4_82517:@ '
transformer_block_4_82519: +
transformer_block_4_82521: @'
transformer_block_4_82523:@'
transformer_block_4_82525:@'
transformer_block_4_82527:@ 
dense_18_82532:@
dense_18_82534: 
dense_19_82538:
dense_19_82540:
identity?? dense_18/StatefulPartitionedCall? dense_19/StatefulPartitionedCall?"dropout_18/StatefulPartitionedCall?"dropout_19/StatefulPartitionedCall?6token_and_position_embedding_4/StatefulPartitionedCall?+transformer_block_4/StatefulPartitionedCall?
6token_and_position_embedding_4/StatefulPartitionedCallStatefulPartitionedCallinput_5$token_and_position_embedding_4_82492$token_and_position_embedding_4_82494*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *b
f]R[
Y__inference_token_and_position_embedding_4_layer_call_and_return_conditional_losses_8166628
6token_and_position_embedding_4/StatefulPartitionedCall?
+transformer_block_4/StatefulPartitionedCallStatefulPartitionedCall?token_and_position_embedding_4/StatefulPartitionedCall:output:0transformer_block_4_82497transformer_block_4_82499transformer_block_4_82501transformer_block_4_82503transformer_block_4_82505transformer_block_4_82507transformer_block_4_82509transformer_block_4_82511transformer_block_4_82513transformer_block_4_82515transformer_block_4_82517transformer_block_4_82519transformer_block_4_82521transformer_block_4_82523transformer_block_4_82525transformer_block_4_82527*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_821872-
+transformer_block_4/StatefulPartitionedCall?
*global_average_pooling1d_4/PartitionedCallPartitionedCall4transformer_block_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_818382,
*global_average_pooling1d_4/PartitionedCall?
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_18_layer_call_and_return_conditional_losses_819992$
"dropout_18/StatefulPartitionedCall?
 dense_18/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0dense_18_82532dense_18_82534*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_18_layer_call_and_return_conditional_losses_818582"
 dense_18/StatefulPartitionedCall?
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_19_layer_call_and_return_conditional_losses_819662$
"dropout_19/StatefulPartitionedCall?
 dense_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_19_82538dense_19_82540*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_19_layer_call_and_return_conditional_losses_818822"
 dense_19/StatefulPartitionedCall?
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall7^token_and_position_embedding_4/StatefulPartitionedCall,^transformer_block_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????: : : : : : : : : : : : : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2p
6token_and_position_embedding_4/StatefulPartitionedCall6token_and_position_embedding_4/StatefulPartitionedCall2Z
+transformer_block_4/StatefulPartitionedCall+transformer_block_4/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
q
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_81621

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_19_layer_call_and_return_conditional_losses_83526

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?!
?
C__inference_dense_16_layer_call_and_return_conditional_losses_81456

inputs3
!tensordot_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
(__inference_dense_17_layer_call_fn_83735

inputs
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_814922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
,__inference_sequential_4_layer_call_fn_83572

inputs
unknown:@ 
	unknown_0: 
	unknown_1: @
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_815592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
G__inference_sequential_4_layer_call_and_return_conditional_losses_81597
dense_16_input 
dense_16_81586:@ 
dense_16_81588:  
dense_17_81591: @
dense_17_81593:@
identity?? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?
 dense_16/StatefulPartitionedCallStatefulPartitionedCalldense_16_inputdense_16_81586dense_16_81588*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_16_layer_call_and_return_conditional_losses_814562"
 dense_16/StatefulPartitionedCall?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_81591dense_17_81593*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_814922"
 dense_17/StatefulPartitionedCall?
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????@
(
_user_specified_namedense_16_input
??
?
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_81799

inputsX
Bmulti_head_attention_4_query_einsum_einsum_readvariableop_resource:@@J
8multi_head_attention_4_query_add_readvariableop_resource:@V
@multi_head_attention_4_key_einsum_einsum_readvariableop_resource:@@H
6multi_head_attention_4_key_add_readvariableop_resource:@X
Bmulti_head_attention_4_value_einsum_einsum_readvariableop_resource:@@J
8multi_head_attention_4_value_add_readvariableop_resource:@c
Mmulti_head_attention_4_attention_output_einsum_einsum_readvariableop_resource:@@Q
Cmulti_head_attention_4_attention_output_add_readvariableop_resource:@I
;layer_normalization_8_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_8_batchnorm_readvariableop_resource:@I
7sequential_4_dense_16_tensordot_readvariableop_resource:@ C
5sequential_4_dense_16_biasadd_readvariableop_resource: I
7sequential_4_dense_17_tensordot_readvariableop_resource: @C
5sequential_4_dense_17_biasadd_readvariableop_resource:@I
;layer_normalization_9_batchnorm_mul_readvariableop_resource:@E
7layer_normalization_9_batchnorm_readvariableop_resource:@
identity??.layer_normalization_8/batchnorm/ReadVariableOp?2layer_normalization_8/batchnorm/mul/ReadVariableOp?.layer_normalization_9/batchnorm/ReadVariableOp?2layer_normalization_9/batchnorm/mul/ReadVariableOp?:multi_head_attention_4/attention_output/add/ReadVariableOp?Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_4/key/add/ReadVariableOp?7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_4/query/add/ReadVariableOp?9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_4/value/add/ReadVariableOp?9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?,sequential_4/dense_16/BiasAdd/ReadVariableOp?.sequential_4/dense_16/Tensordot/ReadVariableOp?,sequential_4/dense_17/BiasAdd/ReadVariableOp?.sequential_4/dense_17/Tensordot/ReadVariableOp?
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_4_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp?
*multi_head_attention_4/query/einsum/EinsumEinsuminputsAmulti_head_attention_4/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2,
*multi_head_attention_4/query/einsum/Einsum?
/multi_head_attention_4/query/add/ReadVariableOpReadVariableOp8multi_head_attention_4_query_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_4/query/add/ReadVariableOp?
 multi_head_attention_4/query/addAddV23multi_head_attention_4/query/einsum/Einsum:output:07multi_head_attention_4/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 multi_head_attention_4/query/add?
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_4_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype029
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp?
(multi_head_attention_4/key/einsum/EinsumEinsuminputs?multi_head_attention_4/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2*
(multi_head_attention_4/key/einsum/Einsum?
-multi_head_attention_4/key/add/ReadVariableOpReadVariableOp6multi_head_attention_4_key_add_readvariableop_resource*
_output_shapes

:@*
dtype02/
-multi_head_attention_4/key/add/ReadVariableOp?
multi_head_attention_4/key/addAddV21multi_head_attention_4/key/einsum/Einsum:output:05multi_head_attention_4/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
multi_head_attention_4/key/add?
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_4_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02;
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp?
*multi_head_attention_4/value/einsum/EinsumEinsuminputsAmulti_head_attention_4/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:?????????@*
equationabc,cde->abde2,
*multi_head_attention_4/value/einsum/Einsum?
/multi_head_attention_4/value/add/ReadVariableOpReadVariableOp8multi_head_attention_4_value_add_readvariableop_resource*
_output_shapes

:@*
dtype021
/multi_head_attention_4/value/add/ReadVariableOp?
 multi_head_attention_4/value/addAddV23multi_head_attention_4/value/einsum/Einsum:output:07multi_head_attention_4/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 multi_head_attention_4/value/add?
multi_head_attention_4/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >2
multi_head_attention_4/Mul/y?
multi_head_attention_4/MulMul$multi_head_attention_4/query/add:z:0%multi_head_attention_4/Mul/y:output:0*
T0*/
_output_shapes
:?????????@2
multi_head_attention_4/Mul?
$multi_head_attention_4/einsum/EinsumEinsum"multi_head_attention_4/key/add:z:0multi_head_attention_4/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe2&
$multi_head_attention_4/einsum/Einsum?
&multi_head_attention_4/softmax/SoftmaxSoftmax-multi_head_attention_4/einsum/Einsum:output:0*
T0*/
_output_shapes
:?????????2(
&multi_head_attention_4/softmax/Softmax?
'multi_head_attention_4/dropout/IdentityIdentity0multi_head_attention_4/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:?????????2)
'multi_head_attention_4/dropout/Identity?
&multi_head_attention_4/einsum_1/EinsumEinsum0multi_head_attention_4/dropout/Identity:output:0$multi_head_attention_4/value/add:z:0*
N*
T0*/
_output_shapes
:?????????@*
equationacbe,aecd->abcd2(
&multi_head_attention_4/einsum_1/Einsum?
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_4_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype02F
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp?
5multi_head_attention_4/attention_output/einsum/EinsumEinsum/multi_head_attention_4/einsum_1/Einsum:output:0Lmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:?????????@*
equationabcd,cde->abe27
5multi_head_attention_4/attention_output/einsum/Einsum?
:multi_head_attention_4/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_4_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype02<
:multi_head_attention_4/attention_output/add/ReadVariableOp?
+multi_head_attention_4/attention_output/addAddV2>multi_head_attention_4/attention_output/einsum/Einsum:output:0Bmulti_head_attention_4/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2-
+multi_head_attention_4/attention_output/add?
dropout_16/IdentityIdentity/multi_head_attention_4/attention_output/add:z:0*
T0*+
_output_shapes
:?????????@2
dropout_16/Identityo
addAddV2inputsdropout_16/Identity:output:0*
T0*+
_output_shapes
:?????????@2
add?
4layer_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_8/moments/mean/reduction_indices?
"layer_normalization_8/moments/meanMeanadd:z:0=layer_normalization_8/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2$
"layer_normalization_8/moments/mean?
*layer_normalization_8/moments/StopGradientStopGradient+layer_normalization_8/moments/mean:output:0*
T0*+
_output_shapes
:?????????2,
*layer_normalization_8/moments/StopGradient?
/layer_normalization_8/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_8/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@21
/layer_normalization_8/moments/SquaredDifference?
8layer_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_8/moments/variance/reduction_indices?
&layer_normalization_8/moments/varianceMean3layer_normalization_8/moments/SquaredDifference:z:0Alayer_normalization_8/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2(
&layer_normalization_8/moments/variance?
%layer_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_8/batchnorm/add/y?
#layer_normalization_8/batchnorm/addAddV2/layer_normalization_8/moments/variance:output:0.layer_normalization_8/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2%
#layer_normalization_8/batchnorm/add?
%layer_normalization_8/batchnorm/RsqrtRsqrt'layer_normalization_8/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2'
%layer_normalization_8/batchnorm/Rsqrt?
2layer_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_8/batchnorm/mul/ReadVariableOp?
#layer_normalization_8/batchnorm/mulMul)layer_normalization_8/batchnorm/Rsqrt:y:0:layer_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_8/batchnorm/mul?
%layer_normalization_8/batchnorm/mul_1Muladd:z:0'layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/mul_1?
%layer_normalization_8/batchnorm/mul_2Mul+layer_normalization_8/moments/mean:output:0'layer_normalization_8/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/mul_2?
.layer_normalization_8/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_8/batchnorm/ReadVariableOp?
#layer_normalization_8/batchnorm/subSub6layer_normalization_8/batchnorm/ReadVariableOp:value:0)layer_normalization_8/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_8/batchnorm/sub?
%layer_normalization_8/batchnorm/add_1AddV2)layer_normalization_8/batchnorm/mul_1:z:0'layer_normalization_8/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_8/batchnorm/add_1?
.sequential_4/dense_16/Tensordot/ReadVariableOpReadVariableOp7sequential_4_dense_16_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype020
.sequential_4/dense_16/Tensordot/ReadVariableOp?
$sequential_4/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_4/dense_16/Tensordot/axes?
$sequential_4/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_4/dense_16/Tensordot/free?
%sequential_4/dense_16/Tensordot/ShapeShape)layer_normalization_8/batchnorm/add_1:z:0*
T0*
_output_shapes
:2'
%sequential_4/dense_16/Tensordot/Shape?
-sequential_4/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_16/Tensordot/GatherV2/axis?
(sequential_4/dense_16/Tensordot/GatherV2GatherV2.sequential_4/dense_16/Tensordot/Shape:output:0-sequential_4/dense_16/Tensordot/free:output:06sequential_4/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_4/dense_16/Tensordot/GatherV2?
/sequential_4/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_4/dense_16/Tensordot/GatherV2_1/axis?
*sequential_4/dense_16/Tensordot/GatherV2_1GatherV2.sequential_4/dense_16/Tensordot/Shape:output:0-sequential_4/dense_16/Tensordot/axes:output:08sequential_4/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_4/dense_16/Tensordot/GatherV2_1?
%sequential_4/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_4/dense_16/Tensordot/Const?
$sequential_4/dense_16/Tensordot/ProdProd1sequential_4/dense_16/Tensordot/GatherV2:output:0.sequential_4/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_4/dense_16/Tensordot/Prod?
'sequential_4/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_16/Tensordot/Const_1?
&sequential_4/dense_16/Tensordot/Prod_1Prod3sequential_4/dense_16/Tensordot/GatherV2_1:output:00sequential_4/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_4/dense_16/Tensordot/Prod_1?
+sequential_4/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_4/dense_16/Tensordot/concat/axis?
&sequential_4/dense_16/Tensordot/concatConcatV2-sequential_4/dense_16/Tensordot/free:output:0-sequential_4/dense_16/Tensordot/axes:output:04sequential_4/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/dense_16/Tensordot/concat?
%sequential_4/dense_16/Tensordot/stackPack-sequential_4/dense_16/Tensordot/Prod:output:0/sequential_4/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_4/dense_16/Tensordot/stack?
)sequential_4/dense_16/Tensordot/transpose	Transpose)layer_normalization_8/batchnorm/add_1:z:0/sequential_4/dense_16/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????@2+
)sequential_4/dense_16/Tensordot/transpose?
'sequential_4/dense_16/Tensordot/ReshapeReshape-sequential_4/dense_16/Tensordot/transpose:y:0.sequential_4/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_4/dense_16/Tensordot/Reshape?
&sequential_4/dense_16/Tensordot/MatMulMatMul0sequential_4/dense_16/Tensordot/Reshape:output:06sequential_4/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2(
&sequential_4/dense_16/Tensordot/MatMul?
'sequential_4/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_16/Tensordot/Const_2?
-sequential_4/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_16/Tensordot/concat_1/axis?
(sequential_4/dense_16/Tensordot/concat_1ConcatV21sequential_4/dense_16/Tensordot/GatherV2:output:00sequential_4/dense_16/Tensordot/Const_2:output:06sequential_4/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_4/dense_16/Tensordot/concat_1?
sequential_4/dense_16/TensordotReshape0sequential_4/dense_16/Tensordot/MatMul:product:01sequential_4/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? 2!
sequential_4/dense_16/Tensordot?
,sequential_4/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_16_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_4/dense_16/BiasAdd/ReadVariableOp?
sequential_4/dense_16/BiasAddBiasAdd(sequential_4/dense_16/Tensordot:output:04sequential_4/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
sequential_4/dense_16/BiasAdd?
sequential_4/dense_16/ReluRelu&sequential_4/dense_16/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
sequential_4/dense_16/Relu?
.sequential_4/dense_17/Tensordot/ReadVariableOpReadVariableOp7sequential_4_dense_17_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype020
.sequential_4/dense_17/Tensordot/ReadVariableOp?
$sequential_4/dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2&
$sequential_4/dense_17/Tensordot/axes?
$sequential_4/dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2&
$sequential_4/dense_17/Tensordot/free?
%sequential_4/dense_17/Tensordot/ShapeShape(sequential_4/dense_16/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_4/dense_17/Tensordot/Shape?
-sequential_4/dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_17/Tensordot/GatherV2/axis?
(sequential_4/dense_17/Tensordot/GatherV2GatherV2.sequential_4/dense_17/Tensordot/Shape:output:0-sequential_4/dense_17/Tensordot/free:output:06sequential_4/dense_17/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2*
(sequential_4/dense_17/Tensordot/GatherV2?
/sequential_4/dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_4/dense_17/Tensordot/GatherV2_1/axis?
*sequential_4/dense_17/Tensordot/GatherV2_1GatherV2.sequential_4/dense_17/Tensordot/Shape:output:0-sequential_4/dense_17/Tensordot/axes:output:08sequential_4/dense_17/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_4/dense_17/Tensordot/GatherV2_1?
%sequential_4/dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2'
%sequential_4/dense_17/Tensordot/Const?
$sequential_4/dense_17/Tensordot/ProdProd1sequential_4/dense_17/Tensordot/GatherV2:output:0.sequential_4/dense_17/Tensordot/Const:output:0*
T0*
_output_shapes
: 2&
$sequential_4/dense_17/Tensordot/Prod?
'sequential_4/dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/dense_17/Tensordot/Const_1?
&sequential_4/dense_17/Tensordot/Prod_1Prod3sequential_4/dense_17/Tensordot/GatherV2_1:output:00sequential_4/dense_17/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2(
&sequential_4/dense_17/Tensordot/Prod_1?
+sequential_4/dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+sequential_4/dense_17/Tensordot/concat/axis?
&sequential_4/dense_17/Tensordot/concatConcatV2-sequential_4/dense_17/Tensordot/free:output:0-sequential_4/dense_17/Tensordot/axes:output:04sequential_4/dense_17/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&sequential_4/dense_17/Tensordot/concat?
%sequential_4/dense_17/Tensordot/stackPack-sequential_4/dense_17/Tensordot/Prod:output:0/sequential_4/dense_17/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2'
%sequential_4/dense_17/Tensordot/stack?
)sequential_4/dense_17/Tensordot/transpose	Transpose(sequential_4/dense_16/Relu:activations:0/sequential_4/dense_17/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? 2+
)sequential_4/dense_17/Tensordot/transpose?
'sequential_4/dense_17/Tensordot/ReshapeReshape-sequential_4/dense_17/Tensordot/transpose:y:0.sequential_4/dense_17/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2)
'sequential_4/dense_17/Tensordot/Reshape?
&sequential_4/dense_17/Tensordot/MatMulMatMul0sequential_4/dense_17/Tensordot/Reshape:output:06sequential_4/dense_17/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2(
&sequential_4/dense_17/Tensordot/MatMul?
'sequential_4/dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2)
'sequential_4/dense_17/Tensordot/Const_2?
-sequential_4/dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/dense_17/Tensordot/concat_1/axis?
(sequential_4/dense_17/Tensordot/concat_1ConcatV21sequential_4/dense_17/Tensordot/GatherV2:output:00sequential_4/dense_17/Tensordot/Const_2:output:06sequential_4/dense_17/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_4/dense_17/Tensordot/concat_1?
sequential_4/dense_17/TensordotReshape0sequential_4/dense_17/Tensordot/MatMul:product:01sequential_4/dense_17/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????@2!
sequential_4/dense_17/Tensordot?
,sequential_4/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_4/dense_17/BiasAdd/ReadVariableOp?
sequential_4/dense_17/BiasAddBiasAdd(sequential_4/dense_17/Tensordot:output:04sequential_4/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2
sequential_4/dense_17/BiasAdd?
dropout_17/IdentityIdentity&sequential_4/dense_17/BiasAdd:output:0*
T0*+
_output_shapes
:?????????@2
dropout_17/Identity?
add_1AddV2)layer_normalization_8/batchnorm/add_1:z:0dropout_17/Identity:output:0*
T0*+
_output_shapes
:?????????@2
add_1?
4layer_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_9/moments/mean/reduction_indices?
"layer_normalization_9/moments/meanMean	add_1:z:0=layer_normalization_9/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2$
"layer_normalization_9/moments/mean?
*layer_normalization_9/moments/StopGradientStopGradient+layer_normalization_9/moments/mean:output:0*
T0*+
_output_shapes
:?????????2,
*layer_normalization_9/moments/StopGradient?
/layer_normalization_9/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_9/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????@21
/layer_normalization_9/moments/SquaredDifference?
8layer_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_9/moments/variance/reduction_indices?
&layer_normalization_9/moments/varianceMean3layer_normalization_9/moments/SquaredDifference:z:0Alayer_normalization_9/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:?????????*
	keep_dims(2(
&layer_normalization_9/moments/variance?
%layer_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52'
%layer_normalization_9/batchnorm/add/y?
#layer_normalization_9/batchnorm/addAddV2/layer_normalization_9/moments/variance:output:0.layer_normalization_9/batchnorm/add/y:output:0*
T0*+
_output_shapes
:?????????2%
#layer_normalization_9/batchnorm/add?
%layer_normalization_9/batchnorm/RsqrtRsqrt'layer_normalization_9/batchnorm/add:z:0*
T0*+
_output_shapes
:?????????2'
%layer_normalization_9/batchnorm/Rsqrt?
2layer_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2layer_normalization_9/batchnorm/mul/ReadVariableOp?
#layer_normalization_9/batchnorm/mulMul)layer_normalization_9/batchnorm/Rsqrt:y:0:layer_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_9/batchnorm/mul?
%layer_normalization_9/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/mul_1?
%layer_normalization_9/batchnorm/mul_2Mul+layer_normalization_9/moments/mean:output:0'layer_normalization_9/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/mul_2?
.layer_normalization_9/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_9_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.layer_normalization_9/batchnorm/ReadVariableOp?
#layer_normalization_9/batchnorm/subSub6layer_normalization_9/batchnorm/ReadVariableOp:value:0)layer_normalization_9/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:?????????@2%
#layer_normalization_9/batchnorm/sub?
%layer_normalization_9/batchnorm/add_1AddV2)layer_normalization_9/batchnorm/mul_1:z:0'layer_normalization_9/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????@2'
%layer_normalization_9/batchnorm/add_1?
IdentityIdentity)layer_normalization_9/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:?????????@2

Identity?
NoOpNoOp/^layer_normalization_8/batchnorm/ReadVariableOp3^layer_normalization_8/batchnorm/mul/ReadVariableOp/^layer_normalization_9/batchnorm/ReadVariableOp3^layer_normalization_9/batchnorm/mul/ReadVariableOp;^multi_head_attention_4/attention_output/add/ReadVariableOpE^multi_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_4/key/add/ReadVariableOp8^multi_head_attention_4/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_4/query/add/ReadVariableOp:^multi_head_attention_4/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_4/value/add/ReadVariableOp:^multi_head_attention_4/value/einsum/Einsum/ReadVariableOp-^sequential_4/dense_16/BiasAdd/ReadVariableOp/^sequential_4/dense_16/Tensordot/ReadVariableOp-^sequential_4/dense_17/BiasAdd/ReadVariableOp/^sequential_4/dense_17/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????@: : : : : : : : : : : : : : : : 2`
.layer_normalization_8/batchnorm/ReadVariableOp.layer_normalization_8/batchnorm/ReadVariableOp2h
2layer_normalization_8/batchnorm/mul/ReadVariableOp2layer_normalization_8/batchnorm/mul/ReadVariableOp2`
.layer_normalization_9/batchnorm/ReadVariableOp.layer_normalization_9/batchnorm/ReadVariableOp2h
2layer_normalization_9/batchnorm/mul/ReadVariableOp2layer_normalization_9/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_4/attention_output/add/ReadVariableOp:multi_head_attention_4/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_4/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_4/key/add/ReadVariableOp-multi_head_attention_4/key/add/ReadVariableOp2r
7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp7multi_head_attention_4/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_4/query/add/ReadVariableOp/multi_head_attention_4/query/add/ReadVariableOp2v
9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp9multi_head_attention_4/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_4/value/add/ReadVariableOp/multi_head_attention_4/value/add/ReadVariableOp2v
9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp9multi_head_attention_4/value/einsum/Einsum/ReadVariableOp2\
,sequential_4/dense_16/BiasAdd/ReadVariableOp,sequential_4/dense_16/BiasAdd/ReadVariableOp2`
.sequential_4/dense_16/Tensordot/ReadVariableOp.sequential_4/dense_16/Tensordot/ReadVariableOp2\
,sequential_4/dense_17/BiasAdd/ReadVariableOp,sequential_4/dense_17/BiasAdd/ReadVariableOp2`
.sequential_4/dense_17/Tensordot/ReadVariableOp.sequential_4/dense_17/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_50
serving_default_input_5:0?????????<
dense_190
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
?
	token_emb
pos_emb
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
att
ffn

layernorm1

layernorm2
dropout1
dropout2
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
trainable_variables
 	variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#trainable_variables
$	variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
)trainable_variables
*	variables
+regularization_losses
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-trainable_variables
.	variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

1kernel
2bias
3trainable_variables
4	variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
7iter

8beta_1

9beta_2
	:decay
;learning_rate'm?(m?1m?2m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?'v?(v?1v?2v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?"
	optimizer
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221"
trackable_list_wrapper
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15
L16
M17
'18
(19
120
221"
trackable_list_wrapper
 "
trackable_list_wrapper
?

	variables
Nmetrics
Olayer_regularization_losses

Players
Qlayer_metrics
Rnon_trainable_variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
<
embeddings
Strainable_variables
T	variables
Uregularization_losses
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
=
embeddings
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
[layer_regularization_losses

\layers
]layer_metrics
^non_trainable_variables
_metrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
`_query_dense
a
_key_dense
b_value_dense
c_softmax
d_dropout_layer
e_output_dense
ftrainable_variables
g	variables
hregularization_losses
i	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
jlayer_with_weights-0
jlayer-0
klayer_with_weights-1
klayer-1
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
paxis
	Jgamma
Kbeta
qtrainable_variables
r	variables
sregularization_losses
t	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
uaxis
	Lgamma
Mbeta
vtrainable_variables
w	variables
xregularization_losses
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
ztrainable_variables
{	variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
~trainable_variables
	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper
?
>0
?1
@2
A3
B4
C5
D6
E7
F8
G9
H10
I11
J12
K13
L14
M15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
 	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
#trainable_variables
$	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_18/kernel
:2dense_18/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
)trainable_variables
*	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
+regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
-trainable_variables
.	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
/regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2dense_19/kernel
:2dense_19/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3trainable_variables
4	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
5regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
G:EP@25token_and_position_embedding_4/embedding_8/embeddings
G:E@25token_and_position_embedding_4/embedding_9/embeddings
M:K@@27transformer_block_4/multi_head_attention_4/query/kernel
G:E@25transformer_block_4/multi_head_attention_4/query/bias
K:I@@25transformer_block_4/multi_head_attention_4/key/kernel
E:C@23transformer_block_4/multi_head_attention_4/key/bias
M:K@@27transformer_block_4/multi_head_attention_4/value/kernel
G:E@25transformer_block_4/multi_head_attention_4/value/bias
X:V@@2Btransformer_block_4/multi_head_attention_4/attention_output/kernel
N:L@2@transformer_block_4/multi_head_attention_4/attention_output/bias
!:@ 2dense_16/kernel
: 2dense_16/bias
!: @2dense_17/kernel
:@2dense_17/bias
=:;@2/transformer_block_4/layer_normalization_8/gamma
<::@2.transformer_block_4/layer_normalization_8/beta
=:;@2/transformer_block_4/layer_normalization_9/gamma
<::@2.transformer_block_4/layer_normalization_9/beta
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
<0"
trackable_list_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Strainable_variables
T	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
Uregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
=0"
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Wtrainable_variables
X	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
Yregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?partial_output_shape
?full_output_shape

>kernel
?bias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

@kernel
Abias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

Bkernel
Cbias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

Dkernel
Ebias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
X
>0
?1
@2
A3
B4
C5
D6
E7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
ftrainable_variables
g	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
hregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

Fkernel
Gbias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Hkernel
Ibias
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
<
F0
G1
H2
I3"
trackable_list_wrapper
<
F0
G1
H2
I3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
l	variables
?metrics
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
mtrainable_variables
nregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
qtrainable_variables
r	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
sregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
vtrainable_variables
w	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ztrainable_variables
{	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
|regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~trainable_variables
	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
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
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
`0
a1
b2
c3
d4
e5"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?trainable_variables
?	variables
 ?layer_regularization_losses
?layers
?layer_metrics
?non_trainable_variables
?metrics
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
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
&:$@2Adam/dense_18/kernel/m
 :2Adam/dense_18/bias/m
&:$2Adam/dense_19/kernel/m
 :2Adam/dense_19/bias/m
L:JP@2<Adam/token_and_position_embedding_4/embedding_8/embeddings/m
L:J@2<Adam/token_and_position_embedding_4/embedding_9/embeddings/m
R:P@@2>Adam/transformer_block_4/multi_head_attention_4/query/kernel/m
L:J@2<Adam/transformer_block_4/multi_head_attention_4/query/bias/m
P:N@@2<Adam/transformer_block_4/multi_head_attention_4/key/kernel/m
J:H@2:Adam/transformer_block_4/multi_head_attention_4/key/bias/m
R:P@@2>Adam/transformer_block_4/multi_head_attention_4/value/kernel/m
L:J@2<Adam/transformer_block_4/multi_head_attention_4/value/bias/m
]:[@@2IAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/m
S:Q@2GAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/m
&:$@ 2Adam/dense_16/kernel/m
 : 2Adam/dense_16/bias/m
&:$ @2Adam/dense_17/kernel/m
 :@2Adam/dense_17/bias/m
B:@@26Adam/transformer_block_4/layer_normalization_8/gamma/m
A:?@25Adam/transformer_block_4/layer_normalization_8/beta/m
B:@@26Adam/transformer_block_4/layer_normalization_9/gamma/m
A:?@25Adam/transformer_block_4/layer_normalization_9/beta/m
&:$@2Adam/dense_18/kernel/v
 :2Adam/dense_18/bias/v
&:$2Adam/dense_19/kernel/v
 :2Adam/dense_19/bias/v
L:JP@2<Adam/token_and_position_embedding_4/embedding_8/embeddings/v
L:J@2<Adam/token_and_position_embedding_4/embedding_9/embeddings/v
R:P@@2>Adam/transformer_block_4/multi_head_attention_4/query/kernel/v
L:J@2<Adam/transformer_block_4/multi_head_attention_4/query/bias/v
P:N@@2<Adam/transformer_block_4/multi_head_attention_4/key/kernel/v
J:H@2:Adam/transformer_block_4/multi_head_attention_4/key/bias/v
R:P@@2>Adam/transformer_block_4/multi_head_attention_4/value/kernel/v
L:J@2<Adam/transformer_block_4/multi_head_attention_4/value/bias/v
]:[@@2IAdam/transformer_block_4/multi_head_attention_4/attention_output/kernel/v
S:Q@2GAdam/transformer_block_4/multi_head_attention_4/attention_output/bias/v
&:$@ 2Adam/dense_16/kernel/v
 : 2Adam/dense_16/bias/v
&:$ @2Adam/dense_17/kernel/v
 :@2Adam/dense_17/bias/v
B:@@26Adam/transformer_block_4/layer_normalization_8/gamma/v
A:?@25Adam/transformer_block_4/layer_normalization_8/beta/v
B:@@26Adam/transformer_block_4/layer_normalization_9/gamma/v
A:?@25Adam/transformer_block_4/layer_normalization_9/beta/v
?B?
 __inference__wrapped_model_81418input_5"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_model_4_layer_call_fn_81936
'__inference_model_4_layer_call_fn_82650
'__inference_model_4_layer_call_fn_82699
'__inference_model_4_layer_call_fn_82434?
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
?2?
B__inference_model_4_layer_call_and_return_conditional_losses_82864
B__inference_model_4_layer_call_and_return_conditional_losses_83056
B__inference_model_4_layer_call_and_return_conditional_losses_82489
B__inference_model_4_layer_call_and_return_conditional_losses_82544?
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
>__inference_token_and_position_embedding_4_layer_call_fn_83065?
???
FullArgSpec
args?
jself
jx
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
Y__inference_token_and_position_embedding_4_layer_call_and_return_conditional_losses_83089?
???
FullArgSpec
args?
jself
jx
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
?2?
3__inference_transformer_block_4_layer_call_fn_83126
3__inference_transformer_block_4_layer_call_fn_83163?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_83290
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_83430?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults? 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
:__inference_global_average_pooling1d_4_layer_call_fn_83435
:__inference_global_average_pooling1d_4_layer_call_fn_83440?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_83446
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_83452?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_18_layer_call_fn_83457
*__inference_dropout_18_layer_call_fn_83462?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_18_layer_call_and_return_conditional_losses_83467
E__inference_dropout_18_layer_call_and_return_conditional_losses_83479?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_18_layer_call_fn_83488?
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
C__inference_dense_18_layer_call_and_return_conditional_losses_83499?
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
?2?
*__inference_dropout_19_layer_call_fn_83504
*__inference_dropout_19_layer_call_fn_83509?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_19_layer_call_and_return_conditional_losses_83514
E__inference_dropout_19_layer_call_and_return_conditional_losses_83526?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_19_layer_call_fn_83535?
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
C__inference_dense_19_layer_call_and_return_conditional_losses_83546?
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
#__inference_signature_wrapper_82601input_5"?
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_sequential_4_layer_call_fn_81510
,__inference_sequential_4_layer_call_fn_83559
,__inference_sequential_4_layer_call_fn_83572
,__inference_sequential_4_layer_call_fn_81583?
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
?2?
G__inference_sequential_4_layer_call_and_return_conditional_losses_83629
G__inference_sequential_4_layer_call_and_return_conditional_losses_83686
G__inference_sequential_4_layer_call_and_return_conditional_losses_81597
G__inference_sequential_4_layer_call_and_return_conditional_losses_81611?
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
(__inference_dense_16_layer_call_fn_83695?
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
C__inference_dense_16_layer_call_and_return_conditional_losses_83726?
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
(__inference_dense_17_layer_call_fn_83735?
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
C__inference_dense_17_layer_call_and_return_conditional_losses_83765?
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
 ?
 __inference__wrapped_model_81418=<>?@ABCDEJKFGHILM'(120?-
&?#
!?
input_5?????????
? "3?0
.
dense_19"?
dense_19??????????
C__inference_dense_16_layer_call_and_return_conditional_losses_83726dFG3?0
)?&
$?!
inputs?????????@
? ")?&
?
0????????? 
? ?
(__inference_dense_16_layer_call_fn_83695WFG3?0
)?&
$?!
inputs?????????@
? "?????????? ?
C__inference_dense_17_layer_call_and_return_conditional_losses_83765dHI3?0
)?&
$?!
inputs????????? 
? ")?&
?
0?????????@
? ?
(__inference_dense_17_layer_call_fn_83735WHI3?0
)?&
$?!
inputs????????? 
? "??????????@?
C__inference_dense_18_layer_call_and_return_conditional_losses_83499\'(/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
(__inference_dense_18_layer_call_fn_83488O'(/?,
%?"
 ?
inputs?????????@
? "???????????
C__inference_dense_19_layer_call_and_return_conditional_losses_83546\12/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_dense_19_layer_call_fn_83535O12/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_dropout_18_layer_call_and_return_conditional_losses_83467\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
E__inference_dropout_18_layer_call_and_return_conditional_losses_83479\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? }
*__inference_dropout_18_layer_call_fn_83457O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@}
*__inference_dropout_18_layer_call_fn_83462O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
E__inference_dropout_19_layer_call_and_return_conditional_losses_83514\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
E__inference_dropout_19_layer_call_and_return_conditional_losses_83526\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? }
*__inference_dropout_19_layer_call_fn_83504O3?0
)?&
 ?
inputs?????????
p 
? "??????????}
*__inference_dropout_19_layer_call_fn_83509O3?0
)?&
 ?
inputs?????????
p
? "???????????
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_83446{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
U__inference_global_average_pooling1d_4_layer_call_and_return_conditional_losses_83452`7?4
-?*
$?!
inputs?????????@

 
? "%?"
?
0?????????@
? ?
:__inference_global_average_pooling1d_4_layer_call_fn_83435nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
:__inference_global_average_pooling1d_4_layer_call_fn_83440S7?4
-?*
$?!
inputs?????????@

 
? "??????????@?
B__inference_model_4_layer_call_and_return_conditional_losses_82489y=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
input_5?????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_4_layer_call_and_return_conditional_losses_82544y=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
input_5?????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_4_layer_call_and_return_conditional_losses_82864x=<>?@ABCDEJKFGHILM'(127?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_4_layer_call_and_return_conditional_losses_83056x=<>?@ABCDEJKFGHILM'(127?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
'__inference_model_4_layer_call_fn_81936l=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
input_5?????????
p 

 
? "???????????
'__inference_model_4_layer_call_fn_82434l=<>?@ABCDEJKFGHILM'(128?5
.?+
!?
input_5?????????
p

 
? "???????????
'__inference_model_4_layer_call_fn_82650k=<>?@ABCDEJKFGHILM'(127?4
-?*
 ?
inputs?????????
p 

 
? "???????????
'__inference_model_4_layer_call_fn_82699k=<>?@ABCDEJKFGHILM'(127?4
-?*
 ?
inputs?????????
p

 
? "???????????
G__inference_sequential_4_layer_call_and_return_conditional_losses_81597vFGHIC?@
9?6
,?)
dense_16_input?????????@
p 

 
? ")?&
?
0?????????@
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_81611vFGHIC?@
9?6
,?)
dense_16_input?????????@
p

 
? ")?&
?
0?????????@
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_83629nFGHI;?8
1?.
$?!
inputs?????????@
p 

 
? ")?&
?
0?????????@
? ?
G__inference_sequential_4_layer_call_and_return_conditional_losses_83686nFGHI;?8
1?.
$?!
inputs?????????@
p

 
? ")?&
?
0?????????@
? ?
,__inference_sequential_4_layer_call_fn_81510iFGHIC?@
9?6
,?)
dense_16_input?????????@
p 

 
? "??????????@?
,__inference_sequential_4_layer_call_fn_81583iFGHIC?@
9?6
,?)
dense_16_input?????????@
p

 
? "??????????@?
,__inference_sequential_4_layer_call_fn_83559aFGHI;?8
1?.
$?!
inputs?????????@
p 

 
? "??????????@?
,__inference_sequential_4_layer_call_fn_83572aFGHI;?8
1?.
$?!
inputs?????????@
p

 
? "??????????@?
#__inference_signature_wrapper_82601?=<>?@ABCDEJKFGHILM'(12;?8
? 
1?.
,
input_5!?
input_5?????????"3?0
.
dense_19"?
dense_19??????????
Y__inference_token_and_position_embedding_4_layer_call_and_return_conditional_losses_83089[=<*?'
 ?
?
x?????????
? ")?&
?
0?????????@
? ?
>__inference_token_and_position_embedding_4_layer_call_fn_83065N=<*?'
 ?
?
x?????????
? "??????????@?
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_83290v>?@ABCDEJKFGHILM7?4
-?*
$?!
inputs?????????@
p 
? ")?&
?
0?????????@
? ?
N__inference_transformer_block_4_layer_call_and_return_conditional_losses_83430v>?@ABCDEJKFGHILM7?4
-?*
$?!
inputs?????????@
p
? ")?&
?
0?????????@
? ?
3__inference_transformer_block_4_layer_call_fn_83126i>?@ABCDEJKFGHILM7?4
-?*
$?!
inputs?????????@
p 
? "??????????@?
3__inference_transformer_block_4_layer_call_fn_83163i>?@ABCDEJKFGHILM7?4
-?*
$?!
inputs?????????@
p
? "??????????@