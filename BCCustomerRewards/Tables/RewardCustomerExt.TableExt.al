tableextension 54301 RewardCustomerExt extends Customer
{
    fields
    {
        field(54301; Reward; Code[20])

        {
            Caption = 'Reward Code';
            DataClassification = CustomerContent;
            TableRelation = Reward.Code;
            ToolTip = 'Specifies the reward code for this customer.';
            trigger OnValidate();
            begin

                // If the "Reward ID" changed and the new record is blocked, an error is thrown. 
                if (Rec."Reward" <> xRec."Reward") and
                    (Rec.Blocked <> Blocked::" ") then begin
                    Error('Cannot update the rewards status of a blocked customer.')
                end;
            end;
        }
    }

}