import java.net.InetAddress;
class Main {
  public static void main(String[] args) {
    try {
    System.out.println( InetAddress.getLocalHost().getHostName()  );
    } catch (Exception e) {
      System.out.println(e.getMessage());
    }
  }
}
