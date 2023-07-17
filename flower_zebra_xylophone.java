public class PowerOfPartnership {
  
    public static void main(String[] args) {
        System.out.println("The Power of Partnership");
        
        int count = 0;
     
        // loop to print out the number of lines
        while (count < 2000) {
            System.out.println("Line #" + (count + 1));
            count++;
        }
    }
    
    // method to demonstrate the partnership between two variables
    public void partnership(int x, int y) {
        int total = x + y;
        System.out.println("The total of the two variables is: " + total);
    }
}