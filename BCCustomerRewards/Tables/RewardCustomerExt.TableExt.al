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

        }
    }

}