/*
 *  Author      :   Vivek Arkalgud
 *  Date        :   21-Aug-2021
 *  Description :   If the user selects Buy, the system should add 1 Deposit instantly and then after every 5 seconds till the total Maturity Amounts become >=120 Million.
 *                  If the user selects Sell, the system should remove 1 Deposit instantly and then after every 5 seconds till the total Maturity Amounts become <=50 Million.
 *                  If the user selects Hold, the system should retain its current state. 
 *                  For addition and removal of Deposits, the principal should be between 3 Million and 5 Million (upper range and lower range included). The deposit lists and sum of maturity amounts in the UI should be refreshed.
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;


namespace NAB
{
    public partial class NABMainForm : System.Web.UI.Page
    {
        const Double TOTAL_MATURITY_AMOUNT_MAX = 120000000;
        const Double TOTAL_MATURITY_AMOUNT_MIN = 50000000;
        enum depositOptionEnum { Hold, Buy, Sell };

        private DataSets.NABEntities nabEntity = new DataSets.NABEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!this.IsPostBack)
                    this.GetDeposits();
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void DepositOption_SelectedIndexChanged(object sender, EventArgs e)
        {
            Double totalMaturityAmount = 0;
            try
            {
                if (Convert.ToInt32(DepositOption.SelectedValue) == Convert.ToInt32(depositOptionEnum.Buy))
                {
                    while (totalMaturityAmount < TOTAL_MATURITY_AMOUNT_MAX)
                    {
                        nabEntity.Deposits.Add(new DataSets.Deposit { Principal = 3000000, StartDate = Convert.ToDateTime("01-Dec-2021"), EndDate = Convert.ToDateTime("01-Dec-2022"), InterestRate = Convert.ToDecimal(0.1), Term = 1 });
                        nabEntity.SaveChanges();
                        totalMaturityAmount = Convert.ToDouble(nabEntity.Deposits.Sum(s => s.MaturityAmount));
                        if (totalMaturityAmount < TOTAL_MATURITY_AMOUNT_MAX)
                            Thread.Sleep(Convert.ToInt32(ConfigurationManager.AppSettings["SleepTime"]));
                    };
                    GetDeposits();
                }
                else if (Convert.ToInt32(DepositOption.SelectedValue) == Convert.ToInt32(depositOptionEnum.Sell))
                {
                    Boolean depositExists = true;

                    depositExists = RemoveDeposit();
                    if (depositExists == true)
                    {          
                        totalMaturityAmount = Convert.ToDouble(nabEntity.Deposits.Sum(s => s.MaturityAmount));
                        while (totalMaturityAmount > TOTAL_MATURITY_AMOUNT_MIN)
                        {
                            RemoveDeposit();
                            if (totalMaturityAmount != Convert.ToDouble(nabEntity.Deposits.Sum(s => s.MaturityAmount)))
                                totalMaturityAmount = Convert.ToDouble(nabEntity.Deposits.Sum(s => s.MaturityAmount));
                            else
                                break;
                            if (totalMaturityAmount > TOTAL_MATURITY_AMOUNT_MIN)
                                Thread.Sleep(Convert.ToInt32(ConfigurationManager.AppSettings["SleepTime"]));
                        };
                        GetDeposits();
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        /// <summary>
        /// Removes the first deposit found where the principal amount is between 3000000 and 5000000
        /// </summary>
        /// <returns>true if deposit is found and if it successfully removed. Otherwise returns false</returns>
        private Boolean RemoveDeposit()
        {
            if (nabEntity.Deposits.Where(w => w.Principal >= 3000000 && w.Principal <= 5000000).Count() > 0)
            {
                nabEntity.Deposits.Remove(nabEntity.Deposits.Where(w => w.Principal >= 3000000 && w.Principal <= 5000000).FirstOrDefault());
                nabEntity.SaveChanges();
                return true;
            }
            else
                return false;
        }

        /// <summary>
        /// Gets total maturity amount for all deposits
        /// </summary>
        private void GetDeposits()
        {
            gvDeposits.DataSource = nabEntity.Deposits.ToList();
            gvDeposits.DataBind();

            //Get total maturity amount
            txtTotalMaturityAmount.Text= string.Format("${0:#,##0.00}", double.Parse(nabEntity.Deposits.Sum(s => s.MaturityAmount).ToString()));

        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDeposits.PageIndex = e.NewPageIndex;
            GetDeposits();            
        }
    }
}