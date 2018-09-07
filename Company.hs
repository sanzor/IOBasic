module Company where
    import Data.List
    

    data Employee=Employee{
        age::Int,
        name::String,
        job::Job,
        wage::Double
    }

    data Job= Worker | Manager |Unemployed deriving(Eq,Ord,Show)

    data Company=Company{
        compName::String,
        year::Int,
        employees::[Employee]
     }
    instance Show Employee where
        show e="\n\t{"++"name:"++name e++"age:"++(show .age $ e)++"job:"++(show.job $ e)++"wage:"++(show.wage $ e)++"}"
    instance Show Company where 
        show cmp = "{\nname:"++compName cmp++"\n"++"yearFounded:"++(show . year $ cmp)++"\nemployees:"++intercalate "," (map show (employees cmp)) ++"}" where 

    class Charges a where 
        taxes::a->Double 
   
    instance Charges Employee where
        taxes emp = 2.5 * wage emp

    instance Charges Company where 
        taxes  = sum . map taxes . employees 
    
    
    
   