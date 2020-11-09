package com.john;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.IntStream;

public class MissingInteger {
    public static void main(String[] args) {
        int K[] ={3,5,4,1}; //Test Array  //Only one missing integer is returned
        getValuesMissingInArray(K);

    }
    static int getValuesMissingInArray(int[] K){
        // K - the array with N integers

        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int N: K){
            arrayList.add(N);
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

