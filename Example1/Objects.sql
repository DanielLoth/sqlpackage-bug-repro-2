/*
================================================================================
GENERATED STATEMENTS EACH DEPLOYMENT
================================================================================

Nil - works as expected.
*/

create role MyRole;
go

create user MyUser without login;
go

create schema MySchema; /* Implicit authorization to dbo */
go

create type MySchema.MyType as table (Id int);
go

grant execute on type::MySchema.MyType to MyRole;
go

create type MySchema.MyTypeGrantWithAuthorizer as table (Id int);
go

grant execute on type::MySchema.MyTypeGrantWithAuthorizer to MyRole as dbo;
go
