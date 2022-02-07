Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B5C4AB5E1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 08:30:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DCD610E450;
	Mon,  7 Feb 2022 07:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4605710E466
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 07:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644219043; x=1675755043;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zNYppWCY2rUOt7Ac6/GcgT6+1mHc0OOeM1/nmWnr47w=;
 b=VKL5a5qgkFkom6SyQt4PrvrjpY85QMCdwFesLlp70+KV+FVzAi0qjlbI
 vYurn5ZWAOsrRWjMb6HJTJDqL/QnnEOI7oyDGR0oJIIKgwL/Qx35/Mmnj
 yl0wplUOKh+JiWj1awBXfxDjCJx+6gPYeL6KQqivm1XlVtTiVTVIsjo5B
 XagrBaJt7eIa0Yk5ddC3tPhfIuqZGEn9gOlCsY/07mejuiJf9iLMQZubK
 +XwMdmb58ALfr0qW5Adk4Fea6JX90cxqcxL8C/WO0cUzYPVfQyAcDGz6t
 jukM4KgVqzd5LrYXaolX1QXgVNjtColRtlQlkR99ZWrz+WnQzEU/T/m8o Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="232226032"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="232226032"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 23:30:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="525034398"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 23:30:34 -0800
Date: Mon, 7 Feb 2022 09:30:48 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220207073048.GC2471@intel.com>
References: <20220204141818.1900-1-ville.syrjala@linux.intel.com>
 <20220204141818.1900-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220204141818.1900-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Workaround broken BIOS DBUF
 configuration on TGL/RKL
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

On Fri, Feb 04, 2022 at 04:18:18PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On TGL/RKL the BIOS likes to use some kind of bogus DBUF layout
> that doesn't match what the spec recommends. With a single active
> pipe that is not going to be a problem, but with multiple pipes
> active skl_commit_modeset_enables() goes into an infinite loop
> since it can't figure out any order in which it can commit the
> pipes without causing DBUF overlaps between the planes.
> 
> We'd need some kind of extra DBUF defrag stage in between to
> make the transition possible. But that is clearly way too complex
> a solution, so in the name of simplicity let's just sanitize the
> DBUF state by simply turning off all planes when we detect a
> pipe encroaching on its neighbours' DBUF slices. We only have
> to disable the primary planes as all other planes should have
> already been disabled (if they somehow were enabled) by
> earlier sanitization steps.
> 
> And for good measure let's also sanitize in case the DBUF
> allocations of the pipes already seem to overlap each other.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4762
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  1 +
>  drivers/gpu/drm/i915/intel_pm.c              | 68 ++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.h              |  1 +
>  3 files changed, 70 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index df347329d90e..7f512f9e9e5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10649,6 +10649,7 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
>  		vlv_wm_sanitize(dev_priv);
>  	} else if (DISPLAY_VER(dev_priv) >= 9) {
>  		skl_wm_get_hw_state(dev_priv);
> +		skl_wm_sanitize(dev_priv);
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		ilk_wm_get_hw_state(dev_priv);
>  	}
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 79d61a2935ea..02084652fe3d 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6710,6 +6710,74 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  	dbuf_state->enabled_slices = dev_priv->dbuf.enabled_slices;
>  }
>  
> +static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
> +{
> +	const struct intel_dbuf_state *dbuf_state =
> +		to_intel_dbuf_state(i915->dbuf.obj.state);
> +	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		const struct intel_crtc_state *crtc_state =
> +			to_intel_crtc_state(crtc->base.state);
> +
> +		entries[crtc->pipe] = crtc_state->wm.skl.ddb;
> +	}
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		const struct intel_crtc_state *crtc_state =
> +			to_intel_crtc_state(crtc->base.state);
> +		u8 slices;
> +
> +		slices = skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
> +						 dbuf_state->joined_mbus);
> +		if (dbuf_state->slices[crtc->pipe] & ~slices)
> +			return true;
> +
> +		if (skl_ddb_allocation_overlaps(&crtc_state->wm.skl.ddb, entries,
> +						I915_MAX_PIPES, crtc->pipe))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +void skl_wm_sanitize(struct drm_i915_private *i915)
> +{
> +	struct intel_crtc *crtc;
> +
> +	/*
> +	 * On TGL/RKL (at least) the BIOS likes to assign the planes
> +	 * to the wrong DBUF slices. This will cause an infinite loop
> +	 * in skl_commit_modeset_enables() as it can't find a way to
> +	 * transition between the old bogus DBUF layout to the new
> +	 * proper DBUF layout without DBUF allocation overlaps between
> +	 * the planes (which cannot be allowed or else the hardware
> +	 * may hang). If we detect a bogus DBUF layout just turn off
> +	 * all the planes so that skl_commit_modeset_enables() can
> +	 * simply ignore them.
> +	 */
> +	if (!skl_dbuf_is_misconfigured(i915))
> +		return;
> +
> +	drm_dbg_kms(&i915->drm, "BIOS has misprogrammed the DBUF, disabling all planes\n");
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		struct intel_plane *plane = to_intel_plane(crtc->base.primary);
> +		const struct intel_plane_state *plane_state =
> +			to_intel_plane_state(plane->base.state);
> +		struct intel_crtc_state *crtc_state =
> +			to_intel_crtc_state(crtc->base.state);
> +
> +		if (plane_state->uapi.visible)
> +			intel_plane_disable_noatomic(crtc, plane);
> +
> +		drm_WARN_ON(&i915->drm, crtc_state->active_planes != 0);
> +
> +		memset(&crtc_state->wm.skl.ddb, 0, sizeof(crtc_state->wm.skl.ddb));
> +	}
> +}
> +
>  static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
>  {
>  	struct drm_device *dev = crtc->base.dev;
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> index ae821e35d5fc..51705151b842 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -46,6 +46,7 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  			      struct skl_pipe_wm *out);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
>  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> +void skl_wm_sanitize(struct drm_i915_private *dev_priv);
>  bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
>  			   const struct intel_bw_state *bw_state);
>  void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> -- 
> 2.34.1
> 
