#!/bin/bash

portugueseFlag="false"
while getopts "p" flag; do
  case "${flag}" in
    p) portugueseFlag='true';;
  esac
done

if $portugueseFlag -eq "true"
then
  shift
  for i in $(seq 1 $#);do
    mkdir $1
    mkdir $1/Práticas
    for j in {01..15};do
      mkdir $1/Práticas/P$j
    done
    mkdir $1/TrabalhoPrático
    mkdir $1/Material
    mkdir $1/Material/Notas
    mkdir $1/Material/Outros
    mkdir $1/Testes
    shift
  done
else
  for i in $(seq 1 $#);do
    mkdir $1
    mkdir $1/Practical
    for j in {01..15};do
      mkdir $1/Practical/P$j
    done
    mkdir $1/PracticalWork
    mkdir $1/Material
    mkdir $1/Material/Notes
    mkdir $1/Material/Other
    mkdir $1/Tests
    shift
  done
fi