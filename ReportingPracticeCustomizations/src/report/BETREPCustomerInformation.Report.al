/// <summary>
/// Report BET REP Customer Information (ID 64901).
/// </summary>
report 64901 "BET REP Customer Information"
{
    DefaultLayout = RDLC;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Customer Information';
    PreviewMode = PrintLayout;
    RDLCLayout = './src/report/reportayout/CustomerInformation.rdl';

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.";

            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(Name; Name)
            {
                IncludeCaption = true;
            }
            column(Balance; Balance)
            {
                IncludeCaption = true;
            }
            column(Balance__LCY_; "Balance (LCY)")
            {
                IncludeCaption = true;
            }
            column(Balance__Percentage; BalancePercentage)
            {
            }
            column(Credit_Amount; "Credit Amount")
            {
                IncludeCaption = true;
            }
            column(Profit__LCY_; "Profit (LCY)")
            {
                IncludeCaption = true;
            }
            column(Indicator; Indicator)
            {
            }
            column(Total; Total)
            {
            }

            trigger OnAfterGetRecord()
            begin
                GetIndicatorValue();
                CalculateBalancePercentage();
                CalculateTotal();
            end;
        }
    }

    labels
    {
        BalancePercentageLbl = 'Balance Percentage';
        IndicatorLbl = 'Indicator';
        TotalLbl = 'Total';
    }

    var
        BalancePercentage: Decimal;
        Indicator: Boolean;
        Total: Decimal;

    local procedure GetIndicatorValue()
    begin
        Indicator := Customer."Profit (LCY)" >= Customer."Sales (LCY)";
    end;

    local procedure CalculateBalancePercentage()
    begin
        if Customer.Balance = 0 then begin
            BalancePercentage := 100;
            Exit;
        end;

        BalancePercentage := Round(Customer."Balance (LCY)" / (Customer.Balance / 100), 0.01, '=');
    end;

    local procedure CalculateTotal()
    begin
        Total := Customer.Balance + Customer."Balance (LCY)" + Customer."Credit Amount" + Customer."Profit (LCY)";
    end;
}