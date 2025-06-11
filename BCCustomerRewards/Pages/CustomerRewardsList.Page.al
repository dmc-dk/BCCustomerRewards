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
                }

            }
        }
    }
}