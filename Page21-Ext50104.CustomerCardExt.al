pageextension 50104 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Reward ID";"Reward ID")
            {
                Lookup = true;
            }
        }
    }

    actions
    {
        addfirst(Navigation)
        {
            action("Reward")
            {
                ApplicationArea = All;
                RunObject = page "Reward List";
            }
        }
    }
    
    var
        myInt : Integer;
}