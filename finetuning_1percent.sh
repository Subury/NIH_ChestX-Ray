CUDA_VISIBLE_DEVICES=0 python3 train.py --name mrm --stage train --model vit_base_patch16 --model_type ViT-B_16 --num_classes 14 \
    --pretrained_path "./pretrained/mrm_v3.pth" --dataset_path '/dataset/nih_cxr/' \
    --output_dir "finetuning_outputs/" --data_volume '1' --num_steps 3000  --eval_batch_size 96 --img_size 224 \
    --learning_rate 3e-2 --warmup_steps 50 --fp16 --fp16_opt_level O2 --train_batch_size 96