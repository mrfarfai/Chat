<?php
    require 'config.php';
    $id = $_GET['id'];
    if(!$id) {
        die(header("location: login.php"));
    }

    $query = "SELECT * FROM `user` WHERE `id` = $id";
    $user = mysqli_fetch_assoc(mysqli_query($conn, $query));

    $query = "SELECT * FROM `user` WHERE `id` != $id";
    $other = mysqli_fetch_assoc(mysqli_query($conn, $query));
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "icon" href = "/logo.png" type = "image/x-icon">
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="/style.css">
    
    <!----===== Boxicons CSS ===== -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <?= $link ?>

    <title>IRSIYAT Chat</title> 
</head>

<style type="text/css">
    
:root, body.dark{
    /* ===== Colors ===== */
    --body-color: <?= $status_color[$user["status"]];?>6b;
}

</style>
<body>
    
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                    <img class="bx bx-moon" src="/user2.png" alt="">
                </span>

                <div class="text logo-text user_<?= $user['id']; ?>">
                    <span class="name"><?= $user["name"]; ?></span>
                    <small class="profession" style="color: <?= $status_color[$user["status"]];?>"><?= $status[$user["status"]]; ?></small>
                </div>
            </div>

            <i class='bx bx-chevron-right toggle'></i>
        </header>
        <hr>
        <div class="menu-bar">
            <div class="menu">

                <ul class="menu-links">
                    <li class="nav-link">
                        <a href="#">
                            
                            <img src="user.png" class="bx user_list_photo icon">
                            <div class="user_<?= $other['id']; ?>">
                                <span class="text nav-text" style="display: block;"><?= $other["name"]; ?></span>
                                <small class="text nav-text" style="color: <?= $status_color[$other["status"]];?>"><?= $status[$other["status"]]; ?></small>
                            </div>
                            
                        </a>
                    </li>
                    

                </ul>
            </div>
            <div class="bottom-content">

                <li class="mode">
                    <div class="sun-moon">
                        <i class='bx bx-moon icon moon'></i>
                        <i class='bx bx-sun icon sun'></i>
                    </div>
                    <span class="mode-text text">Dark mode</span>

                    <div class="toggle-switch">
                        <span class="switch"></span>
                    </div>
                </li>
                
            </div>
        </div>

    </nav>

    <div class="navbar" style="display: none;">
        <ul>
            <li class="SunMoon">
                <a href="#">
                    <i class='bx bx-sun mobile-sun-i'></i>
                    <i class='bx bx-moon mobile-moon-i'></i>
                </a>
            </li>
        </ul>
    </div>


    <section class="home">
        <div class="nav">
            <img src="user.png">
            <div class="user_<?= $other['id']; ?>">
                <span style="display: block;"><?= $other["name"]; ?></span>
                <small style="color: <?= $status_color[$other["status"]];?>"><?= $status[$other["status"]]; ?></small>
            </div>
        </div>
        <div class="home2">
            <div class="content">
                <div class="msg">
                    <?php
                        $query = "SELECT * FROM `chat` ORDER BY `status`, `id`";
                        $res = mysqli_query($conn, $query);
                        if(mysqli_num_rows($res)) {
                            while($row = mysqli_fetch_assoc($res)) {
                                if($row["to_user"] == $id) {
                                    if(substr($row['msg'], 0, 2) == '{[') {
                                        $img = substr($row['msg'], 2, -2);
                                        echo '<img src="img/'. $img .'.png"><div class="not_my_msg_dt">'. $row['send_dt'] .'</div>';
                                    }
                                    else {
                                        echo '
                                        <div class="not_my_msg">
                                            '. $row['msg'] .'
                                        </div>
                                        <div class="not_my_msg_dt">'. $row['send_dt'] .'</div>
                                        ';   
                                    }
                                    
                                }
                                else  {
                                    if(substr($row['msg'], 0, 2) == '{[') {
                                        $img = substr($row['msg'], 2, -2);
                                        echo '<img src="img/'. $img .'.png" class="msg_img"><div class="my_msg_dt">'. $row['send_dt'] .'</div>';
                                    }
                                    else {
                                        echo '
                                        <div class="my_msg">
                                            '. $row['msg'] .'
                                        </div>
                                        <div class="my_msg_dt">'. $row['send_dt'] .'</div>
                                        ';   
                                    }
                                }
                            }
                        }
                    ?>                    

                </div>
                <div class="send">
                    <div class="emoji">
                    </div>
                    <form>
                        <input type="text" class="from_user" hidden value="<?= $id; ?>">
                        <input type="text" class="to_user" hidden value="<?= $other['id']; ?>">
                        <textarea class="user_msg"></textarea>
                        <i class='bx bx-send send-msg'></i>
                    </form>
                </div>
            </div>
        </div>
        
    </section>

    <script src="/script.js"></script>

    
    <?= $script ?>

</body>
</html>