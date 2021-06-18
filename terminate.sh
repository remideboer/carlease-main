#!/bin/bash
kill $(lsof -t -i:8080)
kill $(lsof -t -i:9091)
kill $(lsof -t -i:9092)
