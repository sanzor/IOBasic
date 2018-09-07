module DB where
    import Company

    data SP500=SP500{
        totalValue::Double,
        companies::[Company],
        date::String
    }deriving (Show)
    
    sp=SP500{totalValue=33.55,companies=db,date="10.08.2018"} 

    db= [
            Company{
                compName="Siemens",
                year=1912,
                employees=[
                    Employee{age=25,name="Stew",job=Worker,wage=34},
                    Employee{age=25,name="Michael",job=Manager,wage=66},
                    Employee{age=22,name="Stew",job=Worker,wage=33.0},
                    Employee{age=32,name="Dew",job=Unemployed,wage=0.5},
                    Employee{age=44,name="Drey",job=Worker,wage=30.0}]
            },
            Company{
                compName="ABB",
                year=1925,
                employees=[
                    Employee{age=18,name="Michael",job=Manager,wage=21},
                    Employee{age=23,name="Rey",job=Worker,wage=18.5},
                    Employee{age=55,name="Barry",job=Unemployed,wage=0.7},
                    Employee{age=64,name="Dean",job=Worker,wage=30.0}]
            },
            Company{
                 compName="EATON",
                 year=1977,
                 employees=[
                    Employee{age=18,name="Raynald",job=Manager,wage=21},
                    Employee{age=23,name="Fitz",job=Worker,wage=18.5},
                    Employee{age=55,name="Alex",job=Worker,wage=0.7},
                    Employee{age=34,name="Bob",job=Worker,wage=23.0}, 
                    Employee{age=33,name="Odo",job=Unemployed,wage=24.0}]},
            Company{
                    compName="MOELLER",
                    year=1911,
                    employees=[
                           Employee{age=55,name="Fritz",job=Manager,wage=31},
                           Employee{age=44,name="Franz",job=Worker,wage=41},
                           Employee{age=33,name="Fuhler",job=Unemployed,wage=50},
                           Employee{age=66,name="Freinhau",job=Unemployed,wage=23.0}, 
                           Employee{age=21,name="Oddo",job=Unemployed,wage=24.0}]},
                           Company{
                    compName="Schneider",
                    year=1878,
                    employees=[
                           Employee{age=55,name="Francois",job=Manager,wage=31},
                           Employee{age=44,name="Devant",job=Worker,wage=41},
                           Employee{age=33,name="Ralph",job=Manager,wage=50},
                           Employee{age=66,name="Sinclair",job=Unemployed,wage=23.0}, 
                           Employee{age=21,name="Soder",job=Manager,wage=24.0}]}
                    ]

    