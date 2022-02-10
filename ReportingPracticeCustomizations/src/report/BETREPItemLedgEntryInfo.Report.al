/// <summary>
/// Report BET REP Item Ledg. Entry Info. (ID 64902).
/// </summary>
report 64902 "BET REP Item Ledg. Entry Info."
{
    DefaultLayout = RDLC;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Item Ledger Entry Information';
    PreviewMode = PrintLayout;
    RDLCLayout = './src/report/reportayout/ItemLedgerEntryInformation.rdl';

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.";
            PrintOnlyIfDetail = true;

            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(ItemDescription; Description)
            {
                IncludeCaption = true;
            }
            column(Base_Unit_of_Measure; "Base Unit of Measure")
            {
                IncludeCaption = true;
            }
            column(Unit_Price; "Unit Price")
            {
                IncludeCaption = true;
            }
            column(ShowTotal; ShowTotal)
            {
            }

            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = field("No.");
                DataItemTableView = sorting("Entry No.");

                column(Entry_No_; "Entry No.")
                {
                    IncludeCaption = true;
                }
                column(LedgerDescription; Description)
                {
                    IncludeCaption = true;
                }
                column(Cost_Amount__Actual_; "Cost Amount (Actual)")
                {
                    IncludeCaption = true;
                }
                column(Purchase_Amount__Actual_; "Purchase Amount (Actual)")
                {
                    IncludeCaption = true;
                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(General)
                {
                    field("Show Total"; ShowTotal)
                    {
                        ApplicationArea = All;
                        Caption = 'Show Total';
                        ToolTip = 'Specifies the value of the Show Total field.';
                    }
                }
            }
        }
    }

    labels
    {
        PerItemTotalLbl = 'Item Total';
        TotalLbl = 'Total';
    }

    var
        ShowTotal: Boolean;
}