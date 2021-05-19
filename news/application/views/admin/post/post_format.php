<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<div class="row">
    <div class="col-sm-12 form-header">
        <a href="<?php echo admin_url(); ?>posts?lang_id=<?php echo $this->general_settings->site_lang; ?>"
           class="btn btn-success btn-add-new pull-right">
            <i class="fa fa-bars"></i>
            <?php echo trans('posts'); ?>
        </a>
    </div>
</div>
<div class="row">
    <div class="col-sm-12 form-header">
        <h1 class="form-title form-title-post-format"><?php echo trans('choose_post_format'); ?></h1>
    </div>
</div>
<div class="row">
    <div class="col-sm-12 post-format-container">
        <?php $format_count = 0;
        if ($this->general_settings->post_format_article == 1):
            $format_count += 1; ?>
            <div class="col-xs-12 col-sm-4 col-add-post">
                <a href="<?php echo admin_url(); ?>add-post?type=article">
                    <div class="item">
                        <div class="item-icon">
                            <i class="icon-article"></i>
                        </div>
                        <h5 class="title"><?php echo trans("article"); ?></h5>
                        <p class="desc"><?php echo trans("article_post_exp"); ?></p>
                    </div>
                </a>
            </div>
        <?php endif; ?>
    </div>
</div>