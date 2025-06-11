codeunit 54303 RewardPointsManagement
{
    Subtype = Normal;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesDoc', '', false, false)]
    local procedure OnAfterPostSalesInvoice(var SalesHeader: Record "Sales Header")
    var
        Customer: Record Customer;
        Reward: Record Reward;
        CustomerRewardRegister: Record CustomerRewardRegister;
    begin
        Customer.Get(SalesHeader."Sell-to Customer No.");
        if Customer."Reward" = '' then
            exit;
        if not Reward.Get(Customer."Reward") then
            exit;
        if Reward.PointsPerInvoice = 0 then
            exit;
        CustomerRewardRegister.Init();
        CustomerRewardRegister."Customer No." := Customer."No.";
        CustomerRewardRegister."Reward Code" := Reward.Code;
        CustomerRewardRegister."Points" := Reward.PointsPerInvoice;
        CustomerRewardRegister."Posting Date" := SalesHeader."Posting Date";
        CustomerRewardRegister."Source Document" := SalesHeader."No.";
        CustomerRewardRegister.Insert();
    end;
}
