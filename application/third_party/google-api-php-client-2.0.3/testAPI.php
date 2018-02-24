//index-opt-automated.php
<?php
session_start();

require_once 'vendor/autoload.php'; // or wherever autoload.php is located

$client = new Google_Client();
//your gmail tied ClientId (aka Google Console)
$client->setClientId("70421192896-ub9dbjlo58be87pahuirn5mkn7sqcsis.apps.googleusercontent.com");
$client->setClientSecret("H1JkpnYdF3MSxpL9U15Tig9k");
//your gmail tied ClientId (aka Google Console)
$client->setRedirectUri("http://www.forwodians.nl/fwBar/application/third_party/google-api-php-client-2.0.3/testAPI.php");
$client->setAccessType('offline');
$client->setApprovalPrompt('force');
//$client->setDefaultOption('verify', false);

$client->addScope("https://mail.google.com/");
$client->addScope("https://www.googleapis.com/auth/gmail.compose");
$client->addScope("https://www.googleapis.com/auth/gmail.modify");
$client->addScope("https://www.googleapis.com/auth/gmail.readonly");

//if (isset($_REQUEST['code'])) {
//    //land when user authenticated
//    $code = $_REQUEST['code'];
//    $client->authenticate($code);
// 
//    $_SESSION['gmail_access_token'] = $client->getAccessToken();
// 
//  echo $_SESSION['gmail_access_token'];
//  exit;
//    header("Location: https://www.x.com/pipis2");
//}

$_SESSION['gmail_access_token'] = '{"access_token":"x.y-t-o","token_type":"Bearer","expires_in":3600,"refresh_token":"a\/n-m","created":-9}';

//$isAccessCodeExpired = $client->isAccessTokenExpired();
//if (isset($_SESSION['gmail_access_token']) && !empty($_SESSION['gmail_access_token']) && $isAccessCodeExpired != 1) {
if (isset($_SESSION['gmail_access_token']) && !empty($_SESSION['gmail_access_token'])) {

    $client->setAccessToken($_SESSION['gmail_access_token']);
    $objGMail = new Google_Service_Gmail($client);

    $strSubject = 'Αυτό είναι Test mail using GMail API' . date('M d, Y h:i:s A');

    $strRawMessage = "From: Human Test <joe@gmail.com>\r\n";
    $strRawMessage .= "To: 93 Robot <joe@yahoo.com>\r\n";
    $strRawMessage .= 'Subject: =?utf-8?B?' . base64_encode($strSubject) . "?=\r\n";
    $strRawMessage .= "MIME-Version: 1.0\r\n";
    $strRawMessage .= "Content-Type: text/html; charset=utf-8\r\n";
    $strRawMessage .= 'Content-Transfer-Encoding: quoted-printable' . "\r\n\r\n";
    $strRawMessage .= "this <b>is a</b> τηισ είς α τεστ tes2t!\r\n";

    //Users.messages->send - Requires -> Prepare the message in message/rfc822
    try {
        // The message needs to be encoded in Base64URL
        $mime = rtrim(strtr(base64_encode($strRawMessage), '+/', '-_'), '=');
        $msg = new Google_Service_Gmail_Message();
        $msg->setRaw($mime);
		
        //The special value **me** can be used to indicate the authenticated user.
        $objSentMsg = $objGMail->users_messages->send("forwodians.basketbal@gmail.com", $msg);
echo "<pre>";
        print_r($objGMail);
		echo "</pre>";
        print('Message sent object');
        print($objSentMsg);
    } catch (Exception $e) {
        print($e->getMessage());
        unset($_SESSION['gmail_access_token']);
    }
} else {
    // Failed Authentication
    if (isset($_REQUEST['error'])) {
        //header('Location: ./index.php?error_code=1');
        echo "error auth";
    } else {
        // Redirects to google for User Authentication
        $authUrl = $client->createAuthUrl();
        header("Location: $authUrl");
    }
}
?>