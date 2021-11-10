export CUDA_VISIBLE_DEVICES=-1


python model_main_tf2.py --pipeline_config_path=models/ssd_resnet50_v1_fpn/pipeline_1.config --model_dir=models/ssd_resnet50_v1_fpn/ --num_workers=3 --alsologtostderr
