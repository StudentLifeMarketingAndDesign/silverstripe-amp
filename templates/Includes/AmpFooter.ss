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