Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFAF7A66A0
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 16:26:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB42E10E295;
	Tue, 19 Sep 2023 14:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F127610E293
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 14:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695133578; x=1726669578;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dEdKe3qaj1K6kFFzu4Mo2H/r8q278/rj+ddF17y5LlU=;
 b=MhHbt1axOzsvp0hs7eRiiBtGedILkalcBCbKxEeLqRTxJmSUKrQztPEv
 9ATPIt4/4zXX8tBwbLPiEilvaic2P7mq8Pse6S5JfeNkifd+BoXikSSlD
 mf+HMJ0jWySs4xg+xEwqBKMTeTKgQBZGcJ2V6WPvKFiAlQGmNJXhrDcwR
 oXN6I8rN/U/Js7uKMMppo34OeK/b451hmzrb+6ImZPt0LjGFLuEf/KpHZ
 Tx38/jtuU0gnmp0yvIVjE/o57QaWQ1LvlF6+lF6zlHE7WPpmkIF9SOaGE
 kMrGJUGjjEMFSL0LrHhISV+qSQXzGqfbLNxvZloTPS/ExwGgeiAPJXrPx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="383785944"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="383785944"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 07:25:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="861569823"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="861569823"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 19 Sep 2023 07:25:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Sep 2023 17:25:44 +0300
Date: Tue, 19 Sep 2023 17:25:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZQmvaIV39YfOY-hJ@intel.com>
References: <20230914192659.757475-7-imre.deak@intel.com>
 <20230918182506.1634464-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230918182506.1634464-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5 06/25] drm/i915: Add helper to modeset a
 set of pipes
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

On Mon, Sep 18, 2023 at 09:25:03PM +0300, Imre Deak wrote:
> Add intel_modeset_pipes_in_mask_early() to modeset a provided set of
> pipes, used in a follow-up patch.
> 
> As opposed intel_modeset_all_pipes() which modesets only the active
> pipes - others don't requiring programming the HW - modeset all enabled
> pipes in intel_modeset_pipes_in_mask_early() which may need to recompute
> their state even if they are not active (that is in the DPMS off state).
> 
> While at it add DocBook descriptions for the two exported functions.
> 
> v2:
> - Add a flag controlling if active planes are force updated as well.
> - Add DockBook descriptions.
> v3:
> - For clarity use _early/_late suffixes for the exported functions
>   instead of the update_active_planes parameter. (Ville)
> v4:
> - In intel_modeset_pipes_in_mask_early() update only the crtc
>   flags relevant to the early phase. (Ville)
> - Rename intel_modeset_all_pipes() in a separate patch.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 102 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_display.h |   2 +
>  2 files changed, 83 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6bbc9069754c4..1c9a128f4af27 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5407,16 +5407,90 @@ intel_verify_planes(struct intel_atomic_state *state)
>  			     plane_state->uapi.visible);
>  }
>  
> +static int intel_modeset_pipe(struct intel_atomic_state *state,
> +			      struct intel_crtc_state *crtc_state,
> +			      const char *reason)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	int ret;
> +
> +	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
> +		    crtc->base.base.id, crtc->base.name, reason);
> +
> +	ret = drm_atomic_add_affected_connectors(&state->base,
> +						 &crtc->base);
> +	if (ret)
> +		return ret;
> +
> +	ret = intel_dp_mst_add_topology_state_for_crtc(state, crtc);
> +	if (ret)
> +		return ret;
> +
> +	ret = intel_atomic_add_affected_planes(state, crtc);
> +	if (ret)
> +		return ret;
> +
> +	crtc_state->uapi.mode_changed = true;
> +
> +	return 0;
> +}
> +
> +/**
> + * intel_modeset_pipes_in_mask_early - force a full modeset on a set of pipes
> + * @state: intel atomic state
> + * @reason: the reason for the full modeset
> + * @mask: mask of pipes to modeset
> + *
> + * Add pipes in @mask to @state and force a full modeset on the enabled ones
> + * due to the description in @reason.
> + * This function can be called only before new plane states are computed.
> + *
> + * Returns 0 in case of success, negative error code otherwise.
> + */
> +int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
> +				      const char *reason, u8 mask)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, mask) {
> +		struct intel_crtc_state *crtc_state;
> +		int ret;
> +
> +		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
> +		if (IS_ERR(crtc_state))
> +			return PTR_ERR(crtc_state);
> +
> +		if (!crtc_state->hw.enable ||
> +		    intel_crtc_needs_modeset(crtc_state))
> +			continue;
> +
> +		ret = intel_modeset_pipe(state, crtc_state, reason);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * intel_modeset_all_pipes - force a full modeset on all pipes
> + * @state: intel atomic state
> + * @reason: the reason for the full modeset
> + *
> + * Add all pipes to @state and force a full modeset on the active ones due to
> + * the description in @reason.
> + * This function can be called only after new plane states are computed already.
> + *
> + * Returns 0 in case of success, negative error code otherwise.
> + */
>  int intel_modeset_all_pipes(struct intel_atomic_state *state,
>  			    const char *reason)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
>  	struct intel_crtc *crtc;
>  
> -	/*
> -	 * Add all pipes to the state, and force
> -	 * a modeset on all the active ones.
> -	 */
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>  		struct intel_crtc_state *crtc_state;
>  		int ret;
> @@ -5429,25 +5503,11 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
>  		    intel_crtc_needs_modeset(crtc_state))
>  			continue;
>  
> -		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
> -			    crtc->base.base.id, crtc->base.name, reason);
> +		ret = intel_modeset_pipe(state, crtc_state, reason);
> +		if (ret)
> +			return ret;
>  
> -		crtc_state->uapi.mode_changed = true;
>  		crtc_state->update_pipe = false;
> -
> -		ret = drm_atomic_add_affected_connectors(&state->base,
> -							 &crtc->base);
> -		if (ret)
> -			return ret;
> -
> -		ret = intel_dp_mst_add_topology_state_for_crtc(state, crtc);
> -		if (ret)
> -			return ret;
> -
> -		ret = intel_atomic_add_affected_planes(state, crtc);
> -		if (ret)
> -			return ret;
> -
>  		crtc_state->update_planes |= crtc_state->active_planes;
>  		crtc_state->async_flip_planes = 0;
>  		crtc_state->do_async_flip = false;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 49ac8473b988b..3008e8b2b437e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -513,6 +513,8 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
>  void intel_update_watermarks(struct drm_i915_private *i915);
>  
>  /* modesetting */
> +int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
> +				      const char *reason, u8 pipe_mask);
>  int intel_modeset_all_pipes(struct intel_atomic_state *state,
>  			    const char *reason);
>  void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
