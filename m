Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aArSJIRvd2m8gAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 14:43:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F113C8906F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 14:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E3CE10E42C;
	Mon, 26 Jan 2026 13:43:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WEkWCEFw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 562D310E42C;
 Mon, 26 Jan 2026 13:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769435009; x=1800971009;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BeqV843mk3V8TG2vdrZjoq3c/J15u23vhAv7COZ2c1I=;
 b=WEkWCEFwBIi0rz5eeVMwd83Sz+G0FZLTPP3gPIuv0La6/Eza08QINJRY
 ///jMsbFRD4PXg+smfuUDSXsE64vOGnqX5UF8SHWMkUG956Zal1rhOfie
 WZnMx+5t2+gkbhNQNqQb21i+WI1OT1fDBhmPg56+Zva0U2Fo684SUzudI
 wKVd+J+zJ/91rJ7Z8C/CPfjMn1oLomwY0CWGCeqZnlYE+FAXE31d2cvz0
 HCYh5mixdNg/iAin1G9the4ulyXbh7EPw9s58kNjapK6GSF7pLU1mVmC9
 cUNXbV995r+EJ2foAzCJK79YLpq3Nrwykr6rk5z2RqZpBe0Sd4WOeVr5P A==;
X-CSE-ConnectionGUID: q5u01gVqTkSM8UiUe2QyLw==
X-CSE-MsgGUID: I8LILf1/Rhe5cP2kHL2LPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70666644"
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="70666644"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 05:43:29 -0800
X-CSE-ConnectionGUID: mDGGjKJpSTqnCITiW7s7Rw==
X-CSE-MsgGUID: L+mXZumJTWepWNUIbezMNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="212668811"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.99])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 05:43:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com,
 juha-pekka.heikkila@intel.com
Subject: Re: [PATCH v2] drm/i915/display: fix the pixel normalization
 handling for xe3p_lpd
In-Reply-To: <20260126132908.619409-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260126132908.619409-1-vinod.govindapillai@intel.com>
Date: Mon, 26 Jan 2026 15:43:23 +0200
Message-ID: <bd2e79d77212ea5bec52291e038421705b1f09b1@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F113C8906F
X-Rspamd-Action: no action

On Mon, 26 Jan 2026, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Pixel normalizer is enabled with normalization factor as 1.0 for
> FP16 formats in order to support FBC for those formats in xe3p_lpd.
> Previously pixel normalizer gets disabled during the plane disable
> routine. But there could be plane format settings without explicitly
> calling the plane disable in-between and we could endup keeping the
> pixel normalizer enabled for formats which we don't require that.
> This is causing crc mismatches in yuv formats and FIFO underruns in
> planar formats like NV12.
>
> Fix this by updating the pixel normalizer configuration based on the
> pixel formats explicitly during the plane settings arm calls itself
> - enable it for FP16 and disable it for other formats in HDR capable
> planes. To avoid redundancies in these updates, normalization factor
> between old and new plane states are compared before the update. The
> function to check validity of the fp16 formats for fbc is now updated
> to return the normalization factor as 1.0 in case of fp16 formats and
> 0 in other cases.
>
> v2: avoid redundant pixel normalization setting updates
>
> Fixes: 5298eea7ed20 ("drm/i915/xe3p_lpd: use pixel normalizer for fp16 formats for FBC")
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  .../drm/i915/display/intel_display_types.h    |  8 ++
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 17 +++-
>  drivers/gpu/drm/i915/display/intel_fbc.h      |  4 +-
>  .../drm/i915/display/skl_universal_plane.c    | 82 +++++++++++++++----
>  5 files changed, 90 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 6c74d6b0cc48..126aa1eeeb6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -175,6 +175,7 @@ struct intel_display_platforms {
>  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
>  #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
>  #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
> +#define HAS_FBC_FP16_FORMATS(__display)	(DISPLAY_VER(__display) >= 35)
>  #define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >= 35 && !(__display)->platform.dgfx)
>  #define HAS_FPGA_DBG_UNCLAIMED(__display)	(DISPLAY_INFO(__display)->has_fpga_dbg)
>  #define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >= 3)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 07b626d22748..f42f2609d837 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -685,6 +685,14 @@ struct intel_plane_state {
>  	unsigned long flags;
>  #define PLANE_HAS_FENCE BIT(0)
>  
> +	/* xe3p_lpd+ */
> +	struct {
> +		/* 0x3c00 (1.0) for fp16 formats and else disable (0) */
> +		unsigned int factor;

What is the format of this number? What makes 0x3c00 mean 1.0?

> +		/* update is needed if factor differs between old and new plane states */
> +		bool needs_update;
> +	} pixel_normalizer;
> +
>  	struct intel_fb_view view;
>  
>  	/* for legacy cursor fb unpin */
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index fef2f35ff1e9..dbedc8ea8cdf 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -60,6 +60,7 @@
>  #include "intel_frontbuffer.h"
>  #include "intel_parent.h"
>  #include "intel_step.h"
> +#include "skl_universal_plane_regs.h"
>  
>  #define for_each_fbc_id(__display, __fbc_id) \
>  	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
> @@ -1202,13 +1203,21 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *p
>  	}
>  }
>  
> -bool
> -intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state *plane_state)
> +unsigned int
> +intel_fbc_normalization_factor(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display = to_intel_display(plane_state);
>  
> -	return DISPLAY_VER(display) >= 35 &&
> -	       xe3p_lpd_fbc_fp16_format_is_valid(plane_state);
> +	/*
> +	 * In order to have FBC for fp16 formats pixel normalizer block must be
> +	 * active. For FP16 formats, use normalization factor as 1.0 and enable
> +	 * the block.
> +	 */
> +	if (HAS_FBC_FP16_FORMATS(display) &&
> +	    xe3p_lpd_fbc_fp16_format_is_valid(plane_state))
> +		return PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0;

Ditto here. I don't particularly like encoding register values to
function return values like this. Basically, including
skl_universal_plane_regs.h here feels wrong.


BR,
Jani.


> +
> +	return 0;
>  }
>  
>  static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> index f0255ddae2b6..b5888e98a659 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -56,7 +56,7 @@ void intel_fbc_prepare_dirty_rect(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc);
>  void intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
>  				       struct intel_plane *plane);
> -bool
> -intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state *plane_state);
> +unsigned int
> +intel_fbc_normalization_factor(const struct intel_plane_state *plane_state);
>  
>  #endif /* __INTEL_FBC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index b3d41705448a..05c227913b8d 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -891,20 +891,49 @@ static void icl_plane_disable_sel_fetch_arm(struct intel_dsb *dsb,
>  	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_CTL(pipe, plane->id), 0);
>  }
>  
> -static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
> -						  struct intel_plane *plane,
> -						  bool enable)
> +static void xe3p_lpd_plane_disable_pixel_normalizer(struct intel_dsb *dsb,
> +						    struct intel_plane *plane)
>  {
>  	struct intel_display *display = to_intel_display(plane);
>  	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(plane->pipe);
> -	u32 val;
> +	const struct intel_plane_state *plane_state =
> +		to_intel_plane_state(plane->base.state);
> +
> +	if (!HAS_FBC_FP16_FORMATS(display))
> +		return;
> +
> +	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
> +		return;
> +
> +	if (!plane_state->pixel_normalizer.factor)
> +		return;
> +
> +	intel_de_write_dsb(display, dsb,
> +			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id), 0);
> +}
> +
> +static void xe3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
> +						   struct intel_plane *plane)
> +{
> +	struct intel_display *display = to_intel_display(plane);
> +	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(plane->pipe);
> +	const struct intel_plane_state *plane_state =
> +		to_intel_plane_state(plane->base.state);
> +	u32 val = 0;
> +
> +	if (!HAS_FBC_FP16_FORMATS(display))
> +		return;
>  
> -	/* Only HDR planes have pixel normalizer and don't matter if no FBC */
> +	/* Only HDR planes have pixel normalizer and don't matter if FBC is fused off */
>  	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
>  		return;
>  
> -	val = enable ? PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0) |
> -		       PLANE_PIXEL_NORMALIZE_ENABLE : 0;
> +	if (!plane_state->pixel_normalizer.needs_update)
> +		return;
> +
> +	if (plane_state->pixel_normalizer.factor)
> +		val = PLANE_PIXEL_NORMALIZE_NORM_FACTOR(plane_state->pixel_normalizer.factor) |
> +		      PLANE_PIXEL_NORMALIZE_ENABLE;
>  
>  	intel_de_write_dsb(display, dsb,
>  			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id), val);
> @@ -926,8 +955,7 @@ icl_plane_disable_arm(struct intel_dsb *dsb,
>  
>  	icl_plane_disable_sel_fetch_arm(dsb, plane, crtc_state);
>  
> -	if (DISPLAY_VER(display) >= 35)
> -		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, false);
> +	xe3p_lpd_plane_disable_pixel_normalizer(dsb, plane);
>  
>  	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id), 0);
>  	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id), 0);
> @@ -1674,13 +1702,7 @@ icl_plane_update_arm(struct intel_dsb *dsb,
>  
>  	intel_color_plane_commit_arm(dsb, plane_state);
>  
> -	/*
> -	 * In order to have FBC for fp16 formats pixel normalizer block must be
> -	 * active. Check if pixel normalizer block need to be enabled for FBC.
> -	 * If needed, use normalization factor as 1.0 and enable the block.
> -	 */
> -	if (intel_fbc_is_enable_pixel_normalizer(plane_state))
> -		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, true);
> +	xe3p_lpd_plane_update_pixel_normalizer(dsb, plane);
>  
>  	/*
>  	 * The control register self-arms if the plane was previously
> @@ -2350,6 +2372,32 @@ static void clip_damage(struct intel_plane_state *plane_state)
>  	drm_rect_intersect(damage, &src);
>  }
>  
> +static void check_pixel_normalizer(struct intel_plane_state *plane_state)
> +{
> +	struct intel_display *display = to_intel_display(plane_state);
> +	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> +	struct intel_atomic_state *state =
> +		to_intel_atomic_state(plane_state->uapi.state);
> +	const struct intel_plane_state *old_plane_state =
> +		intel_atomic_get_old_plane_state(state, plane);
> +
> +	if (!HAS_FBC_FP16_FORMATS(display))
> +		return;
> +
> +	plane_state->pixel_normalizer.factor =
> +		intel_fbc_normalization_factor(plane_state);
> +
> +	/*
> +	 * In case of no old state to compare, better to force update the pixel
> +	 * normalizer settings.
> +	 */
> +	plane_state->pixel_normalizer.needs_update = true;
> +	if (old_plane_state && old_plane_state->hw.fb)
> +		plane_state->pixel_normalizer.needs_update =
> +			plane_state->pixel_normalizer.factor !=
> +			intel_fbc_normalization_factor(old_plane_state);
> +}
> +
>  static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  			   struct intel_plane_state *plane_state)
>  {
> @@ -2400,6 +2448,8 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  
>  	check_protection(plane_state);
>  
> +	check_pixel_normalizer(plane_state);
> +
>  	/* HW only has 8 bits pixel precision, disable plane if invisible */
>  	if (!(plane_state->hw.alpha >> 8)) {
>  		plane_state->uapi.visible = false;

-- 
Jani Nikula, Intel
