cd RWKV-v4neo
# cd  ~/train/RWKV-LM-LoRA/RWKV-v4neo

python train.py \
--load_model "/root/autodl-tmp/model/RWKV-4-Pile-3B-Chn-testNovel-done-ctx2048-20230312.pth" \
--proj_dir /root/autodl-tmp/lora_checkpoints \
--data_file "/root/autodl-tmp/data/_text_document" \
--data_type binidx \
--vocab_size 50277 \
--ctx_len 4096 \
--accumulate_grad_batches 8 \
--epoch_steps 1000 \
--epoch_count 20 \
--epoch_begin 0 \
--epoch_save 5 \
--micro_bsz 1 \
--n_layer 32 \
--n_embd 2560 \
--pre_ffn 0 \
--head_qk 0 \
--lr_init 1e-5 \
--lr_final 1e-5 \
--warmup_steps 0 \
--beta1 0.9 \
--beta2 0.999 \
--adam_eps 1e-8 \
--accelerator gpu \
--devices 1 \
--precision fp16 \
--strategy ddp_find_unused_parameters_false \
--grad_cp 1 \
--lora \
--lora_r 8 \
--lora_alpha 32 \
--lora_dropout 0.01 \
--lora_parts=att,ffn,time,ln
