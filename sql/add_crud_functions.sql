



CREATE OR REPLACE FUNCTION sails_postsql.add_crud_functions(objname text) RETURNS SETOF text LANGUAGE plpgsql AS $$
DECLARE
    retval text;
BEGIN
    SELECT * FROM sails_postsql._make_create_function(objname) INTO retval;
    RETURN NEXT retval;
    SELECT * FROM sails_postsql._make_find_function(objname) INTO retval;
    RETURN NEXT retval;
    SELECT * FROM sails_postsql._make_update_function(objname) INTO retval;
    RETURN NEXT retval;
    SELECT * FROM sails_postsql._make_destroy_function(objname) INTO retval;
    RETURN NEXT retval;
END;
$$;


SELECT sails_postsql.add_crud_functions('user');
SELECT sails_postsql.add_crud_functions('pkfactory');
SELECT sails_postsql.add_crud_functions('document');
