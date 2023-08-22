#!/bin/bash
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
cd $SCRIPT_DIR

git clone https://github.com/a2iEditing/RNAEditingIndexer.git
rm ./RNAEditingIndexer/Dockerfile
cp ./Dockerfile ./RNAEditingIndexer/Dockerfile
cd ./RNAEditingIndexer/

docker image build -t local/rna-editing-index-lite:latest . &> buildAEI.txt

cd ../ && rm -r -f ./RNAEditingIndexer/
