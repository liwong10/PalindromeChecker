public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String Trevor= new String();
  String help= new String();
  for (int i=0; i<word.length(); i++){
    if ((Character.isUpperCase(word.charAt(i))==true)){
       help=word.substring(i,i+1).toLowerCase();
       Trevor=Trevor+help;
    }
    else
    Trevor=Trevor+word.substring(i,i+1);
  }
  word=Trevor;


    String elbow=new String();
  for (int i=0; i<word.length(); i++){
  if (!(word.substring(i,i+1).equals(" ")))
  elbow=elbow+word.substring(i,i+1);
  }
  word=elbow;

    String noPunc= new String();
  for (int i=0; i<word.length(); i++){
    if ((Character.isLetter(word.charAt(i))==true))
    //count=count+1;
    noPunc=noPunc+word.substring(i,i+1);
  }
word= noPunc;

  if (reverse(word).equals(word))
  return true;
  return false;
}
public String reverse(String str)
{
  String back=new String();
  int jesus=str.length()-1;
  //String wards=new String();
 for (int i=0; i<str.length(); i++){
   //jesus=jesus-1;
   back=back+str.substring(jesus-i,jesus-i+1);
 }
 return back;
}


