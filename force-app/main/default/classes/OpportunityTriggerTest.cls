@isTest
public class OpportunityTriggerTest {
    @isTest
    static void testStageIsSetToProspecting() {
        Opportunity opp = new Opportunity(
            Name = 'Test Opportunity',
            CloseDate = Date.today().addDays(30),
            Amount = 1000
        );

        Test.startTest();
        insert opp;
        Test.stopTest();

        Opportunity insertedOpp = [SELECT StageName FROM Opportunity WHERE Id = :opp.Id];
        System.assertEquals('Prospecting', insertedOpp.StageName); // Add comment to check cicd 3 with pr validation
    }
}