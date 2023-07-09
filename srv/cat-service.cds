using my.capchallenge as my from '../db/data-model';

service CapChallenegeService {
    @readonly entity Rounds as projection on my.Rounds;
    entity Holes as projection on my.Holes;
    entity Shots as projection on my.Shots;
    entity Members as projection on my.Members;
}