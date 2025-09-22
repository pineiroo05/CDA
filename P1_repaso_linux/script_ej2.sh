#!/bin/bash

expr $(ps aux | sed '1d' | wc -l) + $(ssh -p 2222 root@localhost ps aux | sed '1d' | wc -l)
