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
				<amp-social-share type="facebook" width="40" height="40" data-param-app_id="127918570561161" class="social-share"></amp-social-share>
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
	<% include AmpFooter %>
</main>