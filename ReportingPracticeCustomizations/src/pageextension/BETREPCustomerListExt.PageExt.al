/// <summary>
/// PageExtension BET REP Customer List Ext (ID 64901) extends Record Customer List.
/// </summary>
pageextension 64901 "BET REP Customer List Ext" extends "Customer List"
{
    actions
    {
        addlast(Reporting)
        {
            action("BET REP Customer Information")
            {
                ApplicationArea = All;
                Caption = 'Print Customer Information';
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Report;
                Image = Info;
                ToolTip = 'Executes the Print Customer Information action.';

                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    CurrPage.SetSelectionFilter(Customer);
                    Report.Run(Report::"BET REP Customer Information", true, true, Customer);
                end;
            }
        }
    }
}