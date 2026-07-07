package vn.hoidanit.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.hoidanit.laptopshop.domain.User;
import java.util.List;


@Repository
//User la entity, long kieu du cua khoa chinh (id)
public interface UserRepository extends JpaRepository<User, Long>{
    User save(User eric);
    List<User> findOneByEmail(String email);
    List<User> findAll();
}