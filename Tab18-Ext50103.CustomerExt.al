tableextension 50103 "Customer Ext" extends Customer
{
    fields
    {
        field(50100;"Reward ID";Code[30])
        {
            TableRelation = Reward."Reward ID";
            ValidateTableRelation = true;

            trigger OnValidate();
            begin
                if (Rec."Reward ID" <> xRec."Reward ID") and
                    (Rec.Blocked <> Blocked::" ") then 
                begin
                    Error('Cannot update reward status of blocked customer.');
                end;
            end;
        }
    }
}