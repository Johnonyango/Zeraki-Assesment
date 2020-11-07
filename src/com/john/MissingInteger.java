package com.john;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.IntStream;

public class MissingInteger {
    public static void main(String[] args) {
        int K [] = {3, 1}; //Test Array
        getValuesMissingInArray(K);

    }
    static int getValuesMissingInArray(int[] values){
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int value: values){
            arrayList.add(value);
        }

        // sorting and finding the first and the last
        Collections.sort(arrayList);
        int max = Collections.max(arrayList);
        int min = Collections.min(arrayList);

        //creating a null value to store the missing integer
        int missingInteger = 0;


        //looping through to check and identify the missing value
        for (int i=min; i<max; i++){
            if (!arrayList.contains(i)){
                missingInteger = i;
                break;
            }
        }
        System.out.println(missingInteger);
        return missingInteger;
    }

    }

