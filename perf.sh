for template_id in {0..99}
do
    for seed in 13
    do
        # To save time, we fix these hyper-parameters
        bs=8
        lr=1e-5

        # Since we only use dev performance here, use --no_predict to skip testing
        TAG=exp-template \
        TYPE=prompt \
        TASK=SST-2 \
        BS=$bs \
        LR=$lr \
        SEED=$seed \
        MODEL=roberta-large \
        bash run_experiment.sh "--template_path /cluster/scratch/fgonzalez/auto_template/SST-2/16-$seed.txt --template_id $template_id --no_predict"
    done
done