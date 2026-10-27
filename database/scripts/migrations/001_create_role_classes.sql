USE Fanatico_Dev;

GO
-- =============================================
-- Migration : 001
-- Table     : RoleClasses
-- Schema    : dbo
-- Module    : Identity & Access
-- Author    : Oluwaseyi Fatunmole
-- Created   : 2026-10-27
-- =============================================
CREATE TABLE dbo.RoleClasses (
  ClassID BIGINT IDENTITY(1, 1) NOT NULL,
  ClassCode CHAR(1) NOT NULL,
  ClassName NVARCHAR(50) NOT NULL,
  ClassDescription NVARCHAR(255) NOT NULL,
  Status TINYINT NOT NULL DEFAULT 1,
  CreatedAt DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
  UpdatedAt DATETIME2 NOT NULL DEFAULT GETUTCDATE(),
  CreatedBy BIGINT NULL,
  CONSTRAINT PK_RoleClasses PRIMARY KEY (ClassId),
  CONSTRAINT UQ_RoleClasses_ClassCode UNIQUE (ClassCode),
  CONSTRAINT UQ_RoleClasses_ClassName UNIQUE (ClassName),
  CONSTRAINT CK_RoleClasses_ClassCode CHECK (ClassCode IN ('A', 'B', 'C')),
  CONSTRAINT CK_RoleClasses_Status CHECK (Status IN (0, 1))
);

GO