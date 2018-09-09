/**
     * 模拟机器人来发表微博评论
     */
    define('SECRET', '67%$#ap28');
    
    function m_token() {
        $str = mt_rand(1000, 9999);
        $str2 = dechex($_SERVER['REQUEST_TIME'] - $str);
        return $str . substr(md5($str . SECRET), 0, 10) . $str2;
    }
    
    function v_token($str, $delay = 3) {
        $rs = substr($str, 0, 4); 
        $middle = substr($str, 0, 14);
        $rs2 = substr($str, 14, 8); 
        return ($middle == $rs.substr(md5($rs.SECRET), 0, 10)) &&  
            ($_SERVER['REQUEST_TIME'] - hexdec($rs2) - $rs < $delay);
    }
    
    ?>
    <html>
    <meta charset="utf-8">
    <head>
    <title>提交验证</title>
    <script></script>
    </head>
    <body>
        <form action="" method="post">
            <input name="user" value="" />
            <input type="submit" name="submit" value="提交" />
            <input type="hidden" name="token" value="<?php echo m_token();?>" />
        </form>






        
    </body>
    </html>