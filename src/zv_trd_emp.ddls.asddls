@AbapCatalog.sqlViewName: 'ZVS_TRD_EMP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Table for Employee Data'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define view ZV_TRD_EMP
  as select from ztrd_emp_tbl
{
      @UI.hidden: true
  key emp_id,
      @Search.defaultSearchElement: true
      @UI:{lineItem: [{position: 10, label: 'First Name'}], //use as Field in Control table, position output starting from 10 (left side)
           identification: [{ position: 10, label: 'First Name' }], //Show in object page as identification field at position 10.
           selectionField: [{ position: 10}                     ]} //use as Selection Field in Filter Bar
      @EndUserText.label: 'First Name' //Set label for the field
      first_name,
      @Search.defaultSearchElement: true
      @UI:{lineItem: [{position: 20, label: 'Last Name'}],
           identification: [{ position: 20, label: 'Last Name' }],
           selectionField: [{ position: 20} ]}
      @EndUserText.label: 'Last Name'
      last_name,
      @UI:{lineItem: [{position: 30, label: 'Birth Date'}],
           identification: [{ position: 30, label: 'Birth Date' }],
           selectionField: [{ position: 30} ]}
      @EndUserText.label: 'Birth Date'
      birth_date,
      @UI:{lineItem: [{position: 40, label: 'Email'}],
           identification: [{ position: 40, label: 'Email' }],
           selectionField: [{ position: 40} ]}
      @EndUserText.label: 'Email'
      email,
      @UI:{lineItem: [{position: 50, label: 'Gender'}],
           identification: [{ position: 50, label: 'Gender' }],
           selectionField: [{ position: 50} ]}
      @EndUserText.label: 'Gender'
      gender
}
