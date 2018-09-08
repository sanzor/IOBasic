module Main where 
    import System.IO
    import System.Directory
    import DB(db)
    import Company
    import Data.Text as T
    import Data.Text.IO as I
    import Text.Regex.Posix

    main::IO()
    main=do
        I.putStrLn  (T.pack  "Insert output path:")
        infile<-I.getLine>>=T.pack 
        if  not checkExt infile then
            I.putStrLn "Extension is wrong , try again"
            main
        else
            I.writeFile infile  (T.pack .show $ db)
            
    
    checkExt::Text->Bool
    checkExt str= let extensions=".(txt|hs|cs)" in
        str =~ extensions::Bool

    makeFile::IO Text
    makeFile=I.getLine>>=if checkExt then return  else error (T.pack "could not be done")

                  
                  
                  


                  

                 
                 
             

        