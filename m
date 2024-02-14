Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CEC85541A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 21:36:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B400310E1FE;
	Wed, 14 Feb 2024 20:36:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WaQprwvC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DBE310E1FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 20:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707943004; x=1739479004;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ox7A8JbiRWQXks/2DqRSsEv2r0PxVSkTneeZhFHdg7Q=;
 b=WaQprwvCY/E8QqsOfR6QXVRq6caRjAFI9VJpGewUBEUm6DqwjXtICggW
 GF0xyzswdIfb66p9SJMWpoSsJU00KhNYZxlgWcNmlhvYr6t8nJik2gywz
 z6IO9C5Vl1c7JUztNunyMTF7s20xZW1uPTGO2l61Vz/2ik/zZIfBc1bbi
 3Kh7HLGkSFuGljcgkw7bDYuOSnk0oflbv/Em3brx/xjs/Y5t2CwtDwZfF
 DoaBonUUsIwuDfc9Ym1iiZDOIksDgESsVb23S/pi04K0ozUvPO2ouVXyd
 ch4NqHkUoP4EIhwTvQ0DecNv6HfMve2mM/aCLECN+0dQfOMJOvKY/REU3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2156329"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="2156329"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 12:36:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="826369786"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="826369786"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 14 Feb 2024 12:36:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Feb 2024 22:36:40 +0200
Date: Wed, 14 Feb 2024 22:36:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/cdclk: Rename intel_cdclk_needs_modeset to
 intel_cdclk_clock_changed
Message-ID: <Zc0kWLRFcD6yN1v3@intel.com>
References: <20240214202719.298407-2-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240214202719.298407-2-gustavo.sousa@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 14, 2024 at 05:27:20PM -0300, Gustavo Sousa wrote:
> Looks like the name and description of intel_cdclk_needs_modeset()
> became inaccurate as of commit 59f9e9cab3a1 ("drm/i915: Skip modeset for
> cdclk changes if possible"), when it became possible to update the cdclk
> without requiring disabling the pipes when only changing the cd2x
> divider was enough.
> 
> Later on we also added the same type of support with squash and crawling
> with commit 25e0e5ae5610 ("drm/i915/display: Do both crawl and squash
> when changing cdclk"), commit d4a23930490d ("drm/i915: Allow cdclk
> squasher to be reconfigured live") and commit d62686ba3b54
> ("drm/i915/adl_p: CDCLK crawl support for ADL").
> 
> As such, update that function's name and documentation to something more
> appropriate, since the real checks for requiring modeset are done
> elsewhere.
> 
> v2:
>   - Rename to intel_cdclk_clock_changed instead of
>     intel_cdclk_params_changed. (Ville)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c          | 13 ++++++-------
>  drivers/gpu/drm/i915/display/intel_cdclk.h          |  2 +-
>  .../gpu/drm/i915/display/intel_display_power_well.c |  2 +-
>  3 files changed, 8 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 26200ee3e23f..0a331d9def17 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2233,16 +2233,15 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
>  }
>  
>  /**
> - * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
> - *                             configurations requires a modeset on all pipes
> + * intel_cdclk_clock_changed - Check whether the clock changed
>   * @a: first CDCLK configuration
>   * @b: second CDCLK configuration
>   *
>   * Returns:
> - * True if changing between the two CDCLK configurations
> - * requires all pipes to be off, false if not.
> + * True if CDCLK changed in a way that requires re-programming and
> + * False otherwise.
>   */
> -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> +bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
>  			       const struct intel_cdclk_config *b)
>  {
>  	return a->cdclk != b->cdclk ||
> @@ -2295,7 +2294,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
>  static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
>  				const struct intel_cdclk_config *b)
>  {
> -	return intel_cdclk_needs_modeset(a, b) ||
> +	return intel_cdclk_clock_changed(a, b) ||
>  		a->voltage_level != b->voltage_level;
>  }
>  
> @@ -3202,7 +3201,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Can change cdclk cd2x divider with pipe %c active\n",
>  			    pipe_name(pipe));
> -	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
> +	} else if (intel_cdclk_clock_changed(&old_cdclk_state->actual,
>  					     &new_cdclk_state->actual)) {
>  		/* All pipes must be switched off while we change the cdclk. */
>  		ret = intel_modeset_all_pipes_late(state, "CDCLK change");
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 48fd7d39e0cd..fa301495e7f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -60,7 +60,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv);
>  void intel_update_max_cdclk(struct drm_i915_private *dev_priv);
>  void intel_update_cdclk(struct drm_i915_private *dev_priv);
>  u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
> -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> +bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
>  			       const struct intel_cdclk_config *b);
>  void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
>  void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 47cd6bb04366..c4d48498e977 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -968,7 +968,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
>  	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>  	drm_WARN_ON(&dev_priv->drm,
> -		    intel_cdclk_needs_modeset(&dev_priv->display.cdclk.hw,
> +		    intel_cdclk_clock_changed(&dev_priv->display.cdclk.hw,
>  					      &cdclk_config));
>  
>  	gen9_assert_dbuf_enabled(dev_priv);
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
