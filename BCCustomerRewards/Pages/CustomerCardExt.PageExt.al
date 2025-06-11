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
        }
    }
}