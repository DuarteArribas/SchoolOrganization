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
    mkdir $1/teóricas
    for j in $(seq 1 7);do
      mkdir $1/teóricas/$j
    done
    mkdir $1/práticas
    for j in $(seq 1 7);do
      mkdir $1/práticas/$j
    done
    mkdir $1/trabalhoPrático
    shift
  done
else
  for i in $(seq 1 $#);do
    mkdir $1
    mkdir $1/theoretical
    for j in $(seq 1 7);do
      mkdir $1/theoretical/$j
    done
    mkdir $1/practical
    for j in $(seq 1 7);do
      mkdir $1/practical/$j
    done
    mkdir $1/practicalWork
    shift
  done
fi