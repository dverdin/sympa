<!-- RCS Identication ; $Revision$ ; $Date$ -->


<FORM ACTION="[path_cgi]" METHOD=POST>

<P>
<TABLE>
 <TR>
   <TD NOWRAP><B>Listenname:</B></TD>
   <TD><INPUT TYPE="text" NAME="listname" SIZE=30 VALUE="[saved->listname]"></TD>
   <TD><img src="/icons/unknown.gif" alt="Der Listenname - Achtung! Nicht die Adresse!"></TD>
 </TR>
 
 <TR>
   <TD NOWRAP><B>Besitzer:</B></TD>
   <TD><I>[user->email]</I></TD>
   <TD><img src="/icons/unknown.gif" alt="Der privilegierte Besitzer der Liste"></TD>
 </TR>

 <TR>
   <TD valign=top NOWRAP><B>Listentyp:</B></TD>
   <TD>
     <MENU>
  [FOREACH template IN list_list_tpl]
     <INPUT TYPE="radio" NAME="template" Value="[template->NAME]"
     [IF template->selected]
       CHECKED
     [ENDIF]
     > [template->NAME]<BR>
     <BLOCKQUOTE>
     [PARSE template->comment]
     </BLOCKQUOTE>
     <BR>
  [END]
     </MENU>
    </TD>
    <TD valign=top><img src="/icons/unknown.gif" alt="Der Listentyp legt einige Parameter fest. Diese k&ouml;nnen nach der Erzeugung der Liste einzeln ge&auml;ndert werden"></TD>
 </TR>
 <TR>
   <TD NOWRAP><B>Titel:</B></TD>
   <TD><INPUT TYPE="text" NAME="subject" SIZE=60 VALUE="[saved->subject]"></TD>
   <TD><img src="/icons/unknown.gif" alt="Der Titel der Liste"></TD>
 </TR>
 <TR>
   <TD NOWRAP><B>Themengebiet:</B></TD>
   <TD><SELECT NAME="topics">
	<OPTION VALUE="">--W&auml;hlen Sie ein Themengebiet--
	[FOREACH topic IN list_of_topics]
	  <OPTION VALUE="[topic->NAME]"
	  [IF topic->selected]
	    SELECTED
	  [ENDIF]
	  >[topic->title]
	  [IF topic->sub]
	  [FOREACH subtopic IN topic->sub]
	     <OPTION VALUE="[topic->NAME]/[subtopic->NAME]">[topic->title] / [subtopic->title]
	  [END]
	  [ENDIF]
	[END]
     </SELECT>
   </TD>
   <TD valign=top><img src="/icons/unknown.gif" alt="Listenklassifikation"></TD>
 </TR>

 <TR>
   <TD valign=top NOWRAP><B>Beschreibung:</B></TD>
   <TD><TEXTAREA COLS=60 ROWS=10 NAME="info">[saved->info]</TEXTAREA></TD>
   <TD valign=top><img src="/icons/unknown.gif" alt="Ein paar Zeilen &uuml;ber Sinn und Zweck der Mailing-Liste"></TD>
 </TR>

 <TR>
   <TD COLSPAN=2 ALIGN="center">
    <TABLE>
     <TR>
      <TD BGCOLOR="[light_color]">
<INPUT TYPE="submit" NAME="action_create_list" VALUE="Mailing-Liste erzeugen">
      </TD>
     </TR></TABLE>
</TD></TR>
</TABLE>



</FORM>




