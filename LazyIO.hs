module LazyIO where 
    import Data.Char(toUpper)
    import System.IO

    class F a where 
        wrap::a->IO a 
        unwrap::IO a ->(a->IO b)->IO b

    

    instance F Bool where 
        wrap  = return
        unwrap m f=m>>=f
    
    

 

    


    