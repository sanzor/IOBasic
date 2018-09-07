
    module LineCounter where 

        import System.IO
        import Data.Char(toUpper)
        
        
        main::IO()
        main=do
        
            let inHandle=openFile "in.txt" ReadMode
            let outHandle=openFile "out.txt" WriteMode

            inHandle>>= \a ->outHandle>>= \b ->
                loop a b 0>>=do
                    print . show >>putStrLn "Finished method closing handles.."
                    hTell stderr>>= \pos -> print ("Stderr pos at closing:"++show pos)   
                    hClose a
                    openFile "a.txt" ReadMode>>=hTell>>= print . show
                    hClose b
                    getCont "in.txt" "out.txt">>=writeFile "out2.txt" .show 
            
                                                                        
        
        loop::Handle->Handle->Int->IO Int
        loop inh outh accu = hIsEOF inh >>= \x ->  if x then return accu
                                                   else
                                                     hGetLine inh >>= \str -> 
                                                        do
                                                        hPutStrLn outh (map toUpper str)
                                                        putStrLn ("Content at line["++show accu++"]:"++str)
                                                        hPrint stderr "lalala"
                                                        loop inh outh (accu+1)
                                                        
                                                    
        getCont::String->String->IO Int
        getCont inName outName=do
            inp<-readFile inName
            writeFile outName inp
            return ( length inp)


            
            

                                                        

                                                   
            
        
        
                    


            


           

      

            

            

             
             
            

                             



            
            