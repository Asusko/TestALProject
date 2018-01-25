page 50101 "Reward Card"
{
    PageType = Card;
    SourceTable = Reward;

    layout
    {
        area(content)
        {
            group(Reward)
            {
                field("Reward ID"; "Reward ID")
                {
                    ApplicationArea = All;
                }

                field(Description; Description)
                {
                    ApplicationArea = All;
                }

                field("Discount Percentage"; "Discount Percentage")
                {
                    ApplicationArea = All;
                }
                field("Minimum Purchase"; "Minimum Purchase")
                {
                    ApplicationArea = All;
                }

                field("Last Modified Date"; "Last Modified Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
}