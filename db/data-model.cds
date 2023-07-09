using { managed, cuid } from '@sap/cds/common';
namespace my.capchallenge;

entity Rounds:managed,cuid {
  RoundDescription  : String;
  HoleItems  : Composition of many Holes;
}

entity Holes : cuid{
  score: Integer;
  par : Integer @assert.range: [3,5]; // range can be given here https://cap.cloud.sap/docs/guides/providing-services#assert-range
  ShotItems : Composition of many Shots;
}

entity Shots: cuid {
speed: Integer;
timeTaken: Decimal;
}

entity Members: cuid {
  Name:String;
  Age: Integer;
  Address: String;
  RoundParticipated: Association to Rounds;
}