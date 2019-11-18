package com.ali.loginregistration.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ali.loginregistration.model.User;
import com.ali.loginregistration.services.UserService;

@Controller
public class UsersController {
	private final UserService userService;

	public UsersController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/")
	public String home(@ModelAttribute("user") User user, @ModelAttribute("user_log") User user_log) {
		return "mainPage.jsp";
	}

//	@RequestMapping("/registration")
//	public String registerForm(@ModelAttribute("user") User user) {
//		return "registrationPage.jsp";
//	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
		// if result has errors, return the registration page (don't worry about
		// validations just now)
		// else, save the user in the database, save the user id in session, and
		// redirect them to the /home route
		if (result.hasErrors()) {
			return "mainPage.jsp";
		} else {
			User u = userService.registerUser(user);
			session.setAttribute("userId", u.getId());
			return "redirect:/home";
		}

	}

//	@RequestMapping("/login")
//	public String login() {
//		return "loginPage.jsp";
//	}

	@PostMapping(value = "/login")
	public String login(@ModelAttribute("user") User user, BindingResult result,
			@RequestParam("email_log") String email, @RequestParam("password_log") String password, HttpSession session,
			Model model) {
		// if the user is authenticated, save their user id in session
		// else, add error messages and return the login page
		if (userService.authenticateUser(email, password) == true) {
			User u = userService.findByEmail(email);
			session.setAttribute("userId", u.getId());
			return "redirect:/home";
		} else {
			model.addAttribute("error", "Invalid Credentials. Please try again.");
			return "mainPage.jsp";

		}
	}

	@RequestMapping("/home")
	public String home(HttpSession session, Model model) {
		// get user from session, save them in the model and return the home page
		User u = userService.findUserById((Long) session.getAttribute("userId"));
		model.addAttribute("user", u);
		return "homePage.jsp";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// invalidate session
		// redirect to login page
		session.invalidate();
		return "redirect:/";
	}
}

