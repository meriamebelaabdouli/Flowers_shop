@Override
public void mouseClicked(MouseEvent e) {
msg = msg + "--Mosue Clicked";
repaint();
}
public void paint(Graphics g) {
g.drawString(msg, mouseX, mouseY);
}
@Override
public void windowOpened(WindowEvent e) {
}
@Override
public void windowClosing(WindowEvent e) {
System.exit(0);
}
@Override
public void windowClosed(WindowEvent e) {
}
@Override
public void windowIconified(WindowEvent e) {
}
@Override
public void windowDeiconified(WindowEvent e) {
}
@Override
public void windowActivated(WindowEvent e) {
}
@Override
public void windowDeactivated(WindowEvent e) {
}
}