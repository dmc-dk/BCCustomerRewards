codeunit 54310 RewardsInstallCode
{
    // Set the codeunit to be an install codeunit. 
    Subtype = Install;

    // This trigger includes code for company-related operations. 
    trigger OnInstallAppPerCompany();
    var
        Reward: Record Reward;
    begin
        // If the "Reward" table is empty, insert the default rewards.
        if Reward.IsEmpty() then begin
            InsertDefaultRewards();
        end;
    end;

    // Insert the GOLD, SILVER, BRONZE reward levels
    procedure InsertDefaultRewards()
    begin
        InsertRewardLevel('GOLD', 'Our highest reward tier, offering premium benefits and exclusive access for our most loyal customers.');
        InsertRewardLevel('SILVER', 'A mid-tier level that provides enhanced perks and savings for returning customers');
        InsertRewardLevel('BRONZE', 'The entry-level tier that rewards new and occasional customers with basic benefits and offers.');
    end;

    // Create and insert a reward level in the "Reward" table.
    procedure InsertRewardLevel(ID: Code[20]; Description: Text[250])
    var
        Reward: Record Reward;
    begin
        Reward.Init();
        Reward.Code := ID;
        Reward.Description := Description;
        Reward.Insert();
    end;

}