package ru.ndg.crudproject.dao;

import org.springframework.stereotype.Repository;
import ru.ndg.crudproject.model.Role;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

@Repository
public class RoleDaoImpl implements RoleDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Role getRoleByName(String name) {
        TypedQuery<Role> query = entityManager.createQuery("FROM Role WHERE name = :name", Role.class);
        query.setParameter("name", name);
        return query.getSingleResult();
    }
}
