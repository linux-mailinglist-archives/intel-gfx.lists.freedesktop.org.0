Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 966EA52AAD7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 20:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EB18897FD;
	Tue, 17 May 2022 18:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6CAD897FD
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 May 2022 18:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652812325; x=1684348325;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JhOAYfF6O+gtf8G7sy/cZRgcaPU2MwFOWeztBYagb7M=;
 b=QTaXrkjFpXZpwnlWw1rGc+w/ZlxOG2JQbW9cpFHAN7psa8QJlTWyuFEp
 y5VIvvxkdNKWRNO9FPi0l7+akTbEKqyC1fz/Gxq4y6l9UMwQLGLeiVoTG
 Uzwb06vwss38IcXhNdQBcEKBs48Uf/OhVOoN59pq71AAqcTF39z22KZmy
 Mn3A0wLxS9jUkgP/3qKqmN/t40UyiEwkbRhZBCiW2dqc+wTwhI6MjYCUZ
 uJBl1LLlh4VvKEDEoUXb/J/SExl2WTxjlEs0tDcXj0wLStqwleGvSXUMp
 altgUEeUVYlE2TmAv6FBV3dBk+t/RM+qaBv7sg9lbqORJQm0/YrQAztgg A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="258845005"
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="258845005"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 11:31:58 -0700
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="713996012"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.211])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 11:31:58 -0700
Date: Tue, 17 May 2022 11:31:46 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220517183146.GB34204@mdnavare-mobl1.jf.intel.com>
References: <20220511224728.459724-1-manasi.d.navare@intel.com>
 <20220512195204.472582-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220512195204.472582-1-manasi.d.navare@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Add a separate
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Jani, I have cleaned up the hsw_crtc_enable now removing the unused
function calls.
Could you please take a look?

Regards
Manasi


On Thu, May 12, 2022 at 12:52:04PM -0700, Manasi Navare wrote:
> Currently we reuse hsw_crtc_enable for SKL+ platforms.
> But this has added a lot of platform checks for SKL+ platforms.
> So its time to move the code to a separate crtc_enable hook
> for SKL+ platforms.
> 
> No functional changes here.
> 
> v2: Cleanup hsw_crtc_enable (Jani N)
> 
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 64 ++++++++++++++++----
>  1 file changed, 52 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 806d50b302ab..70cde34aca10 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1895,13 +1895,13 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>  	hsw_set_transconf(crtc_state);
>  }
>  
> -static void hsw_crtc_enable(struct intel_atomic_state *state,
> +static void skl_crtc_enable(struct intel_atomic_state *state,
>  			    struct intel_crtc *crtc)
>  {
>  	const struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
> +	enum pipe pipe = crtc->pipe;
>  	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
>  	bool psl_clkgate_wa;
>  
> @@ -1925,8 +1925,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  		intel_uncompressed_joiner_enable(new_crtc_state);
>  
>  	intel_set_pipe_src_size(new_crtc_state);
> -	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
> -		bdw_set_pipemisc(new_crtc_state);
> +	bdw_set_pipemisc(new_crtc_state);
>  
>  	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
>  	    !transcoder_is_dsi(cpu_transcoder))
> @@ -1940,10 +1939,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (psl_clkgate_wa)
>  		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
>  
> -	if (DISPLAY_VER(dev_priv) >= 9)
> -		skl_pfit_enable(new_crtc_state);
> -	else
> -		ilk_pfit_enable(new_crtc_state);
> +	skl_pfit_enable(new_crtc_state);
>  
>  	/*
>  	 * On ILK+ LUT must be loaded before the pipe is running but with
> @@ -1952,9 +1948,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	intel_color_load_luts(new_crtc_state);
>  	intel_color_commit_noarm(new_crtc_state);
>  	intel_color_commit_arm(new_crtc_state);
> -	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
> -	if (DISPLAY_VER(dev_priv) < 9)
> -		intel_disable_primary_plane(new_crtc_state);
>  
>  	hsw_set_linetime_wm(new_crtc_state);
>  
> @@ -1972,6 +1965,53 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  		intel_crtc_wait_for_next_vblank(crtc);
>  		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
>  	}
> +}
> +
> +static void hsw_crtc_enable(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	enum pipe hsw_workaround_pipe;
> +	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
> +
> +	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> +		return;
> +
> +	intel_encoders_pre_pll_enable(state, crtc);
> +
> +	if (new_crtc_state->shared_dpll)
> +		intel_enable_shared_dpll(new_crtc_state);
> +
> +	intel_encoders_pre_enable(state, crtc);
> +
> +	intel_set_pipe_src_size(new_crtc_state);
> +	if (IS_BROADWELL(dev_priv))
> +		bdw_set_pipemisc(new_crtc_state);
> +
> +	if (!transcoder_is_dsi(cpu_transcoder))
> +		hsw_configure_cpu_transcoder(new_crtc_state);
> +
> +	crtc->active = true;
> +
> +	ilk_pfit_enable(new_crtc_state);
> +
> +	/*
> +	 * On ILK+ LUT must be loaded before the pipe is running but with
> +	 * clocks enabled
> +	 */
> +	intel_color_load_luts(new_crtc_state);
> +	intel_color_commit_noarm(new_crtc_state);
> +	intel_color_commit_arm(new_crtc_state);
> +	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
> +	intel_disable_primary_plane(new_crtc_state);
> +
> +	hsw_set_linetime_wm(new_crtc_state);
> +
> +	intel_initial_watermarks(state, crtc);
> +
> +	intel_encoders_enable(state, crtc);
>  
>  	/* If we change the relative order between pipe/planes enabling, we need
>  	 * to change the workaround. */
> @@ -9231,7 +9271,7 @@ static const struct drm_mode_config_funcs intel_mode_funcs = {
>  
>  static const struct drm_i915_display_funcs skl_display_funcs = {
>  	.get_pipe_config = hsw_get_pipe_config,
> -	.crtc_enable = hsw_crtc_enable,
> +	.crtc_enable = skl_crtc_enable,
>  	.crtc_disable = hsw_crtc_disable,
>  	.commit_modeset_enables = skl_commit_modeset_enables,
>  	.get_initial_plane_config = skl_get_initial_plane_config,
> -- 
> 2.35.1
> 
