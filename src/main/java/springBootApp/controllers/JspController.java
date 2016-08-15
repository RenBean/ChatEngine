package springBootApp.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;
import springBootApp.entities.Chat;
import springBootApp.entities.ChatDAO;

import java.sql.Timestamp;

@Controller
public class JspController {
    @Autowired
    private ChatDAO chatDAO;

    @RequestMapping(value = "/saveChat")
    public View saveChat(String message) {
        Chat chat = new Chat();
        chat.setMessage(message);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        chat.setSender(auth.getName());
        chat.setWhenSent(new Timestamp(System.currentTimeMillis()));
        chatDAO.save(chat);
        return new RedirectView("/viewChats");
    }


    @RequestMapping(value = "/viewChats")
    public String viewChats(ModelMap model) {
        model.addAttribute("chats", chatDAO.findAll());

        return "chats/viewAllChats";

    }

    @RequestMapping(value="/jspTest")
    public String jspTest() {
        return "test/test";
    }

    @RequestMapping(value="/jspChat")
    public String jspChat() {return "chat/chat"; }

    @RequestMapping(value="/jspAddChat")
    public String jspAddChat() {return "chat/addChat"; }
}
