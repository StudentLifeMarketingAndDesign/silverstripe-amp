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
        $content = $this->owner->Content;
        $base = Director::AbsoluteBaseURL();

        $amp = new AMP();
        $amp->loadHtml($content);

        $ampContent = $amp->convertToAmpHtml();
        $ampContent = str_replace('src="assets/', 'src="'.$base.'assets/', $ampContent);

        $data = new ArrayData(array(
            'Content' => $ampContent
        ));
        $page = $this->owner->customise($data)->renderWith(array("$class"."_amp", "Amp"));

        return $page;
    }


}
