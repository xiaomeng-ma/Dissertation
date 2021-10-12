# Dissertation

Do Neural Networks dream of electric sheep or *sheeps

## Experiment 1: 9/15/2021 - 
Replication of Wu et al 2021 "Applying the Transformer to Character-level Transduction"

Data: 2017 SIGMORPHON shared task 1 english-train-high; english-uncovered-test; english-dev

### Experiment 1.0 Morphological Inflection on all inflections with tags
Task: eat + V;3GS - eats

Model Details:
character level tokenization

Results: Experiment1/Output_csv/Prediction_all_inflection.csv

Task: V;PST eat - ate | V;3GS;PRT eat - eats | V;NFIN eat - eat | V;PTCP;PST eat - eaten | V;PTCP;PRT eat - eating

Results: Experiment 1/Output_csv/Precition_{tag}.csv

#### Results:
double spell error: double spell + ng/d ; + iing/+eed

### Experiment 1.5 Fix double spell error

#### Attempt 1. Enhance the training data with more double spell on PST; PTCP.PRS 

Results: 

a. no + iing/eed; more doubles spell + ng/d; 

b. triple spell + ng/d

#### Attempt 2. BPE tokenization

BPE hyperparameter: 30 iteration

Results: 

a. free variation! (angel - inf: angeled - pred: angelled; revictual - inf: revictualled - pred: revictualed) 

b. double spell +ed



## Experiment 2
Data: Parents' sentences of Adam, Eve, and Fraser

Attempt 1. All three parents' data

Attempt 2-4. Adam's(medium), Eve's(low) and Fraser's(high) separate data

### Experiment 2.1 Classification on tense
Tasks: "I went to the store." --- Past

### Experiment 2.2 POS Tagging on verb of the sentence.
Tasks: "I went to the store." --- went; V;PST

### Experiment 2.3 Translate the tense of the sentence
Tasks: "I went to the store." + PRE --- "I go to the store."

## Experiment 2.5
Transfer learning: classfication and translate; classification and POS Tagging; POS Tagging and translate

---------------------------------------

## Hypothesis 1 Regular/Irregular Ratio
1.1 Regular/Irregular Type ratio affects learning

1.2 Regular/Irregular Token ratio affects learning

## Hypothesis 2 Transfer learning
