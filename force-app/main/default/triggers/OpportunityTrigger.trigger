trigger OpportunityTrigger on Opportunity (before insert) {
    for (Opportunity opp : Trigger.new) {
        if (String.isBlank(opp.StageName)) {
            opp.StageName = 'Prospecting';
        }
    }
}