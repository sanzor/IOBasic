#ghc Company.hs > Logs/output.txt 2>&1
srcpath="src"
objpath="Obj"
logspath="Logs"

out="Logs/out.txt"
err="Logs/err.txt"
ghc Company.hs > $out 2>$err 
mv *.hi $objpath/  *.o $objpath/
#ghc $srcpath"/Company.hs" > $logspath"/out.txt" 2>$logspath"/err.txt"

#ghc $srcpath/Company.hs > $logspath/output.txt 2> $logspath/Err.txt
#mv $srcpath"/*.o" $srcpath"/*.hi"  $objpath
#declare -a arr=("*.o","*.hi")

#for i in "${arr[@]}"
#do
#    mv $srcpath/$i $objpath
#done

