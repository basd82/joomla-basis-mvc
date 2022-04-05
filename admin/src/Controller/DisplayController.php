<?php
/**
 * @package        com_basis
 * @subpackage     DisplayController
 *
 * @copyright      Copyright (C) 2022 B.F. van den Dikkenberg All rights reserved.
 * @license        GNU General Public License version 2 or later
 */


namespace hcc\Component\basis\Administrator\Controller;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\Controller\BaseController;

/**
 * @package        Joomla.Administrator
 * @subpackage     com_basis
 *
 * @copyright      Copyright (C) 2022 B.F. van den Dikkenberg All rights reserved.
 * @license        GNU General Public License version 2 or later
 * @since          0.0.1
 */

/**
 * Default Controller of basis component
 *
 * @package        Joomla.Administrator
 * @subpackage     com_basis
 * @since          0.0.1
 */
class DisplayController extends BaseController
{
	/**
	 * The default view for the display method.
	 *
	 * @var string
	 */
	protected $default_view = 'basis';

	public function display($cachable = false, $urlparams = array())
	{
		return parent::display($cachable, $urlparams);
	}

}