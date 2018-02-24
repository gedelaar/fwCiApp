<?php

//ontvangst van data van de pagina
	$datum = $_GET["dt"];
	$tijd = $_GET["td"];	
	$locatie = $_GET["lc"];	
	$oms = $_GET["tp"];	
	echo "xx icall";
	iCallCreate($datum, $tijd, $locatie, $oms);
	
function iCallCreate($datum, $tijd, $locatie, $oms){
	echo "<br>".$datum;
	echo "<br>".$tijd;
	echo "<br>".$locatie;
	echo "<br>".$oms;	
	//DIE;
	require_once( "class/iCalcreator.class.php" );	
	$tz = "Europe/Amsterdam";                                  // define time zone
	$config = array( "unique_id" => "forwodians.nl",           // set Your unique id, 
                                                           // required if any component UID is missing
                "TZID"      => $tz,
				"directory" => "../temp/icall",
				"filename" => "calendar.ics" 
				 );                     // opt. set "calendar" timezone

	//if(!isset($v)){
		$v = new vcalendar( $config );                             // create a new calendar object instance

		$v->setProperty( "method", "PUBLISH" );                    // required of some calendar software

		$v->setProperty( "x-wr-calname", $oms );      // required of some calendar software
		$v->setProperty( "X-WR-CALDESC", $oms ); // required of some calendar software
		$v->setProperty( "X-WR-TIMEZONE", $tz );                   // required of some calendar software

		$xprops = array( "X-LIC-LOCATION" => $tz );                // required of some calendar software
		iCalUtilityFunctions::createTimezone( $v, $tz, $xprops );  // create timezone component(-s) opt. 1
	//.. .                                                       // based on present date
	//.. .
	//}
	$vevent = & $v->newComponent( "vevent" );                  // create an event calendar component
	$vevent->setProperty( "dtstart", array( "year"  => substr($datum,6,4)
                                      , "month" =>    substr($datum,3,2)
                                      , "day"   =>    substr($datum,0,2)
                                      , "hour"  =>   substr($tijd,0,2)
                                      , "min"   =>    substr($tijd,3,2)
                                      , "sec"   =>    0 ));
	$vevent->setProperty( "dtend",   array( "year"  => substr($datum,6,4)
                                      , "month" =>    substr($datum,3,2)
                                      , "day"   =>    substr($datum,0,2)
                                      , "hour"  =>   substr($tijd,0,2)+2
                                      , "min"   =>    substr($tijd,3,2)
                                      , "sec"   =>    0 ));

	$vevent->setProperty( "LOCATION", $locatie );       // property name - case independent
	$vevent->setProperty( "summary", $oms );
	$vevent->setProperty( "description", $oms );
	$vevent->setProperty( "comment", "Forwodians event" );
	//echo "hier";
	//$vevent->setProperty( "attendee", "attendee1@icaldomain.net" );
//.. .
	//$valarm = & $vevent->newComponent( "valarm" );             // create an event alarm
	//$valarm->setProperty("action", "DISPLAY" );
	//$valarm->setProperty("description", $vevent->getProperty( "description" ));
//.. .                                                       // reuse the event description
	//$d = sprintf( '%04d%02d%02d %02d%02d%02d', 2007, 3, 31, 15, 0, 0 );
	//iCalUtilityFunctions::transformDateTime( $d, $tz, "UTC", "Ymd\THis\Z");
	//$valarm->setProperty( "trigger", $d );                     // create alarm trigger (in UTC datetime)
//.. .
	//$vevent = & $v->newComponent( "vevent" );                  // create next event calendar component
	//$vevent->setProperty( "dtstart", "20070401", array("VALUE" => "DATE"));// alt. date format,
                                                           //  now for an all-day event
	//$vevent->setProperty( "organizer" , "boss@icaldomain.com" );
	//$vevent->setProperty( "summary", "ALL-DAY event" );
	//$vevent->setProperty( "description", "This is a description for an all-day event" );
	//$vevent->setProperty( "resources", "COMPUTER PROJECTOR" );
	//$vevent->setProperty( "rrule", array( "FREQ" => "WEEKLY", "count" => 4));// weekly, four occasions
	//$vevent->parse( "LOCATION:1CP Conference Room 4350" );     // supporting parse of
                                                           //  strict rfc5545 formatted text

	// all calendar components are described in rfc5545
	// a complete iCalcreator function list (ex. setProperty) in iCalcreator manual

	//iCalUtilityFunctions::createTimezone( $v, $tz, $xprops);   // create timezone component(-s) opt. 2
                                                           // based on all start dates in events
                                                           // (i.e. dtstart)
														   
	$result = $v->saveCalendar();
	if( !$result ) {
		echo "error when saving.. .";
		}
		
	$filename = "calendar.ics";

	$download_path = '../temp/icall/';


	if(eregi("\.\.", $filename)) die("I'm sorry, you may not download that file.");

	$file = str_replace("..", "", $filename);
	// Make sure we can't download .ht control files. if(eregi("\.ht.+", $filename)) die("I'm sorry, you may not download that file.");

	// Combine the download path and the filename to create the full path to the file. 
	$file = $download_path.$filename;
	echo "<br>download path = ".$file;
	output_file($file,$file,'ics');
	// Test to ensure that the file exists. 
//	if(!file_exists($file)) die("I'm sorry, the file doesn't seem to exist.");
	// Extract the type of file which will be sent to the browser as a header//
//	$type = filetype($file); // Get a date and timestamp $today = date("F j, Y, g:i a"); $time = time(); // Send file headers header("Content-type: $type"); header("Content-Disposition: attachment;filename=$filename");
//	header("Content-Transfer-Encoding: binary"); 
//	header('Pragma: no-cache'); 
//	header('Expires: 0'); // Send the file contents.
//	set_time_limit(0); 
//	readfile($file);
	return;
}


//This application is developed by www.webinfopedia.com
//visit www.webinfopedia.com for PHP,Mysql,html5 and Designing tutorials for FREE!!!
function output_file($file, $name, $mime_type='')
{
 /*
 This function takes a path to a file to output ($file),  the filename that the browser will see ($name) and  the MIME type of the file ($mime_type, optional).
 */
 
 //Check the file premission
 if(!is_readable($file)) die('File not found or inaccessible!');
 
 $size = filesize($file);
 $name = rawurldecode($name);
 
 /* Figure out the MIME type | Check in array */
 $known_mime_types=array(
 	"pdf" => "application/pdf",
 	"txt" => "text/plain",
 	"ics" => "text/calendar",	
 	"html" => "text/calendar",
 	"htm" => "text/calendar",
	"exe" => "application/octet-stream",
	"zip" => "application/zip",
	"doc" => "application/msword",
	"xls" => "application/vnd.ms-excel",
	"ppt" => "application/vnd.ms-powerpoint",
	"gif" => "image/gif",
	"png" => "image/png",
	"jpeg"=> "image/jpg",
	"jpg" =>  "image/jpg",
	"php" => "text/plain"
 );
 
 if($mime_type==''){
	 $file_extension = strtolower(substr(strrchr($file,"."),1));
	 if(array_key_exists($file_extension, $known_mime_types)){
		$mime_type=$known_mime_types[$file_extension];
	 } else {
		$mime_type="application/force-download";
	 };
 };
 
 //turn off output buffering to decrease cpu usage
 @ob_end_clean(); 
 
 // required for IE, otherwise Content-Disposition may be ignored
 if(ini_get('zlib.output_compression'))
  ini_set('zlib.output_compression', 'Off');
 
 header('Content-Type: ' . $mime_type);
 header('Content-Disposition: attachment; filename="'.$name.'"');
 header("Content-Transfer-Encoding: binary");
 header('Accept-Ranges: bytes');
 
 /* The three lines below basically make the 
    download non-cacheable */
 header("Cache-control: private");
 header('Pragma: private');
 header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
 
 // multipart-download and download resuming support
 if(isset($_SERVER['HTTP_RANGE']))
 {
	list($a, $range) = explode("=",$_SERVER['HTTP_RANGE'],2);
	list($range) = explode(",",$range,2);
	list($range, $range_end) = explode("-", $range);
	$range=intval($range);
	if(!$range_end) {
		$range_end=$size-1;
	} else {
		$range_end=intval($range_end);
	}
	/*
	------------------------------------------------------------------------------------------------------
	//This application is developed by www.webinfopedia.com
	//visit www.webinfopedia.com for PHP,Mysql,html5 and Designing tutorials for FREE!!!
	------------------------------------------------------------------------------------------------------
 	*/
	$new_length = $range_end-$range+1;
	header("HTTP/1.1 206 Partial Content");
	header("Content-Length: $new_length");
	header("Content-Range: bytes $range-$range_end/$size");
 } else {
	$new_length=$size;
	header("Content-Length: ".$size);
 }
 
 /* Will output the file itself */
 $chunksize = 1*(1024*1024); //you may want to change this
 $bytes_send = 0;
 if ($file = fopen($file, 'r'))
 {
	if(isset($_SERVER['HTTP_RANGE']))
	fseek($file, $range);
 
	while(!feof($file) && 
		(!connection_aborted()) && 
		($bytes_send<$new_length)
	      )
	{
		$buffer = fread($file, $chunksize);
		print($buffer); //echo($buffer); // can also possible
		flush();
		$bytes_send += strlen($buffer);
	}
 fclose($file);
 } else
 //If no permissiion
 die('Error - can not open file.');
 //die
die();
}
//Set the time out

set_time_limit(0);

//path to the file
$file_path='files/'.$_REQUEST['filename'];


//Call the download function with file path,file name and file type
output_file($file_path, ''.$_REQUEST['filename'].'', 'text/calendar');

	/*
	//This application is developed by www.webinfopedia.com
	//visit www.webinfopedia.com for PHP,Mysql,html5 and Designing tutorials for FREE!!!
 	*/
	
?>
