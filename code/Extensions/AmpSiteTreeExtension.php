<?php

/**
 * Created by PhpStorm.
 * User: rick
 * Date: 2015-12-15
 * Time: 12:25 PM
 */
class AmpSiteTreeExtension extends SiteTreeExtension
{

    public function MetaTags(&$tags)
    {
    	$ancestry = ClassInfo::ancestry($this->owner->ClassName);
    	// Debug::show($ancestry);
    	
    	if (array_key_exists("BlogPost",$ancestry)){
    		$ampLink = $this->owner->AbsoluteLink()."amp.html";
		    $tags .= "<link rel='amphtml' href='$ampLink' /> \n";
    	}
	    
    }
}
