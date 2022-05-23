import java.util.*;  
class DateI  
{  
    String date;   
    DateI(String date)  
    {    
        this.date = date;  
    }  
}  
class sortCompare implements Comparator<DateI>   
{  
    @Override  
    public int compare(DateI a, DateI b)  
    {  
        return a.date.compareTo(b.date);  
    }  
}  
public class test   
{  
 
    public static void main(String args[])  
    {  
        ArrayList<DateI> dates = new ArrayList<>();   
        dates.add(new DateI("2021-05"));  
        dates.add(new DateI("2019-06"));  
        dates.add(new DateI("1998-02"));  
        dates.add(new DateI("1999-04"));  
 
        Collections.sort(dates, new sortCompare());  
        System.out.println("Dates sorted in Ascending Order");  
        for (DateI d : dates)   
        {  
            System.out.println(d.date);  
        }  
    }  
}  