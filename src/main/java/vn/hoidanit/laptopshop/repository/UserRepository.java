package vn.hoidanit.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.hoidanit.laptopshop.domain.User;
import java.util.List;



@Repository
//User la entity, long kieu du cua khoa chinh (id)
public interface UserRepository extends JpaRepository<User, Long>{
    // Lưu User vào database (Insert hoặc Update)
    // -> Nếu User chưa tồn tại: INSERT
    // -> Nếu User đã tồn tại: UPDATE
    User save(User eric);

    void deleteById(long id);

    List<User> findOneByEmail(String email);
    List<User> findAll();
    User findById(long id);
}