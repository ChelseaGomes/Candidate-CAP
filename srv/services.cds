using {Candidate as c} from '../db/schema'; 


service CandidatesService {

    entity Candidates as projection on c.Candidates;
     

    
}

