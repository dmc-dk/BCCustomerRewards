table 54302 CustomerRewardRegister
{
    DataClassification = CustomerContent;
    Caption = 'Customer Reward Register';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer."No.";
        }
        field(3; "Reward Code"; Code[20])
        {
            Caption = 'Reward Code';
            TableRelation = Reward.Code;
        }
        field(4; "Points"; Integer)
        {
            Caption = 'Points';
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(6; "Source Document"; Code[20])
        {
            Caption = 'Source Document';
            ToolTip = 'E.g., Sales Invoice No.';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(CustomerReward; "Customer No.", "Reward Code")
        {
        }
    }
}
