<?php
error_reporting(E_ALL ^ E_NOTICE);
session_start();
include("config/connect.php");
include("includes/fetch_users_info.php");
include ("includes/time_function.php");
include ("includes/num_k_m_count.php");
if(!isset($_SESSION['Username'])){
    header("location: index");
}
if (is_dir("imgs/")) {
        $check_path = "";
    }elseif (is_dir("../imgs/")) {
        $check_path = "../";
    }elseif (is_dir("../../imgs/")) {
        $check_path = "../../";
    }
?>
<html dir="<?php echo lang('html_dir'); ?>">
<head>
    <title>kartu pelajar</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php include "includes/head_imports_main.php"; ?>
</head>
<body onload="fetchPosts_DB('home');">
<?php include "includes/navbar_main.php"; ?>
<br>
        <div align="center">

            <div class="main_container">
              <div id="trendingWorldWide">
                  <p class="trendingTitle_CenterCol_3"><span class="fa fa-heartbeat"></span><p></p></p>
              <div class="trendingTitle_CenterCol_3" style="background: #3da4ff;"><a href="#" id="trPagesTab" style="background: #fff;"><?php echo lang('pages0'); ?></a> <a href="#" id="trPostsTab"><?php echo lang('bacot'); ?></a></div>
              <div id="trendingPostsPagesLoading" style="display: none;background: url(imgs/loading_video.gif) center center no-repeat;width: 100%;height: 100px">
              </div>
              <div id="trendingPostsPages">
                <script>
                function trendingPostsPages() {
                    $.ajax({
                        url:'includes/fetchTrending.php',
                        type:'POST',
                        beforeSend:function(){
                        $("#trendingPostsPagesLoading").show();
                        },
                        success:function(results) {
                            $("#trendingPostsPagesLoading").hide();
                            $("#trendingPostsPages").html(results);
                        }
                    });
                }
                trendingPostsPages();
                </script>
              </div>
              </div>

            <?php
            $uid = $_SESSION['id'];
            $sqlQ = "SELECT aSetup FROM signup WHERE id=:uid";
            $sqlQ_check = $conn->prepare($sqlQ);
            $sqlQ_check->bindParam(':uid',$uid,PDO::PARAM_INT);
            $sqlQ_check->execute();
            while ($aSetupDB = $sqlQ_check->fetch(PDO::FETCH_ASSOC)) {
                $aSetupFromDb = $aSetupDB['aSetup'];
            }
            if ($aSetupFromDb != 100) {
            ?>
            <div id="AccountSetup">
            </div>
            <?php
            if ($aSetupProg == 100 ) {
                $uid = $_SESSION['id'];
                $sqlQ = "UPDATE signup SET aSetup = :aSetupProg WHERE id = :uid";
                $sqlQ_check = $conn->prepare($sqlQ);
                $sqlQ_check->bindParam(':aSetupProg',$aSetupProg,PDO::PARAM_INT);
                $sqlQ_check->bindParam(':uid',$uid,PDO::PARAM_INT);
                $sqlQ_check->execute();
                echo "<script>$('#AccountSetup').html('');</script>";
            }
            }
            ?>
                <div class="write_post">
                <?php echo $err_success_Msg; ?>
                    <?php include("includes/w_post_form.php"); ?>
                </div>
                   <div id="FetchingPostsDiv">
                </div>
                <div class="post loading-info" id="LoadingPostsDiv" style="padding: 8px;padding-bottom: 100px;">
                    <div class="animated-background">
                        <div class="background-masker header-top"></div>
                        <div class="background-masker header-left"></div>
                        <div class="background-masker header-right"></div>
                        <div class="background-masker header-bottom"></div>
                        <div class="background-masker subheader-left"></div>
                        <div class="background-masker subheader-right"></div>
                        <div class="background-masker subheader-bottom"></div>
                        <div class="background-masker content-top"></div>
                        <div class="background-masker content-first-end"></div>
                        <div class="background-masker content-second-line"></div>
                        <div class="background-masker content-second-end"></div>
                        <div class="background-masker content-third-line"></div>
                        <div class="background-masker content-third-end"></div>
                    </div>
                </div>
                <div class="post  loading-info" id="NoMorePostsDiv" style="display: none;">
                  <p style="color: #b1b1b1;text-align: center;padding: 15px;margin: 0px;font-size: 18px;"><?php echo lang('noMoreStories'); ?></p>
                </div>
                <div class="post  loading-info" id="LoadMorePostsBtn" style="display: none;">
                  <button class="blue_flat_btn" style="width: 100%" onclick="fetchPosts_DB('home')"><?php echo lang('load_more'); ?></button>
                </div>
                <input type="hidden" id="GetLimitOfPosts" value="5">
        </div>
        </div>
</div>
<script type="text/javascript">
$('.postContent_EditBox').each(function () {
  this.setAttribute('style', 'height:' + (this.scrollHeight) + 'px;overflow-y:hidden;text-align:' + "<?php echo lang('post_textbox_align'); ?>;");
}).on('input', function () {
  this.style.height = 'auto';
  this.style.height = (this.scrollHeight) + 'px';
});
$("#trPagesTab").click(function(){
$("#trPagesTab").css({"background": "#fff"});
$("#trPostsTab").css({"background": "#e9ebee"});
$("#trPages").show();
$("#trPosts").hide();
});
$("#trPostsTab").click(function(){
$("#trPostsTab").css({"background": "#fff"});
$("#trPagesTab").css({"background": "#e9ebee"});
$("#trPosts").show();
$("#trPages").hide();
});
</script>
<?php include "includes/endJScodes.php"; ?>
<?php include("includes/footer.php");?>
</body>
</html>
