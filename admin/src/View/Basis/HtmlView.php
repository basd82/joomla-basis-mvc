<?php

namespace hcc\Component\basis\Administrator\View\Basis;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;

/**
 * @package     Joomla.Administrator
 * @subpackage  com_basis
 *
 * @copyright      Copyright (C) 2022 B.F. van den Dikkenberg All rights reserved.
 * @license        GNU General Public License version 2 or later
 * @since          0.0.1
 */

/**
 * Main "basis" Admin View
 */
class HtmlView extends BaseHtmlView {

	/**
	 * Display the main "basis" view
	 *
	 * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
	 * @return  void
	 * @since          0.0.1
	 */
	function display($tpl = null) {
		parent::display($tpl);
	}


}