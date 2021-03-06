<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers');

// Create shortcuts to some parameters.
$params  = $this->item->params;
$images  = json_decode($this->item->images);
$urls    = json_decode($this->item->urls);
$canEdit = $params->get('access-edit');
$user    = JFactory::getUser();
$info    = $params->get('info_block_position', 0);
JHtml::_('behavior.caption');
?>


<!-- the div below is generated by template starlink &  com_content/article/default override -->
<div class="container-fluid block--grey pt2 pb3 page<?php echo $this->pageclass_sfx; ?>" itemscope itemtype="https://schema.org/Article">
  <meta itemprop="inLanguage" content="<?php echo ($this->item->language === '*') ? JFactory::getConfig()->get('language') : $this->item->language; ?>" />

  <?php if ((bool)$this->params->get('show_page_heading')) : ?>
    <h1 class="block__header"> <?php echo $this->escape($this->params->get('page_heading')); ?> </h1>
  <?php endif;?>

  <?php if ($params->get('show_title')) : ?>
    <h1 class="block__header" itemprop="name">
      <?php echo $this->escape($this->item->title); ?>
    </h1>
  <?php endif; ?>

  <div class="article__body" itemprop="articleBody">
    <?php echo $this->item->text; ?>
  </div>

</div>