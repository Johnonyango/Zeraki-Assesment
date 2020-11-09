package com.john;

import java.util.ArrayList;


public class ReverseCharacters {
    public static void main(String[] args) {
        String inputString = "Lorem at"; // test string  eroLta m
        String outputString = getReversedString(inputString);
        System.out.println(outputString);
        System.out.println(getReversedString(inputString));

    }
    static String getReversedString(String inputString){
        ArrayList<String> outputString = new ArrayList<>();
        int stringLength = inputString.length();
        int mod = stringLength % 4;
        StringBuilder sb = new StringBuilder();

        for (int i= 0; i<= (stringLength - mod);  i+=4){
            try {
                outputString.add(inputString.substring(i, i+4));
            }catch (Exception e){

            }
        }
        if ( mod != 0 ){
            outputString.add(inputString.substring((stringLength-mod), stringLength));
        }

        outputString.forEach((string) ->{
            sb.append(new StringBuilder(string).reverse().toString());
        });
        return sb.toString();
    }
}
