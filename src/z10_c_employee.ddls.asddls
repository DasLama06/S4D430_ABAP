@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
  serviceQuality: #D,
  sizeCategory: #S,
  dataClass: #MASTER
}
define view entity Z10_C_EMPLOYEE
  as select from Z10_R_Employee
{
  key EmployeeId,
      FirstName,
      LastName,
      BirthDate,
      EntryDate,
      DepartmentId,
      AnnualSalary,
      CurrencyCode,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt
}
