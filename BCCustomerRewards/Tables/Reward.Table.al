table 54301 Reward

{
    DataClassification = CustomerContent;

    fields
    {

        field(1; Code; Code[20])
        {
            Caption = 'Code';
        }

        field(2; Description; Text[250])
        {
            Caption = 'Description';
        }

        field(3; PointsPerInvoice; Integer)
        {
            Caption = 'Points Per Invoice';
            DataClassification = CustomerContent;
            ToolTip = 'Specifies how many reward points are issued per sales invoice for this reward code.';
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}