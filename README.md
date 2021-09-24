# Dissertation

Do Neural Networks dream of electric sheep or *sheeps

## Experiment 1: 9/15/2021 - 
Replication of Wu et al 2021 "Applying the Transformer to Character-level Transduction"

Data: 2017 SIGMORPHON shared task 1 english-dev; english-train-high; english-uncovered-test

Model Details:
character level transformation
## Experiment 1.5
Transfer learning: classification and morphological inflection
classification task: eats -- 3GS,  ran --- PST

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
