package ua.mk.berkut.p1208.beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import ua.mk.berkut.p1208.data.User;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserBean {

    private String username;

    private List<User> users;

}
