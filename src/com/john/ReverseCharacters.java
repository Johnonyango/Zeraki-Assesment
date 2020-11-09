package com.john;

import java.util.ArrayList;


public class ReverseCharacters {
    public static void main(String[] args) {
        String inputString = "Lorem at"; // test string
        String outputString = getReversedString(inputString);
        System.out.println(outputString);
        System.out.println(getReversedString(inputString));

    }
    static String getReversedString(String inputString){

        //arrayList - reference variable to store the output string
        ArrayList<String> arrayList = new ArrayList<>();
        int stringLength = inputString.length();

        // mod - modulus to after dividing the length of input string by 4
        int mod = stringLength % 4;
        StringBuilder sb = new StringBuilder();
        for (int i= 0; i<= (stringLength - mod);  i+=4){
            try {
                arrayList.add(inputString.substring(i, i+4));
            }catch (Exception e){
                System.out.println(e.getCause());
            }
        }
        if ( mod != 0 ){
            arrayList.add(inputString.substring((stringLength-mod), stringLength));
        }

        arrayList.forEach((string) ->{
            sb.append(new StringBuilder(string).reverse().toString());
        });
        return sb.toString();
    }
}
