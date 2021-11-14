#!/bin/bash
cd models/research &&\
cp object_detection/packages/tf2/setup.py . &&\
python -m pip install --use-feature=2020-resolver . &&\
python object_detection/builders/model_builder_tf2_test.py