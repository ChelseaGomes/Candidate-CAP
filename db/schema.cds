using {cuid, managed, sap.common.CodeList} from '@sap/cds/common'; 

context Candidate{
    entity Candidates: cuid, managed{
        key ID: UUID;
        firstName: String;
        lastName: String;
        birthDate: Date;
        residence: String;
        email: String;
        department: Association to Departments;
        contractType: Association to ContractTypes;
        reportsTo: Association to Persons;
        preferredLanguage: Association to Languages; 
        startDate: Date;
        seniority: Integer;
        status: Boolean
      
    }
}

entity Departments{
    key code: String; 
    description: String; 
    maxCandidatesRound1: Integer; 
    maxCandidatesRound2: Integer;

}


entity ContractTypes: CodeList{
    key code: String enum {
        fullTime = 'Full Time'; 
        viervijfde= '4/5';
        drievijfde = '3/5'; 
        halftijds='Halftijds'; 
        stage = 'Stage'
    }
}

entity Languages: CodeList{
    key code: String enum {
        english = 'ENG'; 
        dutch = 'NL';
        german ='GER'; 
        french = 'FRA';
    }
}

 entity Persons : cuid, managed {
        firstName    : String;
        lastName : String;
        name        : String = firstName || ' ' || lastName;
        email       : EMailAddress;
    }

 type EMailAddress : String;
