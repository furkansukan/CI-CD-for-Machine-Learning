install:
    pip install --upgrade pip &&\
        pip install -r requirements.txt

format:
    black *.py

train:
    python train.py

eval:
    echo "## Model Metrics" > report.md
    cat ./CI-CD-for-Machine-Learning\Results/metrics.txt >> report.md
   
    echo '\n## Confusion Matrix Plot' >> report.md
    echo '![Confusion Matrix](./CI-CD-for-Machine-Learning\Results/model_results.png)' >> report.md
   
    cml comment create report.md