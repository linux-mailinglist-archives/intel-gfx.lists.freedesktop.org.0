Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF65786E1E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB4410E522;
	Thu, 24 Aug 2023 11:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6386C10E522
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 11:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692877270; x=1724413270;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8UBdhPekiiLh1o6AESX/iOAbpbw3EolMzKa/U4NxJ2Y=;
 b=bbccZjentn8rckvLRNVF4fXT6PYF4jDJoDXGwsoQIktpQVLvhu4n3fnt
 5H0i66hmj9N2V+stdBeptsbhGsjOBm0ezF5Vnl6ZEqn0HIZ35opyQdhDS
 kMMB68gunqlLmqGtB/LmsuKAmu7FosCoh64mflOD3IAdUVKmvNXhaLauU
 ijM2pk3HEsxQqo2+SBfFfH37E7P4joG+W5n7WJdgneKgc4qA9QRlIZ/Bm
 0IeIoSEau8PfPS8NFrV3C1BumdIY990/JBH5oJIQ9n9luwdEoNkPsKejS
 m5R6nDhfu0zrgiyXoB06Ho4SOf+UtJlmdYvCuf+WftHmQ8sx2s7XxXqsL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="405421663"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="405421663"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:41:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="740147812"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="740147812"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.68])
 by fmsmga007.fm.intel.com with SMTP; 24 Aug 2023 04:41:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Aug 2023 14:41:05 +0300
Date: Thu, 24 Aug 2023 14:41:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZOdB0VXC_knLUmFI@intel.com>
References: <20230818190501.241062-1-navaremanasi@chromium.org>
 <87fs484r4a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fs484r4a.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Dual refresh rate
 fastset fixes with VRR fastset
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Drew Davenport <ddavenport@chromium.org>, intel-gfx@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 24, 2023 at 02:27:49PM +0300, Jani Nikula wrote:
> On Fri, 18 Aug 2023, Manasi Navare <navaremanasi@chromium.org> wrote:
> > Dual refresh rate (DRR) fastset seamlessly lets refresh rate
> > throttle without needing a full modeset.
> > However with the recent VRR fastset patches that got merged this
> > logic was broken. This is broken because now with VRR fastset
> > VRR parameters are calculated by default at the nominal refresh rate say 120Hz.
> > Now when DRR throttle happens to switch refresh rate to 60Hz, crtc clock
> > changes and this throws a mismatch in VRR parameters and fastset logic
> > for DRR gets thrown off and full modeset is indicated.
> >
> > This patch fixes this by ignoring the pipe mismatch for VRR parameters
> > in the case of DRR and when VRR is not enabled. With this fix, DRR
> > will still throttle seamlessly as long as VRR is not enabled.
> >
> > This will still need a full modeset for both DRR and VRR operating together
> > during the refresh rate throttle and then enabling VRR since now VRR
> > parameters need to be recomputed with new crtc clock and written to HW.
> >
> > This DRR + VRR fastset in conjunction needs more work in the driver and
> > will be fixed in later patches.
> >
> > v3:
> > Compute new VRR params whenever there is fastset and its non DRRS.
> > This will ensure it computes while switching to a fixed RR (Mitul)
> >
> > v2:
> > Check for pipe config mismatch in crtc clock whenever VRR is enabled
> >
> > Fixes: 1af1d18825d3 ("drm/i915/vrr: Allow VRR to be toggled during fastsets")
> 
> How could this have broken fastsets, when this made it possible to do
> vrr enable/disable fastsets to begin with? I was hoping to get a
> regressing commit to make this easier to reason.
> 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9154
> > Cc: Drew Davenport <ddavenport@chromium.org>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Sean Paul <seanpaul@chromium.org>
> > Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 763ab569d8f3..2cf3b22adaf7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5352,7 +5352,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >  	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
> >  		PIPE_CONF_CHECK_I(pipe_bpp);
> >  
> > -	if (!fastset || !pipe_config->seamless_m_n) {
> > +	if (!fastset || !pipe_config->seamless_m_n || pipe_config->vrr.enable) {
> >  		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
> >  		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
> >  	}
> > @@ -5387,11 +5387,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >  
> >  	if (!fastset)
> >  		PIPE_CONF_CHECK_BOOL(vrr.enable);
> > -	PIPE_CONF_CHECK_I(vrr.vmin);
> > -	PIPE_CONF_CHECK_I(vrr.vmax);
> > -	PIPE_CONF_CHECK_I(vrr.flipline);
> > -	PIPE_CONF_CHECK_I(vrr.pipeline_full);
> > -	PIPE_CONF_CHECK_I(vrr.guardband);
> > +	if ((fastset && !pipe_config->seamless_m_n) || pipe_config->vrr.enable) {
> 
> I just don't get the conditions here and above. For example, why
> wouldn't we check the parameters e.g. on full modeset that disables vrr?
> 
> I think we'll need a matrix of the features, which of them can be
> combined together, which are mutually exclusive, and which are expected
> to be fastsets.

I wouldn't expect a panel to support both DRRS and VRR. Pick one and
stick to it.

I haven't thought through all the implications of changing all the VRR
parameters live, so fastsets doing that are currently not possible. I
have a branch for LRR (which is essentially manual VRR) but that was
writtent before the VRR fastset support, so needs a full redesign now.
Until then I don't think we can do anything.

-- 
Ville Syrjälä
Intel
