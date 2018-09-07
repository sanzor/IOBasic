module Main where 
    import System.IO
    import System.Directory
    import DB(db)
    import Company
    import Data.Text as T
    import Data.ByteString as B
    import Text.Regex.Posix

    main::IO()
    main=do
        L.putStrLn "Insert output path:"
        infile<-pack . getLine 
        if  not checkExt infile then
            L.putStrLn C"Extension is wrong , try again"
            main
        else
            C.writeFile infile  (C.pack .show $ db)
            
    
    checkExt::L.ByteString->Bool
    checkExt str= let extensions=".(txt|hs|cs)" in
        str =~ extensions::Bool

    makeFile::IO L.ByteString
    makeFile=C.getLine>>=if checkExt then return  else error (C.pack "could not be done")

                  
                  
                  


                  

                 
                 
             

        