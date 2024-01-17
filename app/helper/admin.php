<?php

function admin_controller($controllerName)
{
    $controllerName = strtolower($controllerName);
    return PATH . '/admin/controller/' . $controllerName . '.php';
}

function admin_view($viewName)
{
    return PATH . '/admin/view/' . $viewName . '.php';
}


function admin_url($url = false)
{
    return URL . '/admin/' . $url;
}

function admin_public_url($url = false)
{
    return URL . '/admin/public/' . $url;
}

function user_ranks($rankId = null)
{
    $ranks = [
        1 => 'Yönetici',
        2 => 'Editör',
        3 => 'Üye'
    ];
    return $rankId ? $ranks[$rankId] : $ranks;
}

function permission($url, $action){
    $permissions = json_decode(session('user_permissions'), true);
    if (isset($permissions[$url][$action]))
        return true;
    return false;
}

function permission_page(){
    die('Bu bölümü görüntüleme yetkiniz yok!');
    exit;
}

function send_email($email, $name, $subject, $message)
{

    $mail = new PHPMailer(true);
    try {

        //$mail->SMTPDebug = 2;
        $mail->isSMTP();
        $mail->Host = setting('smtp_host');
        $mail->SMTPAuth = true;
        $mail->Username = setting('smtp_email');
        $mail->Password = setting('smtp_password');
        $mail->SMTPSecure = setting('smtp_secure');
        $mail->Port = setting('smtp_port');
        $mail->CharSet = 'UTF-8';

        $mail->setFrom(setting('smtp_send_email'), setting('smtp_send_name'));
        $mail->addAddress($email, $name);

        $mail->isHTML(true);
        $mail->Subject = $subject;
        $mail->Body = $message;

        $mail->send();
        return true;

    } catch (Exception $e) {
        //echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
        return false;
    }

}