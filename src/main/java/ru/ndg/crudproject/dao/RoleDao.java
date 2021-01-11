package ru.ndg.crudproject.dao;

import ru.ndg.crudproject.model.Role;

public interface RoleDao {
    Role getRoleByName(String name);
}
