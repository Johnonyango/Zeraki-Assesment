package com.john;

public class MouseJump {
    static int count( int numberOfWaysToJump[], int m, int n ) {
        //  numberOfWaysToJump - the number of ways the mouse can jump, either 1 feet, or 2 feet
        // n- number of stones to be jumped each placed at 1meter interval
        // m- length of array containing the different ways to jump


        // If the number of stones is 0 in between, then we assume the length of the river is only 1 meter
        // and there is only one way to jump the one meter length.
        if (n == 0)
            return 1;

        if (m <=0 && n >= 1)
            return 0;

        return count(numberOfWaysToJump, m - 1, n) +
                count(numberOfWaysToJump, m, n - numberOfWaysToJump[m - 1]);
    }
        public static void main(String[] args)
    {
        int numberOfWaysToJump[] = {1, 2};
        int m = numberOfWaysToJump.length;
        System.out.println( count(numberOfWaysToJump, m, 20));


    }

}

