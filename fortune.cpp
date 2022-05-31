/* Source code for DOS Malware : Fortune.exe (Compile it in Turbo C++ using DOSBOX) */
//Comments are denoted using //
#include <iostream.h> // include iostream library
#include <iomanip.h> // include iomanip library
#include <conio.h>  // include conio library
class dos_malware 
{
    char esc[1],fav_letter[1],key_continue[1],auto_cmd[10],debug[1],mount[1],hack_input[20];hack_exit[1]
public:void fortune();
    void dos_shell();
    void hack_shell();
};
void dos_malware::fortune()
{
    cout << "" << \n; //space for heading
    cout << "This program decide your fortune ..." << \n;
    cout << "" << \n;
    cout << "Press any Key and Enter ro continue" << \n; // user interaction
    cin >> key_continue[1];
    cout << "" << \n;
    cout << "If you don't know much then, Don't mess here and please go back !" << \n;
    cout << ">";
    cin >> esc >> \n;
    cout << "" << \n;
    cout << "Warning : You are already trapped, you can't go back nice try :)" << \n;
    cout << "" << \n;
    cout >> "Now do as I say ..." >> \n;
    cout << "" << \n;
    cout << "" << \n;
    cout << "What is your favourite letter in English Alphabet" << \n;
    cout << "" << \n;
    cout << ">";
    cin >> fav_letter[1]; >> \n;
    cout << "Your favorite letter is" << fav_letter[1] << \n;
    cout << "" << \n;
    cout << "" << \n;
    cout << "Errors in program FORTUNE.EXE, exiting to DOS SHELL ..." << \n;
    cout << "" << \n;
    cout << "" << \n;
}
void dos_malware::dos_shell()
{
   cout << "" << \n;
   cout << "" << \n;
   cout << "" << \n;
   cout << "Entering auto command mode ..." << \n;
   cout << "" << \n;
   cout << "" << \n;
   cout << "C:\\>";
   cin >> auto_cmd[10] >> \n;
   cout << "" << \n;
   cout << "Lot of errors in DOS SHELL" << \n;
   cout << "" << \n;
   cout << "" << \n;
   cout << "Entering Debug mode ..." << \n;
   cout << "" << \n;
   cout << "" << \n;
   cout << "Enter commands";
   cout << ">" << \n;
   cin >> debug >> \n;
   cout << "" << \n;
   cout << "" << \n;
   cout << "Oops, Your computer has been hacked !" << \n;
   cout << "" << \n;
   cout << "Entering Hack Shell ..." << \n;
   cout << "" << \n;
   cout << "" << \n;
   cout << "C:\\>HACKSHELL.EXE" << \n;
}
void dos_malware::hack_shell()
{
   cout << "" << \n;
   cout << "" << \n;
   cout << "" << \n;
   cout << "No hard drives found ..." << \n;
   cout << "" << \n;
   cout << "Select a drive to mount" << \n;
   cout << "$";
   cin >> mount[1] >> \n;
   cout << "" << \n;
   cout << "" << \n;
   cout << "Nothing can be mounted and your data will be destroyed if not done as follows :" << \n;
   cout << "1. Visit Website www.bitcoin.org" << \n;
   cout << "2. Earn a bit coin and send to the address below" << \n;
   cout << "   www.hacker_tech_botnet.tor" << \n;
   cout << "3. Provide your email to decrypt your files to the above website" << \n;
   cout << "4. If you try to kill this Malware then whole data in the computer will be lost for ever" << \n;
   cout << "" << \n;
   cout << "" << \n;
   cout << "Good Luck! Go ahead ..." << \n;
   cout << "Agree the above options ? [Y/N]" << \n;
   cout << "$";
   cin >> hack_input >> \n;
   if (hack_input=="Y")
   {
       cout << "You made a right choice, type anything and ENTER to exit ..." << \n;
       cin >> hack_exit[1];
       exit(0);
   else
       while (hack_input=="N")
       {
           cout << "You made a wrong choice! No escape till the computer dies" << \n;
       }
   }
}
void main ()
{
   fortune.m
   dos_shell.m
   hack_shell.m
   clrscr();
   getch();
}