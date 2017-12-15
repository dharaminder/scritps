
#!/bin/bash
cd /Users/nitesh/Desktop/files;
FILES=$(ls -1);
#FILES=/Users/nitesh/Desktop/files/*
for f in $FILES; do
count=$(head -1 $f |tr , '\n' | wc -l);

head -1 $f |tr , '\n' >> /Users/nitesh/Desktop/header.csv;
i=0;

  while [ $i -lt $count ]
  do
    echo "$f" >> /Users/nitesh/Desktop/header1.csv;
    i=`expr $i + 1`;
  done
done

paste /Users/nitesh/Desktop/header.csv /Users/nitesh/Desktop/header1.csv > /Users/nitesh/Desktop/all_header.csv;
rm -f header.csv;
rm -f header1.csv;
