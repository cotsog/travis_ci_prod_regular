import java.net.InetAddress;
import java.io.IOException;
import java.io.InputStream;
import java.util.Scanner;
class Main {
    public static void main(String[] args) throws IOException {
        String OS = System.getProperty("os.name").toLowerCase();

        if (OS.indexOf("win") >= 0) {
            System.out.println("Windows computer name through env:\"" + System.getenv("COMPUTERNAME") + "\"");
            System.out.println("Windows computer name through exec:\"" + execReadToString("hostname") + "\"");
        } else {
            if (OS.indexOf("nix") >= 0 || OS.indexOf("nux") >= 0) {
                System.out.println("Linux computer name through env:\"" + System.getenv("HOSTNAME") + "\"");
                System.out.println("Linux computer name through exec:\"" + execReadToString("hostname") + "\"");
                System.out.println("Linux computer name through /etc/hostname:\"" + execReadToString("cat /etc/hostname") + "\"");
                System.out.println("Linux computer name through InetAddress.getLocalHost():\"" + InetAddress.getLocalHost().getHostName() + "\"");
            }
        }
    }

    public static String execReadToString(String execCommand) throws IOException {
        Process proc = Runtime.getRuntime().exec(execCommand);
        try (InputStream stream = proc.getInputStream()) {
            try (Scanner s = new Scanner(stream).useDelimiter("\\A")) {
                return s.hasNext() ? s.next() : "";
            }
        }
    }
}
