module Main where 
    import System.IO
    import System.Directory
    import DB(db)
    import Company
    import qualified Data.Text as T
    import qualified Data.Text.IO as I
    import qualified Text.Regex.Posix as P
    



    main::IO()
    main=do
        I.putStrLn  (T.pack  "Insert output path:")
        fileName<-setFile
        I.writeFile  fileName  (T.pack . show $ db)
            
   
    setFile::IO String
    setFile=do
        let  ext =".(txt|hs|cs)"
        fileName<-I.getLine
        if not (T.unpack fileName P.=~ ext::Bool) then
           do
           putStrLn "Invalid extension of file"  
           setFile
        else 
            return . T.unpack $ fileName
            
                  
                  


                  

                 
                 
             

        