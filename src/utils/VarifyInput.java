package utils;

/**
 * @author: 念安
 * @date: 2024-11-16 13:49
 * @description:
 */
public class VarifyInput {
    public static boolean isEmpty(String value){
        if(value == ""|| value.trim().equals("")){
            return true;
        }
        return false;
    }
}