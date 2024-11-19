/*
================================================================================
GENERATED STATEMENTS EACH DEPLOYMENT
================================================================================

REVOKE EXECUTE
    ON TYPE::[MySchema].[MyTypeGrantWithAuthorizer] TO [MyRole] CASCADE;
GO
GRANT EXECUTE
    ON TYPE::[MySchema].[MyTypeGrantWithAuthorizer] TO [MyRole]
    AS [MyUser];
GO
GRANT EXECUTE
    ON TYPE::[MySchema].[MyType] TO [MyRole];
*/

create role MyRole;
go

create user MyUser without login;
go

create schema MySchema authorization MyUser;
go

create type MySchema.MyType as table (Id int);
go

grant execute on type::MySchema.MyType to MyRole;
go

create type MySchema.MyTypeGrantWithAuthorizer as table (Id int);
go

/*
This statement results in a REVOKE EXECUTE ... CASCADE followed by a
GRANT EXECUTE ... AS [MyUser] statement.
*/
grant execute on type::MySchema.MyTypeGrantWithAuthorizer to MyRole as MyUser;
go
