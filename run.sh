hadoop jar /usr/hdp/2.2.0.0-2041/hadoop-mapreduce/hadoop-streaming-2.6.0.2.2.0.0-2041.jar \
-D mapred.map.tasks=2 \
-D mapred.reduce.tasks=20 \
-D stream.map.output.field.separator=, \
-D stream.num.map.output.key.fields=1 \
-file /home/rstudio/maper.R -mapper "Rscript /home/rstudio/maper.R 20 10" \
-file /home/rstudio/reducer.R -reducer "Rscript /home/rstudio/reducer.R 0.8 1 5" \
-input /tmp/RF/* -output /tmp/rf_selection 
