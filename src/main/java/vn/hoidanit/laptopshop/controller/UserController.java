package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.hoidanit.laptopshop.service.UserService;


@Controller
public class UserController {
    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }
    
    @RequestMapping("/")
    public String getHomePage(Model model) {
        String test = this.userService.handleHello();
        model.addAttribute("eric", test);
        model.addAttribute("hoidanit", "from controller with model");
        return "hello"; //View trong MVC
    }
}


//notes: controller thuong khong viet het code trong nay, ma chi la thang dieu huong
//Dependency Injection (DI)

// @RestController
// public class UserController {
//     private UserService userService;


//     //DI
//     // 👉 Thay vì bạn tự tạo object:
//     // UserService userService = new UserService();
//     // 👉 Spring sẽ làm thay bạn:
//     // UserController(UserService userService)
//     // Dependency Injection (DI) là kỹ thuật trong lập trình mà trong đó các đối tượng (dependency) được “tiêm” từ bên ngoài vào một class thay vì class tự tạo ra chúng.
//     public UserController(UserService userService) {
//         this.userService = userService;
//     }

//     @GetMapping("")
//     public String getHomePage() {
//         return this.userService.handleHello();
//     }
// }
