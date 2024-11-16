package views.Actions;

import views.Login;
import views.MainTable;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 * @author: 念安
 * @date: 2024-11-16 13:50
 * @description: 
 */
public class ExitListener implements ActionListener {
    MainTable mainTable;
    public void setMainTable(MainTable mainTable) {
        this.mainTable = mainTable;
    }
    @Override
    public void actionPerformed(ActionEvent actionEvent) {
        mainTable.dispose();
        Login login = new Login();
        login.usernameContext.setText("");
        login.passwordContext.setText("");
    }
}