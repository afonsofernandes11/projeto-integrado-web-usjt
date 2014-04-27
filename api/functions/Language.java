package functions;

import java.util.Locale;
import java.util.ResourceBundle;

public class Language
{
	private static ResourceBundle lang;
	
	public static ResourceBundle get()
	{
		if( lang == null )
		{
			start(0);
		}
		
		return lang;
	}
	
	public static void start( int language )
	{	
		switch ( language ) 
		{
			case 0:
				lang = ResourceBundle.getBundle( "language/idiomas", new Locale( "pt" ,"BR" ) );
			break;
	
			case 1:
				lang = ResourceBundle.getBundle( "language/idiomas", Locale.US );
			break;
	
			default:
				lang = ResourceBundle.getBundle( "language/idiomas", new Locale( "es" ,"ES" ) );
			break;
	
		}
	}
	
}