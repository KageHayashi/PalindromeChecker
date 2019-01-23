public void setup()  {
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    if(palindrome(lines[i])==true)  {
      println(lines[i] + " IS a palindrome.");
    }
    else  {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)  {
  String freshWord = onlyLetters(word.toLowerCase());
  if (freshWord.equals(reverse(freshWord))) {
    return true;
  }
  return false;
}
public String reverse(String str)  {
  String word = "";
  
  for (int i = str.length() - 1; i >= 0; i--) {
    word += str.substring(i,i+1);
  }
  return word;
}

public String onlyLetters(String sString){
  String a = "";
  for (int i = 0; i < sString.length(); i++) {
    if (Character.isLetter(sString.charAt(i))) {
      a += sString.charAt(i);
    }
  }
  return a;
}
