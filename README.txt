ECS 174 Project for Prof. Hamed, Computer Vision

Project based around the analysis and training of models in regards to ASL translation tasks,
 specificially alphanumeric translation.

Dataset: https://www.kaggle.com/datasets/grassknoted/asl-alphabet

Install Packages
./setup_env.sh
source venv/bin/activate

Train Model
Runs train.ipynb jupyter notebook and saves results to train_output.ipynb. Used to automate training and testing on GPU.
./run_notebook.sh

Notebook Details
table.ipynb - Script to generate table of F1, Precision, and Recall scores for all runs
train.ipynb - Scripts to load datasets, train all model runs, test all model runs, and generate epoch graphs & confusion matrix.

History and Saved Models
The history and saved model parameters are in experiment_runs
history_run_[run_id].json = Loss History and other statistics for that run_id
model_run_[run_id].pt = Final model for that run_id
Run IDs are in the following form: [run_id] = a-<activation>_d-<dropout>_lr-<learning_rate>_opt-<optimizer>_wd-<weight_decay>_f-<filters>