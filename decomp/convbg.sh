for f in bg/*.T2P; do
    (./decompressbip $f $f.gim && wine ./gimconv/GimConv.exe $f.gim -o ${f#bg/}.png && rm $f.gim)
done
