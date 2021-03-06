<?php defined('_JEXEC') or die;
/**
 * @package   Fox Contact for Joomla
 * @copyright Copyright (c) Fox Labs, all rights reserved.
 * @license   Distributed under the terms of the GNU General Public License GNU/GPL v3 http://www.gnu.org/licenses/gpl-3.0.html
 * @see       Documentation: http://www.fox.ra.it/forum/2-documentation.html
 */

class Swift_SpoolTransport extends Swift_Transport_SpoolTransport
{
	
	public function __construct(Swift_Spool $spool)
	{
		$arguments = Swift_DependencyContainer::getInstance()->createDependenciesFor('transport.spool');
		$arguments[] = $spool;
		call_user_func_array(array($this, 'Swift_Transport_SpoolTransport::__construct'), $arguments);
	}
	
	
	public static function newInstance(Swift_Spool $spool)
	{
		return new self($spool);
	}

}