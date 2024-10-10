@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Query'
@Metadata.ignorePropagatedAnnotations: false
define view entity Z10_C_EMPLOYEEQUERY
  as select from Z10_R_EMPLOYEE
{
  key EmployeeId,
      FirstName,
      //LastName,
      DepartmentId,
      _Department.Description                  as DepartmentDescription,

      concat_with_space( _Department._Assistant.FirstName,
      _Department._Assistant.LastName,
      1 )                                      as AssistantName,

      // _Department._Assistant.LastName          as AssistantName,

     @EndUserText.label: 'Monthly Salary'
      @Semantics.amount.currencyCode: 'CurrencyCode'
      fltp_to_dec( cast( AnnualSalary as abap.fltp ) / 12.0 as abap.dec(23,2) )              as MonthlySalary,
      CurrencyCode,
      
      @EndUserText.label: 'Annual Salary'
@Semantics.amount.currencyCode: 'CurrencyCodeUSD'
currency_conversion( amount => AnnualSalary,
    source_currency => CurrencyCode ,
    target_currency => cast('USD' as abap.cuky),
    exchange_rate_date => $session.system_date
) as AnnualSalaryConverted,
cast('USD' as abap.cuky) as CurrencyCodeUSD,
 
@EndUserText.label: 'Monthly Salary'
@Semantics.amount.currencyCode: 'CurrencyCodeUSD'
cast( $projection.AnnualSalaryConverted as abap.fltp )
/ 12.0 as MonthlySalaryConverted,
      //CurrencyCode,


      division( dats_days_between( EntryDate,
      $session.system_date ),
      365,
      1 )                                      as CompanyAffiliation,
      /* Associations */
      _Department
}
