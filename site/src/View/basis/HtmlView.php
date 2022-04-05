<?php

namespace hcc\Component\Basis\Site\View\basis;

defined('_JEXEC') or die;

use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;

/**
 * @package     Joomla.Administrator
 * @subpackage  com_basis
 *
 * @copyright      Copyright (C) 2022 B.F. van den Dikkenberg All rights reserved.
 * @license        GNU General Public License version 2 or later
 */

/**
 * View for the user identity validation form
 */
class HtmlView extends BaseHtmlView {


	/**
	 * Display the view
	 *
	 * @param   string  $template  The name of the layout file to parse.
	 * @return  void
	 */
	public function display($template = null) {
		// Call the parent display to display the layout file
		parent::display($template);
	}

}