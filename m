Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C485255CF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 21:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C6910EE56;
	Thu, 12 May 2022 19:35:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5588A10EE56
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 19:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652384139; x=1683920139;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=30nuEi2q/LseCsfwtLWYT3hpL2ov6mJVAHYRirGOybg=;
 b=JNrnR1wHWg8LCFve99JyN3fvybvKnwjFqxHQnF2Km5/pxD8toKqa7HGR
 rgHPB4cMImrkMPBbifBs3xO2xe6tHUVHj0RYR2stpT1YZJXLj9DXeQiGT
 AIkcuGCMCA4Ctd79CgrmBh7lYjFKyvtPliHUWz31MwI86TVcex0ZxWZNT
 qibVnhb2aThR/7UevV8DQlCmemanQRQIWxtRsXI8GPJyPZ0v4/aPKYe6M
 /ehJQCluTYfhIf9uCDW1lCM1kg76BJ3wXxpyem7e9KlkIbBFVdgJHRcFF
 mEVgzlAScqdNyIUuxH2HWJLgn41INGOpNq+K+Ppp2ALpVnJJchOxsZa35 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="267708624"
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="267708624"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 12:35:38 -0700
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="670995906"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 12:35:38 -0700
Date: Thu, 12 May 2022 12:36:35 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220512193635.GA462365@mdnavare-mobl1.jf.intel.com>
References: <20220511224728.459724-1-manasi.d.navare@intel.com>
 <87fslfhyoq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fslfhyoq.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a separate
 crtc_enable hook for SKL+
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 12, 2022 at 12:45:09PM +0300, Jani Nikula wrote:
> On Wed, 11 May 2022, Manasi Navare <manasi.d.navare@intel.com> wrote:
> > Currently we reuse hsw_crtc_enable for SKL+ platforms.
> > But this has added a lot of platform checks for SKL+ platforms.
> > So its time to move the code to a separate crtc_enable hook
> > for SKL+ platforms.
> 
> This leaves behind a ton of unused code paths in hsw_crtc_enable, which
> needs cleanup.

Oh yes, I can get rid of all the ?9 checks now from hsw_crtc_enable
I will clean that up and send a v2

Manasi

> 
> BR,
> Jani.
> 
> >
> > No functional changes here.
> >
> > Suggested-by: Jani Nikula <jani.nikula@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 74 +++++++++++++++++++-
> >  1 file changed, 73 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 806d50b302ab..e2e228073e2e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1895,6 +1895,78 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
> >  	hsw_set_transconf(crtc_state);
> >  }
> >  
> > +static void skl_crtc_enable(struct intel_atomic_state *state,
> > +			    struct intel_crtc *crtc)
> > +{
> > +	const struct intel_crtc_state *new_crtc_state =
> > +		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > +	enum pipe pipe = crtc->pipe;
> > +	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
> > +	bool psl_clkgate_wa;
> > +
> > +	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> > +		return;
> > +
> > +	if (!new_crtc_state->bigjoiner_pipes) {
> > +		intel_encoders_pre_pll_enable(state, crtc);
> > +
> > +		if (new_crtc_state->shared_dpll)
> > +			intel_enable_shared_dpll(new_crtc_state);
> > +
> > +		intel_encoders_pre_enable(state, crtc);
> > +	} else {
> > +		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
> > +	}
> > +
> > +	intel_dsc_enable(new_crtc_state);
> > +
> > +	if (DISPLAY_VER(dev_priv) >= 13)
> > +		intel_uncompressed_joiner_enable(new_crtc_state);
> > +
> > +	intel_set_pipe_src_size(new_crtc_state);
> > +	bdw_set_pipemisc(new_crtc_state);
> > +
> > +	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
> > +	    !transcoder_is_dsi(cpu_transcoder))
> > +		hsw_configure_cpu_transcoder(new_crtc_state);
> > +
> > +	crtc->active = true;
> > +
> > +	/* Display WA #1180: WaDisableScalarClockGating: glk */
> > +	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
> > +		new_crtc_state->pch_pfit.enabled;
> > +	if (psl_clkgate_wa)
> > +		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> > +
> > +	skl_pfit_enable(new_crtc_state);
> > +
> > +	/*
> > +	 * On ILK+ LUT must be loaded before the pipe is running but with
> > +	 * clocks enabled
> > +	 */
> > +	intel_color_load_luts(new_crtc_state);
> > +	intel_color_commit_noarm(new_crtc_state);
> > +	intel_color_commit_arm(new_crtc_state);
> > +
> > +	hsw_set_linetime_wm(new_crtc_state);
> > +
> > +	if (DISPLAY_VER(dev_priv) >= 11)
> > +		icl_set_pipe_chicken(new_crtc_state);
> > +
> > +	intel_initial_watermarks(state, crtc);
> > +
> > +	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> > +		intel_crtc_vblank_on(new_crtc_state);
> > +
> > +	intel_encoders_enable(state, crtc);
> > +
> > +	if (psl_clkgate_wa) {
> > +		intel_crtc_wait_for_next_vblank(crtc);
> > +		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
> > +	}
> > +}
> > +
> >  static void hsw_crtc_enable(struct intel_atomic_state *state,
> >  			    struct intel_crtc *crtc)
> >  {
> > @@ -9231,7 +9303,7 @@ static const struct drm_mode_config_funcs intel_mode_funcs = {
> >  
> >  static const struct drm_i915_display_funcs skl_display_funcs = {
> >  	.get_pipe_config = hsw_get_pipe_config,
> > -	.crtc_enable = hsw_crtc_enable,
> > +	.crtc_enable = skl_crtc_enable,
> >  	.crtc_disable = hsw_crtc_disable,
> >  	.commit_modeset_enables = skl_commit_modeset_enables,
> >  	.get_initial_plane_config = skl_get_initial_plane_config,
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
