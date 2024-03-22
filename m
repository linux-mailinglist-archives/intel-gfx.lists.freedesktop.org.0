Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00305887291
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 19:06:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C2D61126C9;
	Fri, 22 Mar 2024 18:06:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kAGwfoIW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5E201126C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 18:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711130812; x=1742666812;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GTMY221YpJ1+QrZyGAInWCZpWBpO7v7SKZgn4ndSiEI=;
 b=kAGwfoIWqvOwJrsmE/bmZoJHiNmCdN516QWTsfwZxJfBJP8r16ZgDMW6
 YAphQBFxusw0Ekj/DaG3+jK1H7iTQShArKxXjpC6lRWgb4JCSHewuQZHd
 TUd6ukCrrsRv2xz96PkUOxYG1u9J4XhzNDqk92kfrWf5VKFVwLCTRAQOX
 kMHXA+vnFa4TSqlOA24ESXnFcyOiCAUaUQI+w+3/XCb6e+FcrxRBv6Ho5
 ApEpe+Ne7L/LllhhHpkeyJBef3hZNBt0GoQON1hAbJgmHYthcg/9o0Jqa
 sqtDA09/w6/Z6RBX3aigMWeUsQOKAxSW8uLeGb4iLcLn9PTnyCjBtz3eF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6049420"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="6049420"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 11:06:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="827783579"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="827783579"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 22 Mar 2024 11:06:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Mar 2024 20:06:46 +0200
Date: Fri, 22 Mar 2024 20:06:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 5/5] drm/i915: Implement vblank synchronized MBUS join
 changes
Message-ID: <Zf3ItsPx0uDo8hqk@intel.com>
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
 <20240322114046.24930-6-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240322114046.24930-6-stanislav.lisovskiy@intel.com>
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

On Fri, Mar 22, 2024 at 01:40:46PM +0200, Stanislav Lisovskiy wrote:
> Currently we can't change MBUS join status without doing a modeset,
> because we are lacking mechanism to synchronize those with vblank.
> However then this means that we can't do a fastset, if there is a need
> to change MBUS join state. Fix that by implementing such change.
> We already call correspondent check and update at pre_plane dbuf update,
> so the only thing left is to have a non-modeset version of that.
> If active pipes stay the same then fastset is possible and only MBUS
> join state/ddb allocation updates would be committed.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |   6 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c | 108 +++++++++++++++----
>  drivers/gpu/drm/i915/display/skl_watermark.h |   2 +
>  3 files changed, 94 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b88f214e111ae..d5351f6fa2eb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6895,6 +6895,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  		intel_pre_update_crtc(state, crtc);
>  	}
>  
> +	intel_dbuf_mbus_pre_ddb_update(state);
> +
>  	while (update_pipes) {
>  		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  						    new_crtc_state, i) {
> @@ -6925,6 +6927,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  		}
>  	}
>  
> +	intel_dbuf_mbus_post_ddb_update(state);
> +
>  	update_pipes = modeset_pipes;
>  
>  	/*
> @@ -7169,9 +7173,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	}
>  
>  	intel_encoders_update_prepare(state);
> -
>  	intel_dbuf_pre_plane_update(state);
> -	intel_mbus_dbox_update(state);
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		if (new_crtc_state->do_async_flip)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 7eb78e0c8c8e3..eee13b57d4830 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <drm/drm_blend.h>
> +#include <drm/drm_print.h>
>  
>  #include "i915_drv.h"
>  #include "i915_fixed.h"
> @@ -2636,13 +2637,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  		if (ret)
>  			return ret;
>  
> -		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
> -			/* TODO: Implement vblank synchronized MBUS joining changes */
> -			ret = intel_modeset_all_pipes_late(state, "MBUS joining change");
> -			if (ret)
> -				return ret;
> -		}
> -
>  		drm_dbg_kms(&i915->drm,
>  			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus joined? %s->%s\n",
>  			    old_dbuf_state->enabled_slices,
> @@ -3594,30 +3588,57 @@ static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state
>  					    new_dbuf_state->joined_mbus);
>  }
>  
> +static enum pipe intel_mbus_joined_pipe(struct intel_atomic_state *state,
> +				        const struct intel_dbuf_state *dbuf_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	enum pipe sync_pipe = ffs(dbuf_state->active_pipes) - 1;
> +	struct intel_crtc_state *new_crtc_state;

const

> +	struct intel_crtc *crtc;
> +
> +	drm_WARN_ON(&i915->drm, !dbuf_state->joined_mbus);
> +	drm_WARN_ON(&i915->drm, !is_power_of_2(dbuf_state->active_pipes));
> +
> +	crtc = intel_crtc_for_pipe(i915, sync_pipe);
> +	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (new_crtc_state && !intel_crtc_needs_modeset(new_crtc_state))
> +		return sync_pipe;
> +	else
> +		return INVALID_PIPE;
> +}
> +
>  /*
>   * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
>   * update the request state of all DBUS slices.
>   */
> -static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
> +static void intel_dbuf_mbus_ctl_update(struct intel_atomic_state *state,
> +				       enum pipe sync_pipe)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	u32 mbus_ctl;
>  	const struct intel_dbuf_state *new_dbuf_state =
>  		intel_atomic_get_new_dbuf_state(state);
> +	u32 pipe_select;
>  
>  	if (!HAS_MBUS_JOINING(i915))
>  		return;
>  
> +	if (sync_pipe != INVALID_PIPE)
> +		pipe_select = MBUS_JOIN_PIPE_SELECT(sync_pipe);
> +	else
> +		pipe_select = MBUS_JOIN_PIPE_SELECT_NONE;
> +
>  	/*
>  	 * TODO: Implement vblank synchronized MBUS joining changes.
>  	 * Must be properly coordinated with dbuf reprogramming.
>  	 */
>  	if (new_dbuf_state->joined_mbus)
>  		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
> -			MBUS_JOIN_PIPE_SELECT_NONE;
> +			pipe_select;
>  	else
>  		mbus_ctl = MBUS_HASHING_MODE_2x2 |
> -			MBUS_JOIN_PIPE_SELECT_NONE;
> +			pipe_select;

The 'pipe_select' variable looks completely redundant.
You can just do
if (sync_pipe != INVALID_PIPE)
	mbus_ctl |= ...
else
	mbus_ctl |= ...
directly here.

>  
>  	intel_de_rmw(i915, MBUS_CTL,
>  		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
> @@ -3632,6 +3653,42 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>  	const struct intel_dbuf_state *old_dbuf_state =
>  		intel_atomic_get_old_dbuf_state(state);
>  
> +	if (!new_dbuf_state ||
> +	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices))

redundant parens.

> +		return;
> +
> +	WARN_ON(!new_dbuf_state->base.changed);
> +
> +	gen9_dbuf_slices_update(i915,
> +				old_dbuf_state->enabled_slices |
> +				new_dbuf_state->enabled_slices);
> +}
> +
> +void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	const struct intel_dbuf_state *new_dbuf_state =
> +		intel_atomic_get_new_dbuf_state(state);
> +	const struct intel_dbuf_state *old_dbuf_state =
> +		intel_atomic_get_old_dbuf_state(state);
> +
> +	if (!new_dbuf_state ||
> +	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices))

ditto

> +		return;
> +
> +	WARN_ON(!new_dbuf_state->base.changed);
> +
> +	gen9_dbuf_slices_update(i915,
> +				new_dbuf_state->enabled_slices);
> +}
> +
> +void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state)
> +{
> +	const struct intel_dbuf_state *new_dbuf_state =
> +		intel_atomic_get_new_dbuf_state(state);
> +	const struct intel_dbuf_state *old_dbuf_state =
> +		intel_atomic_get_old_dbuf_state(state);
> +
>  	if (!new_dbuf_state ||
>  	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
>  	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
> @@ -3640,16 +3697,15 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>  	WARN_ON(!new_dbuf_state->base.changed);
>  
>  	if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus) {
> -		intel_dbuf_mbus_join_update(state);
> +		enum pipe sync_pipe = intel_mbus_joined_pipe(state, new_dbuf_state);
> +
> +		intel_dbuf_mbus_ctl_update(state, sync_pipe);
> +		intel_mbus_dbox_update(state);
>  		intel_dbuf_mdclk_min_tracker_update(state);
>  	}
> -
> -	gen9_dbuf_slices_update(i915,
> -				old_dbuf_state->enabled_slices |
> -				new_dbuf_state->enabled_slices);
>  }
>  
> -void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
> +void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_dbuf_state *new_dbuf_state =
> @@ -3657,6 +3713,12 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
>  	const struct intel_dbuf_state *old_dbuf_state =
>  		intel_atomic_get_old_dbuf_state(state);
>  
> +	if (new_dbuf_state && old_dbuf_state &&
> +	    new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus) {
> +		intel_dbuf_mdclk_min_tracker_update(state);
> +		intel_mbus_dbox_update(state);
> +	}

I still think should go into one of the new ddb hooks.
I think we want to program these before the new planes
get enabled. So I'd probably stuff this into the post ddb
hook.

> +
>  	if (!new_dbuf_state ||
>  	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
>  	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
> @@ -3665,12 +3727,18 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
>  	WARN_ON(!new_dbuf_state->base.changed);
>  
>  	if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus) {
> -		intel_dbuf_mbus_join_update(state);
> +		enum pipe sync_pipe = intel_mbus_joined_pipe(state, old_dbuf_state);
> +
>  		intel_dbuf_mdclk_min_tracker_update(state);
> -	}
> +		intel_mbus_dbox_update(state);
> +		intel_dbuf_mbus_ctl_update(state, sync_pipe);
>  
> -	gen9_dbuf_slices_update(i915,
> -				new_dbuf_state->enabled_slices);
> +		if (sync_pipe != INVALID_PIPE) {
> +			struct intel_crtc *crtc = intel_crtc_for_pipe(i915, sync_pipe);
> +
> +			intel_crtc_wait_for_next_vblank(crtc);
> +		}
> +	}
>  }
>  
>  static bool xelpdp_is_only_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> index 3a90741cab06a..f6d38b41e3a6c 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -77,6 +77,8 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8
>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
>  void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
>  void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio, bool joined_mbus);
> +void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state);
> +void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
>  void intel_mbus_dbox_update(struct intel_atomic_state *state);
>  
>  #endif /* __SKL_WATERMARK_H__ */
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
