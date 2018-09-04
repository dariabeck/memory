(:~
 : This module contains some basic examplex for TESTXQ annotations
 : @author BaseX Team
 :)
module namespace lc = 'memory/src/controller/lobbyController';

declare function lc:buildHTML($head, $body) 
{
    <html xmlns="http://www.w3.org/1999/xhtml">
        {$head}
        {$body}
    </html>
};

(:~
 : Returns the mainpage
 : @return HTML page
 :)
declare
    %rest:path("/")
    %rest:GET
    %output:method("xhtml")
    %output:omit-xml-declaration("no")
    %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
    %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
    function lc:main()
    as element(Q{http://www.w3.org/1999/xhtml}html)
{
    let $head := doc("../views/lobbyHeader.xml")
    let $body := doc("../views/start.xml")
    return lc:buildHTML($head, $body)
}; 

(:~
 : Returns the menu
 : @return HTML page
 :)
declare
    %rest:path("/menu")
    %rest:GET
    %output:method("xhtml")
    %output:omit-xml-declaration("no")
    %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
    %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
    function lc:menu()
    as element(Q{http://www.w3.org/1999/xhtml}html)
{
    let $head := doc("../views/lobbyHeader.xml")
    let $body := doc("../views/mainMenu.xml")
    return lc:buildHTML($head, $body)
};

(:~
 : Returns the create a new game site
 : @return HTML page
 :)
declare
    %rest:path("/create-game")
    %rest:GET
    function lc:createGame()
{
    doc("../views/createGameXForms.xml")
};

(:~
 : Returns the load a game site
 : @return HTML page
 :)
declare
    %rest:path("/load-game")
    %rest:GET
    %output:method("xhtml")
    %output:omit-xml-declaration("no")
    %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
    %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
    function lc:loadGame()
    as element(Q{http://www.w3.org/1999/xhtml}html)
{
    let $head := doc("../views/lobbyHeader.xml")
    let $body := doc("../views/loadGame.xml")
    return lc:buildHTML($head, $body)
};

declare
    %rest:path("/highscore")
    %rest:GET
    %output:method("xhtml")
    %output:omit-xml-declaration("no")
    %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
    %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
    function lc:highscore()
    as element(Q{http://www.w3.org/1999/xhtml}html)
{
    let $head := doc("../views/lobbyHeader.xml")
    let $body := doc("../views/highscore.xml")
    return lc:buildHTML($head, $body)
};