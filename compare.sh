# example run 
# first run make data on UD danish
python make_dataset.py --training-data ud-data/da-ud-train.conllu --dev-data ud-data/da-ud-dev.conllu --test-data ud-data/da-ud-test.conllu -o DATA

python tagger.py --dataset DATA --no-sequence-model --log-dir log_lstm --num-epochs 3
python tagger.py --dataset DATA --log-dir log_crf --num-epochs 3

