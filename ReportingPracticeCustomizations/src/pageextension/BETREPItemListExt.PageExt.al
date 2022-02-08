/// <summary>
/// PageExtension BET REP Item List Ext (ID 64902) extends Record Item List.
/// </summary>
pageextension 64902 "BET REP Item List Ext" extends "Item List"
{
    actions
    {
        addlast(Reporting)
        {
            action("BET REP Item Ledg. Info")
            {
                ApplicationArea = All;
                Caption = 'Print Item Ledger Info';
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Report;
                Image = LedgerBudget;
                ToolTip = 'Executes the Print Item Ledger Info action.';

                trigger OnAction()
                var
                    Item: Record Item;
                begin
                    CurrPage.SetSelectionFilter(Item);
                    Report.Run(Report::"BET REP Item Ledg. Entry Info.", true, true, Item);
                end;
            }
        }
    }
}