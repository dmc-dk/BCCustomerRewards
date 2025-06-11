page 54300 "Rewards"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Reward;

    layout
    {
        area(content)
        {
            repeater(Rewards)
            {
                field("Reward ID"; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unique identifier for the reward.';
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description of the reward.';
                }

                field(PointsPerInvoice; Rec.PointsPerInvoice)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many reward points are issued per sales invoice for this reward code.';
                }

            }
        }
    }
}