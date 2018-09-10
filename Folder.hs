module Folder where 
    import Control.Monad(mapM,forM)
    import System.Directory
    import System.FilePath((</>))
    

    getFolders::FilePath->IO [FilePath]
    getFolders topDir=do
        names<-getFolders topDir
        let goodNames=filter ('notElem' [".",".."]) names
        paths<-forM goodNames $ \name ->
            do
                let path=topDir </> name
                isDirectory<-doesDirectoryExist path
                if isDirectory then
                    getFolders path
                else return [path]
        

        