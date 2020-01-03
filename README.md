# MSc-Project
This project contains the code I implemented for the Aggregating Algorithm (Prediction With Expert Advice)

The implementations are as follows in the Algorithm Functions folder:-

This folder contains the functions for running the aggregating algorithm
(AA), the fixed share algorithm (FS), the specialist expert’s algorithm (SE) and the
naïve average algorithm (NA). The AA, FS and SE functions take in two inputs and
output the learners’ predictions. The SE also outputs “newexpertPredictions” where
the missing or NaN values have been updated by the learners’ loss. The NA just
takes in a single input. These functions can be used with any file that has expert
predictions.

# Running the Main Files on the Test Dataset of Tennis Match Bets

Part One – Small Dataset
In the subfolder “Small”, the main file is called “tennis_small”. This is the
main file to run the program. Running this file will open a dialogue box. This
dialogue box provides the options of running the AA, FS, NA, or the SE. Once the
user selects his choice, the program outputs a number of variables. The results
obtained in the project include the selected learners’ predictions, experts’
predictions, learners’ loss, experts’ loss, and the total or cumulative sum of the
learners’ and experts’ losses at step T = 100. Additionally, for finding the loss of the
specialist experts, the user would need to run the script – “loss_se_small”, present
in the same folder.

Part Two – Big Dataset
In the subfolder “Big” the main file is called “tennis_big”. This file runs on
the entire big dataset of the tennis matches. Running this file will open a dialogue
box with two options:

• Tennis without NaN
• Tennis with NaN (SE)

Selecting the first option would open another dialogue box. This box would
provide the user with the option of running the AA, FS, or the NA.
The second dialogue box runs the SE as it works with the file containing
NaN or missing values. When running the SE, to obtain the losses of awake experts
and the learner, the user would have to run an additional script – “loss_se_big”. This
will give us the results for the losses of the awake expert. 
