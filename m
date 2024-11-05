Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA67D9BC87C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 09:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B7E10E539;
	Tue,  5 Nov 2024 08:59:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fPMRi7qz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 098E610E2D0;
 Tue,  5 Nov 2024 08:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730797138; x=1762333138;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Rc31WzG8XOq0b06P9oFun1UDTWm0DEJ3qijU9AzkF/A=;
 b=fPMRi7qz2fE/lG+uIKgZXvPR+yOtNgSt0kO7ZNTpqumFvIrhKCjFJM4w
 OgiGKTwzdF2sCm2x8Iotz5Sv5iw6S1wPYimTyVJQu5+6goHozM4N3NqEC
 Kfg2t4WM8oPuQjHRO3DDVavTlUSBI5SrhezmqXRydBUE0oNTL8IPixZ+h
 ki3KmnxELQPeNQbgyOJ/NIYH0xdWsM4VzoyOHqS2pBuYRaN6Sr0+d25j6
 KXc5CyL1P9f2UKK0V6XXh8kyUVK3r+pwe47h6WPxE/lGZpfaCNHBRJfa+
 31Gy9Su8BKotY6Zkd2xpQJMv0NmUPLnKwcRHJG0uD6wQeY1p7bcSZQdSV w==;
X-CSE-ConnectionGUID: 2YBUDD3GQl+n8Lr+VJqfLQ==
X-CSE-MsgGUID: XgZzDjGURwSveqV3yYDebQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="41902134"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="41902134"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 00:58:58 -0800
X-CSE-ConnectionGUID: FHp736QXRdaPPR5Nggbgkg==
X-CSE-MsgGUID: byoFT3wjQgW1AI1va+LA9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="84050806"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.82])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 00:58:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 2/8] drm/i9i5/display: use intel_display in
 intel_de_read calls of skl_watermark.c
In-Reply-To: <20241105071600.235338-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
 <20241105071600.235338-3-vinod.govindapillai@intel.com>
Date: Tue, 05 Nov 2024 10:58:52 +0200
Message-ID: <87zfmegipf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 05 Nov 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Convert all intel_de_read() to use intel_display instead of
> struct drm_i915_private object. This is in preparation for
> the rest of the patches in this series where hw support for
> the minimum and interim ddb allocations for async flip is
> added.
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 48 +++++++++++---------
>  1 file changed, 26 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index d9d7238f0fb4..2afc95e7533c 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -82,12 +82,14 @@ intel_has_sagv(struct drm_i915_private *i915)
>  }
>  
>  static u32
> -intel_sagv_block_time(struct drm_i915_private *i915)
> +intel_sagv_block_time(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
>  	if (DISPLAY_VER(i915) >= 14) {

Please don't limit to changing just the intel_de_* per function. Convert
all you can.

>  		u32 val;
>  
> -		val = intel_de_read(i915, MTL_LATENCY_SAGV);
> +		val = intel_de_read(display, MTL_LATENCY_SAGV);
>  
>  		return REG_FIELD_GET(MTL_LATENCY_QCLK_SAGV, val);
>  	} else if (DISPLAY_VER(i915) >= 12) {
> @@ -126,7 +128,7 @@ static void intel_sagv_init(struct drm_i915_private *i915)
>  
>  	drm_WARN_ON(&i915->drm, i915->display.sagv.status == I915_SAGV_UNKNOWN);
>  
> -	i915->display.sagv.block_time_us = intel_sagv_block_time(i915);
> +	i915->display.sagv.block_time_us = intel_sagv_block_time(&i915->display);

Please add struct intel_display *display local variable.

You don't need to change everything here (in the caller side) in one go,
but quite obviously the function would benefit from further changes.

>  
>  	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
>  		    str_yes_no(intel_has_sagv(i915)), i915->display.sagv.block_time_us);
> @@ -791,7 +793,7 @@ static void skl_ddb_entry_init_from_hw(struct skl_ddb_entry *entry, u32 reg)
>  }
>  
>  static void
> -skl_ddb_get_hw_plane_state(struct drm_i915_private *i915,
> +skl_ddb_get_hw_plane_state(struct intel_display *display,
>  			   const enum pipe pipe,
>  			   const enum plane_id plane_id,
>  			   struct skl_ddb_entry *ddb,
> @@ -801,18 +803,18 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *i915,
>  
>  	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
>  	if (plane_id == PLANE_CURSOR) {
> -		val = intel_de_read(i915, CUR_BUF_CFG(pipe));
> +		val = intel_de_read(display, CUR_BUF_CFG(pipe));
>  		skl_ddb_entry_init_from_hw(ddb, val);
>  		return;
>  	}
>  
> -	val = intel_de_read(i915, PLANE_BUF_CFG(pipe, plane_id));
> +	val = intel_de_read(display, PLANE_BUF_CFG(pipe, plane_id));
>  	skl_ddb_entry_init_from_hw(ddb, val);
>  
> -	if (DISPLAY_VER(i915) >= 11)
> +	if (DISPLAY_VER(display) >= 11)
>  		return;
>  
> -	val = intel_de_read(i915, PLANE_NV12_BUF_CFG(pipe, plane_id));
> +	val = intel_de_read(display, PLANE_NV12_BUF_CFG(pipe, plane_id));
>  	skl_ddb_entry_init_from_hw(ddb_y, val);
>  }
>  
> @@ -832,7 +834,7 @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  		return;
>  
>  	for_each_plane_id_on_crtc(crtc, plane_id)
> -		skl_ddb_get_hw_plane_state(i915, pipe,
> +		skl_ddb_get_hw_plane_state(&i915->display, pipe,

Please add the local variable.

>  					   plane_id,
>  					   &ddb[plane_id],
>  					   &ddb_y[plane_id]);
> @@ -2932,6 +2934,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  				     struct skl_pipe_wm *out)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_display *display = &i915->display;

Please initialize struct intel_display *display using
to_intel_display(...) when possible instead of i915. Here, it would be:

	struct intel_display *display = to_intel_display(crtc);

That doesn't need to be changed anymore, &i915->display does.

And please put the display variable first.

>  	enum pipe pipe = crtc->pipe;
>  	enum plane_id plane_id;
>  	int level;
> @@ -2942,32 +2945,32 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  
>  		for (level = 0; level < i915->display.wm.num_levels; level++) {

Please don't limit to changing just intel_de_*. This should be
display->wm.num_levels. Etc.

>  			if (plane_id != PLANE_CURSOR)
> -				val = intel_de_read(i915, PLANE_WM(pipe, plane_id, level));
> +				val = intel_de_read(display, PLANE_WM(pipe, plane_id, level));
>  			else
> -				val = intel_de_read(i915, CUR_WM(pipe, level));
> +				val = intel_de_read(display, CUR_WM(pipe, level));
>  
>  			skl_wm_level_from_reg_val(val, &wm->wm[level]);
>  		}
>  
>  		if (plane_id != PLANE_CURSOR)
> -			val = intel_de_read(i915, PLANE_WM_TRANS(pipe, plane_id));
> +			val = intel_de_read(display, PLANE_WM_TRANS(pipe, plane_id));
>  		else
> -			val = intel_de_read(i915, CUR_WM_TRANS(pipe));
> +			val = intel_de_read(display, CUR_WM_TRANS(pipe));
>  
>  		skl_wm_level_from_reg_val(val, &wm->trans_wm);
>  
>  		if (HAS_HW_SAGV_WM(i915)) {
>  			if (plane_id != PLANE_CURSOR)
> -				val = intel_de_read(i915, PLANE_WM_SAGV(pipe, plane_id));
> +				val = intel_de_read(display, PLANE_WM_SAGV(pipe, plane_id));
>  			else
> -				val = intel_de_read(i915, CUR_WM_SAGV(pipe));
> +				val = intel_de_read(display, CUR_WM_SAGV(pipe));
>  
>  			skl_wm_level_from_reg_val(val, &wm->sagv.wm0);
>  
>  			if (plane_id != PLANE_CURSOR)
> -				val = intel_de_read(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id));
> +				val = intel_de_read(display, PLANE_WM_SAGV_TRANS(pipe, plane_id));
>  			else
> -				val = intel_de_read(i915, CUR_WM_SAGV_TRANS(pipe));
> +				val = intel_de_read(display, CUR_WM_SAGV_TRANS(pipe));
>  
>  			skl_wm_level_from_reg_val(val, &wm->sagv.trans_wm);
>  		} else if (DISPLAY_VER(i915) >= 12) {
> @@ -2985,7 +2988,7 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
>  	struct intel_crtc *crtc;
>  
>  	if (HAS_MBUS_JOINING(i915))
> -		dbuf_state->joined_mbus = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
> +		dbuf_state->joined_mbus = intel_de_read(display, MBUS_CTL) & MBUS_JOIN;
>  
>  	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(display, &display->cdclk.hw);
>  
> @@ -3014,7 +3017,7 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
>  			if (!crtc_state->hw.active)
>  				continue;
>  
> -			skl_ddb_get_hw_plane_state(i915, crtc->pipe,
> +			skl_ddb_get_hw_plane_state(display, crtc->pipe,
>  						   plane_id, ddb, ddb_y);
>  
>  			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb);
> @@ -3330,18 +3333,19 @@ adjust_wm_latency(struct drm_i915_private *i915,
>  
>  static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
>  {
> +	struct intel_display *display = &i915->display;
>  	int num_levels = i915->display.wm.num_levels;

display->wm.num_levels

>  	u32 val;
>  
> -	val = intel_de_read(i915, MTL_LATENCY_LP0_LP1);
> +	val = intel_de_read(display, MTL_LATENCY_LP0_LP1);
>  	wm[0] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
>  	wm[1] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
>  
> -	val = intel_de_read(i915, MTL_LATENCY_LP2_LP3);
> +	val = intel_de_read(display, MTL_LATENCY_LP2_LP3);
>  	wm[2] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
>  	wm[3] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
>  
> -	val = intel_de_read(i915, MTL_LATENCY_LP4_LP5);
> +	val = intel_de_read(display, MTL_LATENCY_LP4_LP5);
>  	wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
>  	wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);

-- 
Jani Nikula, Intel
