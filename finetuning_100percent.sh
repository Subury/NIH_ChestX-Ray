CUDA_VISIBLE_DEVICES=0 python3 train.py --name mrm --stage train --model vit_base_patch16 --model_type ViT-B_16 --num_classes 14 \
    --pretrained_path "/workspace/PlumBlossom/REFERS/data/checkpoint_16000.pth" --dataset_path '/dataset/nih_cxr/' \
    --output_dir "finetuning_outputs/" --data_volume '100' --num_steps 200000  --eval_batch_size 512 --img_size 224 \
    --learning_rate 3e-3 --warmup_steps 5000 --fp16 --fp16_opt_level O2 --train_batch_size 96