@AbapCatalog.sqlViewName: 'ZVS_TRD_COURSE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View Table for Employee Course'
@Metadata.ignorePropagatedAnnotations: true
define view ZV_TRD_COURSE
  as select from ztrd_course_tbl
{
  key trainingid as Trainingid,
      title      as Title,
      courseid   as Courseid,
      startdate  as Startdate,
      enddate    as Enddate,
      iscomplete as Iscomplete,
      capacity   as Capacity
}
