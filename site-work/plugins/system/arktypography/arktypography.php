<?php
/**
 * @version		$Id: cache.php 21097 2011-04-07 15:38:03Z dextercowley $
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */


// no direct access
defined('_JEXEC') or die;

jimport('joomla.plugin.plugin');

/**
 * Joomla! Page Cache Plugin
 *
 * @package		Joomla.Plugin
 * @subpackage	System.arktypography
 */
 
class plgSystemARKtypography extends JPlugin
{

	public  $cache = null;
	protected $db,$app;
	
	/**
	 * Constructor
	 *
	 * @access	protected
	 * @param	object	$subject The object to observe
	 * @param	array	$config  An array that holds the plugin configuration
	 * @since	1.0
	 */

     
	 public function onAfterInitialise() {
		
		// Work only on front-end
		if ($this->app->isAdmin()){  return; }
	



        $hash = JApplicationHelper::getHash('administrator');
        $cokkie_name = md5($hash);
        $sessionId = $this->app->input->cookie->get($cokkie_name);

        $query = $this->db->getQuery(true)
			->select('count(1)')
			->from($this->db->quoteName('#__session'))
			->where($this->db->quoteName('session_id') . ' = '. $this->db->quote($sessionId))
            ->where('client_id = 1')
            ->where('guest = 0');
         $this->db->setQuery($query);
         $adminCount = $this->db->loadResult();


		$arkeditor = $this->app->input->cookie->get('arkeditor_typography',false);
		
		if (JFactory::getUser()->get('guest') && $adminCount && $arkeditor) {
			$config = JFactory::getConfig();
			$config->set('offline', 0);
		}
		
	}
	 
	 
	 
	 function onAfterRoute()
     {
		if ($this->app->isAdmin()) {
			return;
		}
		
		if(!file_exists(JPATH_PLUGINS.'/editors/arkeditor')) {
			return;
		}

		$doc = JFactory::getDocument();
		
		if($doc->getType() != 'html') {  //If not correct document type  exit
			return;
		}
						
		$data = $doc->getHeadData();
		$stylesheet = array();
		$url = JURI::base(true).'/index.php?option=com_ajax&plugin=arktypography&format=json';
		$stylesheet[$url]['mime'] = 'text/css';
		$stylesheet[$url]['media'] = null;
		$stylesheet[$url]['attribs'] = array();
		$data['styleSheets'] = $stylesheet + $data['styleSheets'];
		$doc->setHeadData($data);
	}
}