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
    mkdir $1/Teóricas
    for j in {01..15};do
      mkdir $1/Teóricas/T$j
    done
    mkdir $1/Práticas
    for j in {01..15};do
      mkdir $1/Práticas/P$j
    done
    mkdir $1/TrabalhoPrático
    shift
  done
else
  for i in $(seq 1 $#);do
    mkdir $1
    mkdir $1/Theoretical
    for j in {01..15};do
      mkdir $1/Theoretical/T$j
    done
    mkdir $1/Practical
    for j in {01..15};do
      mkdir $1/Practical/P$j
    done
    mkdir $1/PracticalWork
    shift
  done
fi