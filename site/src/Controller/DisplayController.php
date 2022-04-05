<?php
/**
 * @package        com_basis
 * @subpackage     DisplayController
 *
 * @copyright      Copyright (C) 2022 B.F. van den Dikkenberg All rights reserved.
 * @license        GNU General Public License version 2 or later
 */


namespace hcc\Component\Basis\Site\Controller;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\Controller\BaseController;
use Joomla\CMS\Factory;

/**
 * @package     Joomla.Site
 * @subpackage  com_basis
 *
 * @copyright      Copyright (C) 2022 B.F. van den Dikkenberg All rights reserved.
 * @license        GNU General Public License version 2 or later
 */

/**
 * Default Controller of basis component
 *
 * @package     Joomla.Administrator
 * @subpackage  com_basis
 */

/**
 * HelloWorld Component Controller
 * @since  0.0.1
 */
class DisplayController extends BaseController {

	public function display($cachable = false, $urlparams = array()) {
		$document = Factory::getDocument();
		$viewName = $this->input->getCmd('view', 'login');
		$viewFormat = $document->getType();
		$view = $this->getView($viewName, $viewFormat);
		$view->document = $document;
		$view->display();
	}
}