pageextension 54301 "Customer Card Ext" extends "Customer Card"
{
    layout
    {

        addlast(General)
        {
            field("Reward ID"; Rec."Reward")
            {
                ApplicationArea = All;
                Lookup = true;
            }
            field("Total Reward Points"; Rec."Total Reward Points")
            {
                ApplicationArea = All;
                ToolTip = 'Shows the total reward points accumulated by this customer.';
            }
        }
    }

    actions
    {
        addfirst(Navigation)
        {
            action("Rewards")
            {
                ApplicationArea = All;
                RunObject = page "Rewards";
            }
            action("Reward Register")
            {
                ApplicationArea = All;
                Caption = 'Reward Register';
                RunObject = page "Customer Reward Register";
                RunPageLink = "Customer No." = FIELD("No.");
            }
        }
    }
}