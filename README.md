# SAP RAP 101 - RESTful Application Programming

A comprehensive SAP RAP (RESTful Application Programming) training project demonstrating employee and course management with OData services implementation.

## 📋 Project Overview

This project demonstrates the implementation of SAP RAP using ABAP Cloud, featuring a complete employee training management system with two main entities: **Employees** and **Training Courses**. The project showcases modern SAP development practices including CDS Views, Service Definitions, Service Bindings, and OData V2 exposure.

## 🏗️ Architecture

The project follows SAP RAP best practices with a clean separation of concerns:

- **Data Layer**: Database tables (`ZTRD_EMP_TBL`, `ZTRD_COURSE_TBL`)
- **View Layer**: CDS Views (`ZV_TRD_EMP`, `ZV_TRD_COURSE`)
- **Service Layer**: Service Definitions (`ZSTRD_EMP_SRV`, `ZSTRD_CRS_SRV`)
- **Exposure Layer**: Service Bindings (`ZBIND_TRD_EMP`)
- **Data Management**: ABAP Classes for data initialization

## 🗃️ Data Model

### Employee Table (ZTRD_EMP_TBL)
| Field | Type | Length | Description |
|-------|------|--------|-------------|
| `CLIENT` | CLNT | 3 | SAP Client |
| `EMP_ID` | INT4 | 10 | Employee ID (Primary Key) |
| `FIRST_NAME` | CHAR | 50 | Employee First Name |
| `LAST_NAME` | CHAR | 50 | Employee Last Name |
| `BIRTH_DATE` | DATS | 8 | Date of Birth |
| `EMAIL` | CHAR | 100 | Email Address |
| `GENDER` | CHAR | 1 | Gender (M/F) |

### Course Table (ZTRD_COURSE_TBL)
| Field | Type | Length | Description |
|-------|------|--------|-------------|
| `CLIENT` | CLNT | 3 | SAP Client |
| `TRAININGID` | CHAR | 10 | Training ID (Primary Key) |
| `TITLE` | CHAR | 50 | Course Title |
| `COURSEID` | CHAR | 10 | Course Identifier |
| `STARTDATE` | DATS | 8 | Course Start Date |
| `ENDDATE` | DATS | 8 | Course End Date |
| `ISCOMPLETE` | CHAR | 1 | Completion Status |
| `CAPACITY` | INT1 | 3 | Maximum Capacity |

## 🔧 Key Components

### 1. CDS Views

#### Employee View (ZV_TRD_EMP)
- **Purpose**: Provides a consumption-ready view of employee data
- **Features**:
  - Search functionality with `@Search.searchable` annotation
  - UI annotations for Fiori applications
  - Field-level metadata and labels
  - Selection field configurations
  - Line item positioning for list displays

#### Course View (ZV_TRD_COURSE)
- **Purpose**: Exposes training course data for consumption
- **Features**:
  - Direct mapping from course table
  - Proper field aliasing
  - Metadata annotations

### 2. Service Definitions

#### Employee Service (ZSTRD_EMP_SRV)
- Exposes `ZV_TRD_EMP` view as an OData service
- Enables CRUD operations on employee data

#### Course Service (ZSTRD_CRS_SRV)
- Exposes `ZV_TRD_COURSE` view as an OData service
- Provides access to training course information

### 3. Service Bindings

#### Employee Service Binding (ZBIND_TRD_EMP)
- **Binding Type**: OData V2
- **Protocol**: REST/HTTP
- **Purpose**: Creates consumable web services from service definitions
- **Status**: Published and ready for consumption

### 4. Data Management Classes

#### Employee Data Manager (ZCL_TRD_EMP_DATA)
- **Purpose**: Initialize and manage employee test data
- **Features**:
  - Implements `if_oo_adt_classrun` interface
  - Creates sample employee records
  - Handles data modification with error checking
  - Sample data includes diverse employee profiles

#### Course Data Manager (ZCL_TRD_CRS_DATA)
- **Purpose**: Initialize and manage course test data
- **Features**:
  - Implements `if_oo_adt_classrun` interface
  - Creates sample training courses
  - Covers various SAP training types (FIORI, ABAP)
  - Manages course capacity and scheduling

## 🛠️ Setup Instructions

### Prerequisites
- SAP BTP ABAP Environment or SAP S/4HANA Cloud
- ABAP Development Tools (ADT) in Eclipse
- Appropriate authorization for development

### Installation Steps

1. **Import the Package**
   ```
   Use abapGit to import the repository
   Package: ZRAP_TRIADI (or create new package)
   ```

2. **Activate All Objects**
   ```
   Activate all imported objects in the following order:
   1. Database Tables
   2. CDS Views  
   3. Service Definitions
   4. Service Bindings
   5. ABAP Classes
   ```

3. **Initialize Test Data**
   ```
   Run the following classes to populate test data:
   - ZCL_TRD_EMP_DATA (Employee data)
   - ZCL_TRD_CRS_DATA (Course data)
   ```

4. **Publish Services**
   ```
   Navigate to Service Binding: ZBIND_TRD_EMP
   Click "Publish" to activate the OData service
   ```

## 🔗 Service Endpoints

After publishing the service binding, the following endpoints will be available:

- **Employee Service**: `/sap/opu/odata/sap/ZBIND_TRD_EMP/`
- **Metadata**: `/sap/opu/odata/sap/ZBIND_TRD_EMP/$metadata`
- **Service Document**: `/sap/opu/odata/sap/ZBIND_TRD_EMP/`

## 📊 Sample Data

### Employees
- John Doe (johndoe@gmail.com) - Male, born 1985
- Rita Smith (rsmith@gmail.com) - Female, born 1990
- Sam Brown (smrown@gmail.com) - Male, born 1995
- Lisa White (lwhite@gmail.com) - Female, born 1988

### Training Courses
- SAP Training Course 1 (SAPFC1) - Jan-Mar 2025, Capacity: 30
- SAP Training Course 2 (SAPFC1) - Feb-Mar 2025, Capacity: 10
- SAP Training Course ABAP 1 (SAPABAP1) - Feb-May 2025, Capacity: 12
- SAP Training Course ABAP 2 (SAPABAP2) - Mar-Aug 2025, Capacity: 15

## 🎯 Learning Objectives

This project demonstrates:

1. **RAP Fundamentals**: Core concepts of SAP RAP development
2. **CDS Views**: Creating consumption-ready data models
3. **Service Creation**: Building and exposing OData services
4. **UI Annotations**: Preparing data for Fiori applications
5. **Data Management**: ABAP-based data initialization
6. **Best Practices**: Following SAP development guidelines
7. **Cloud Development**: ABAP Cloud compatible implementation

## 🤝 Contributing

This is a training project. Feel free to extend it with:
- Additional entity relationships
- Advanced validation logic
- Custom actions and functions
- Enhanced UI annotations
- Integration with SAP Fiori Elements

## 📝 License

This project is for educational purposes as part of SAP RAP 101 training.

---

**Author**: Triadi Sukma  
**Purpose**: SAP RAP/ABAP Cloud Training  
**Version**: 1.0  
**Last Updated**: August 2025
