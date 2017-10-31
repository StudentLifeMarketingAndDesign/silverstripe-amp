<?php

/**
 * Google AMP Pages
 *
 * Renders Pages conforming to Google's AMP HTML standard
 *
 *
 * @package amp
 */
use Lullabot\AMP\AMP;
use Lullabot\AMP\Validate\Scope;

class AmpController extends Extension
{

    private static $allowed_actions = array('amp');

    private static $url_handlers = array(
        'amp.html' => 'amp'
    );

    public function amp()
    {
        $class = Controller::curr()->ClassName;
        $page = $this->owner->renderWith(array("$class"."_amp", "Amp"));

        return $this->AmplfyHTML($page);
    }

    public function AmplfyHTML($content)
    {
        if (!$content) {
            return false;
        }

        $amp = new AMP();
        $amp->loadHtml($content);

        $amp_html = $amp->convertToAmpHtml();

        $base = Director::AbsoluteBaseURL();

        $content = preg_replace('/(<[^>]*) style=("[^"]+"|\'[^\']+\')([^>]*>)/i', '$1$3', $content);
        $content = str_replace('src="assets/', 'src="'.$base.'assets/', $content);
        $content = str_replace("<img", "<amp-img", $content);
        $content = str_replace("<img", "<amp-img", $content);
        $content = str_replace('<iframe', '<amp-iframe', $content);
        $content = str_replace('gesture="media"', '', $content);

        return $amp_html;
    }
}
