#!/bin/bash

# create the filet.txt file with content file one
echo "file one" > filett.txt

# create directories and files
mkdir -p laboratory/laboratorytva
echo "file two" > laboratory/laboratorytva/filtvaa.txt
echo "file three" > laboratory/laboratorytva/filtree.txt
mkdir -p laboratory/laboratorytva/catalog1
echo "arbitrary text 1" > laboratory/laboratorytva/catalog1/datafil.txt
mkdir -p laboratory/laboratorytva/katalogtva
echo "arbitrary text 2" > laboratory/laboratorytva/katalogtva/datafil.txt
echo "file four" > laboratory/laboratorytva/katalogtva/filfyra.txt

# create the laboratory directory and its sub directories with files
mkdir -p laboratory/laboratorytva/katalog1 
cat << EOF > laboratory/laboratorytva/katalog1/pgm.sh
#!/bin/bash

echo "number of lines in datafil.txt in catalog1 directory:"
cat $PWD/catalog1/datafil.txt | wc -l

echo "number of lines in datafil.txt in katalogtva directory:"
cat $PWD/../katalogtva/datafil.txt | wc -l

chmod +x pgm.sh
EOF

chmod +x laboratory/laboratorytva/katalog1/pgm.sh
