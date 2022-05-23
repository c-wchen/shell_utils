#!/bin/bash


while getopts ":a:bc" opt
do
    case $opt in
        a)
            echo "this is -a option. OPTARG=[$OPTARG] OPTIND=[$OPTIND]"
            ;;
        b)
            echo "this is -b option. OPTARG=[$OPTARG] OPTIND=[$OPTIND]"
            ;;
        c)
            echo "this is -c option. OPTARG=[$OPTARG] OPTIND=[$OPTIND]"
            ;;
        ?)
            echo "there is unrecognized parameter."
            exit 1
            ;;
    esac
done