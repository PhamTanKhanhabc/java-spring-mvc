package vn.hoidanit.laptopshop.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserService;


@Controller
public class UserController {
    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }
    //GetMapping hiểu là dùng method get luôn
    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> arrUsers = this.userService.getAllUsersByEmail("1@gmail.com");
        System.out.println(arrUsers);
        model.addAttribute("eric", "test");
        model.addAttribute("hoidanit", "from controller with model");
        return "hello"; //View trong MVC
    }
    @RequestMapping("/admin/user") //GET
    public String getUserPage(Model model) {
        List<User> users = this.userService.getAllUser();
        model.addAttribute("users1", users);
        return "admin/user/table-user"; //View trong MVC
    }
    @RequestMapping("/admin/user/{id}") //GET
    public String getUserDetailPage(Model model, @PathVariable long id) {
        System.out.println("Check path id=" + id);
        model.addAttribute("id", id);
        return "admin/user/show"; //View trong MVC
    }
    @RequestMapping("/admin/user/create") //GET
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create"; //View trong MVC
    }
    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String createUserPage(Model model , @ModelAttribute("newUser") User hoidanit) { //@ModelAttribute("newUser"): lay thuoc tinh, User: kdl, hoidanit: dat ten bien
        System.out.println("Run here" + hoidanit); 
        this.userService.handleSaveUser(hoidanit);
        return "redirect:/admin/user"; //redirect: yêu cầu trình duyệt truy cập sang URL khác(URL phía trên). //kh co redirect thi chi chuyen view khong chuyen sang url khac
    }
}


//notes: controller thuong khong viet het code trong nay, ma chi la thang dieu huong
//Dependency Injection (DI)
//     //DI
//     // 👉 Thay vì bạn tự tạo object:
//     // UserService userService = new UserService();
//     // 👉 Spring sẽ làm thay bạn:
//     // UserController(UserService userService)
//     // Dependency Injection (DI) là kỹ thuật trong lập trình mà trong đó các đối tượng (dependency) được “tiêm” từ bên ngoài vào một class thay vì class tự tạo ra chúng.
