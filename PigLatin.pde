public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
    //not used
}
public int findFirstVowel(String word)
//precondition: word is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in word.  If there are no vowels, returns -1
{

	for(int i = 0; i < word.length(); i++)
  {
    if(word.substring(i, i+1).equals("a"))
      return i;
    else if(word.substring(i, i+1).equals("e"))
      return i;
    else if(word.substring(i, i+1).equals("i"))
      return i;
    else if(word.substring(i, i+1).equals("o"))
      return i;
    else if(word.substring(i, i+1).equals("u"))
      return i;
  }
  return -1;
}

public boolean quphrase(String word)
{
	if(word.substring(0, 2).equals("qu"))
    	return true;
    return false;
}



public boolean FirstletterVowel(String word)
{ 
    if(word.substring(0, 1).equals("a"))
      return true;
 
    else if(word.substring(0, 1).equals("e"))
      return true;
 
    else if(word.substring(0, 1).equals("i"))
      return true;
 
    else if(word.substring(0, 1).equals("o"))
      return true;
 
    else if(word.substring(0, 1).equals("u"))
      return true;
 	
 	else 
 	  return false;
}


public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{	
	if(FirstletterVowel(sWord) == true)
		return(sWord += "way");
	
	else if (quphrase(sWord) == true)
		return(sWord.substring(2)+"quay");

	else if(findFirstVowel(sWord) == -1)
		 return(sWord += "ay");
	
	else
		{
			int i = findFirstVowel(sWord);
			return(sWord.substring(i)+sWord.substring(0,i)+"ay");
		}
}
