<header class="masthead">
	<a href="https://vp.studentlife.uiowa.edu" target="_blank"><amp-img src="https://vp.studentlife.uiowa.edu/themes/division-subtheme/dist/images/uiowa.png" width="195" height="24" class="masthead-img"></amp-img></a>
	<a class="title" href="$AbsoluteBaseURL" target="_blank">$SiteConfig.Title</a>
</header>
<main role="main">
	<article>
		<header>
			<h1 class="headline">$Title</h1>
			<% if $FeaturedImage %>
				<amp-img src="$FeaturedImage.CroppedFocusedImage(1024,682).AbsoluteURL" width="1024" height="682" layout="responsive"></amp-img></p>
			<% end_if %>

			<% include AmpByline %>
		</header>

		<div class="main-column">
			<p>
				<amp-social-share type="facebook" width="40" height="40" data-attribution="254325784911610" class="social-share"></amp-social-share>
				<amp-social-share type="twitter" width="40" height="40" class="social-share"></amp-social-share>
				<amp-social-share type="linkedin" width="40" height="40" class="social-share"></amp-social-share>
				<amp-social-share type="email" width="40" height="40" class="social-share"></amp-social-share>
			</p>

			$Content
			<% if $ExternalURL %>
				<p><a href="$ExternalURL" class="button--shaded" target="_blank"><% if $ExternalURLText %>$ExternalURLText<% else %>Read more...<% end_if %></a></p>
			<% end_if %>
			<% include AmpRelated %>

		</div>
	</article>
	<footer class="footer" role="contentinfo">
		<div class="footer__address" itemscope itemtype="http://schema.org/PostalAddress">
			<p>
				<a href="$AbsoluteBaseURL">$SiteConfig.Title</a><br />
				<span itemprop="streetAddress">$SiteConfig.Address1</span>
				<% if $SiteConfig.City %><br /><span itemprop="addressLocality">$SiteConfig.City</span><% end_if %><% if $SiteConfig.State %>, <span itemprop="addressRegion">$SiteConfig.State</span><% end_if %><% if $SiteConfig.Zipcode %><span itemprop="postalCode">$SiteConfig.Zipcode</span><% end_if %><br />
				<% if $SiteConfig.PhoneNumber %>
					<br /><% if $SiteConfig.PhoneLabel %>$SiteConfig.PhoneLabel <% end_if %><span itemprop="telephone">$SiteConfig.PhoneNumber</span>
				<% end_if %>
				<% if $SiteConfig.PhoneNumberAlt %>
					<br /><% if $SiteConfig.PhoneLabelAlt %>$SiteConfig.PhoneLabelAlt <% end_if %>$SiteConfig.PhoneNumberAlt
				<% end_if %>
				<% if $SiteConfig.Fax %>
					<br />Fax: <span itemprop="faxNumber">$SiteConfig.Fax</span>
				<% end_if %>
				<% if $SiteConfig.EmailAddress %>
					<br /><a href="mailto:$SiteConfig.EmailAddress"><span itemprop="email">$SiteConfig.EmailAddress</span></a>
				<% end_if %>
			</p>
		</div>
		<div class="footer__copyright">
			<p>&copy; $Now.Year <a href="http://www.uiowa.edu/" target="_blank">The University of Iowa</a>. All Rights Reserved. <a href="http://www.uiowa.edu/homepage/online-privacy-information" target="_blank">Privacy Information</a> | Created by <a href="https://md.studentlife.uiowa.edu/" target="_blank" class="footer__md">Student Life Marketing and Design</a></p>
		</div>
	</footer>
</main>