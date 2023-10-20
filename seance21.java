import java.awt.event.*;
//Classe indépendante implémentant le listener
public class seance21 implements WindowListener {
public void windowClosing(WindowEvent e) {
System.exit(0);
}
public void windowActivated(WindowEvent e) { }
public void windowClosed(WindowEvent e) { }
public void windowDeactivated(WindowEvent e) { }
public void windowDeiconified(WindowEvent e) { }
public void windowIconified(WindowEvent e) { }
public void windowOpened(WindowEvent e) { }
}
import java.awt.event.*;
//Classe indépendante étandant l'adaptateur du listener
public class ClasseIndependanteEvt2 extends WindowAdapter {
public void windowClosing(WindowEvent e) {
System.exit(0);

}
}
