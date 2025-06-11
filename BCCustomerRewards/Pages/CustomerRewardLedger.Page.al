page 54302 "Customer Reward Register"
{
    PageType = List;
    SourceTable = CustomerRewardRegister;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Customer Reward Register';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unique identifier for the customer reward register entry.';
                }

                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Reward Code"; Rec."Reward Code")
                {
                    ApplicationArea = All;
                }
                field("Points"; Rec."Points")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Source Document"; Rec."Source Document")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
