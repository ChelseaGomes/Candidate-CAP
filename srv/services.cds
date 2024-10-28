using {Candidate as ca} from '../db/schema'; 


service CandidatesService {

    entity Candidates as projection on ca.Candidates; 
    
}

