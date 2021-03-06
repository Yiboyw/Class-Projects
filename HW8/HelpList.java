
class List
{
   int  value;
   List next;
}

public class HelpList
{
   /* =====================================================
      InsertList(h,e): write the algorithm in Java first !

      Compile with:  javac HelpList.java
      Run with:      java HelpList

      Correct output:
			List = 30
			List = 10 30
			List = 10 30 50
			List = 10 20 30 50
			List = 10 20 30 40 50
      ===================================================== */
   public static List InsertList(List h, List e)
   {
	List help;
	if(h == null)
	{
		e.next = null;
                return e;
	}
	
	if(h.value > e.value){
		e.next = h;
		return e;
	}

	/*
	//compares the inserted item e to the first item of the list. If it is less, 
       //move e to the beginning of the list
        if(e.value < h.value) {
		help = e; 
		help.next = h;
		h.next = help; //sets next element in the list to new list help, which is null
	}
	
	if (e.value > h.value{
		help = InsertList(h.next, e)
		h.next = help;
	}	return h;	

	
	if(e.value <= h.next.value ){ //&& h != null && h.next != null
		help = e; 
		if(help.next !=null) {		
		help.next = h.next;
		}
		h.next = help;
	} 
	*/
	
	else {
            	 help = InsertList(h.next, e);
	   	 h.next = help;
           	 return h; 	
	}
	
   }

   public static void main(String[] args)
   {
      int[] v = {30, 50, 10, 40, 20};
      
      List head = null;
      List elem;

      for ( int i = 0; i < v.length; i++ )
      {
         elem = new List(); 
         elem.value = v[i];
         head = InsertList(head, elem);
         System.out.print("List = ");
         PrintList( head );
         System.out.println();
      }
   }

   public static void PrintList(List h)
   {
      if ( h == null )
         return;
      else
      {
	 System.out.print(h.value + " ");
	 PrintList(h.next);
      }
   }
}Help
