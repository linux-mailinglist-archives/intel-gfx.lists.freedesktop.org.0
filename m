Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ChgKhV6DGoSiQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 16:56:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D37580F93
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 16:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F91810ED56;
	Tue, 19 May 2026 14:56:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDa1cdYw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06F4410ED56;
 Tue, 19 May 2026 14:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779202579; x=1810738579;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=d5WI33wwgLOWu5YvhICyBNKb03JYP7e5pQ6o1HZUfB8=;
 b=SDa1cdYwoEjOXQ7OZ2+BSXBcpfLVSWp+GrL73e/K+yjlpNXu3gjyVBFo
 Y2QFJovt/2iFZIlKZHjSb/saj2fDqOPanTzWmosOAYsm4o/MSvIbT9PgP
 dQ0mYtCzdoiiCFWCPOXX/tJMHAVfL011KXH6dfT1Tmr8Un1zoVvBgf1pn
 E4w4b82+vrDDRj5Jk9CkL9h6yvOai3mPzbOTnd253c0Fr7768BzpHnY5y
 GEOvPR8aaYm2+fBW7NuzFDDfxyJ1CgYcJJFmL0HtumkSLmNOT9jnrgLmG
 sFGMz+N+KZRe0NHYrtGkjpSUU86DZXX5hcesQwlW11bXJlX+CJWsus42j A==;
X-CSE-ConnectionGUID: Hgg2pA68QG+PLrextxMLag==
X-CSE-MsgGUID: VvnJim7+SNqGPQ1hwiGfZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="80062728"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80062728"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 07:56:18 -0700
X-CSE-ConnectionGUID: Aj5T+shtRju+sA2eKaX6xA==
X-CSE-MsgGUID: +xZLhhB7S7SrtImx/0cqPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="277900867"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.16])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 07:56:16 -0700
Date: Tue, 19 May 2026 17:56:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, navaremanasi@google.com
Subject: Re: [PATCH 1/6] drm/i915/display: Deprecate TRANS_VSYNC where VRR TG
 is always on
Message-ID: <agx6DFAZQzxw3OUs@intel.com>
References: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
 <20260512133249.2475882-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260512133249.2475882-2-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 00D37580F93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 12, 2026 at 07:02:44PM +0530, Ankit Nautiyal wrote:
> The VRR Timing generator does not use TRANS_VSYNC register, instead it
> use TRANS_VRR_VSYNC registers for both variable and fixed timings.
> 
> Avoid using TRANS_VSYNC registers for platforms that always use VRR
> timing generator. The crtc_vsync_{start, end} fields of the adjusted
> mode can still be filled with the Vsync start/end values, while readback
> these can be derived from TRANS_VRR_VSYNC. Since the TRANS_VRR_VSYNC
> register has vrr_vsync_{start,end} measured from the Vtotal, to get the
> crtc_vsync_{start, end} we need to subtract the vrr values from the
> Vtotal.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++++---
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 31 ++++++++++++++------
>  2 files changed, 37 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d5cf1476c7b9..548a12aff88f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2653,6 +2653,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
> +	u32 crtc_vsync_start, crtc_vsync_end;
>  	int vsyncshift = 0;
>  
>  	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> @@ -2727,9 +2728,17 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> +	if (intel_vrr_always_use_vrr_tg(display)) {
> +		crtc_vsync_start = 1;
> +		crtc_vsync_end = 1;

At least the vsync interrupt still uses TRANS_VSYNC on LNL, even when
using the VRR timing generator. So I don't think we want to do this
until the hardware has really stopped using TRANS_VSYNC, which perhaps
means NVL+. I still need to check how PTL behaves...

> +	} else {
> +		crtc_vsync_start = adjusted_mode->crtc_vsync_start;
> +		crtc_vsync_end = adjusted_mode->crtc_vsync_end;
> +	}
> +
>  	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> -		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> -		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> +		       VSYNC_START(crtc_vsync_start - 1) |
> +		       VSYNC_END(crtc_vsync_end - 1));
>  
>  	/* Workaround: when the EDP input selection is B, the VTOTAL_B must be
>  	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
> @@ -5162,8 +5171,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
>  	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
>  		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> -	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> -	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> +	if (!intel_vrr_always_use_vrr_tg(display)) { \
> +		PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> +		PIPE_CONF_CHECK_I(name.crtc_vsync_end); \

IMO we should just handle these through the LRR codepath, just like
vtotal and vblank_end.

> +	} \
>  	if (!fastset || !pipe_config->update_lrr) { \
>  		PIPE_CONF_CHECK_I(name.crtc_vtotal); \
>  		PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 1b09992ce9fd..24aa74475e64 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -1099,24 +1099,37 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
>  		}
>  
> +		if (HAS_AS_SDP(display)) {
> +			trans_vrr_vsync =
> +				intel_de_read(display,
> +					      TRANS_VRR_VSYNC(display, cpu_transcoder));
> +			crtc_state->vrr.vsync_start =
> +				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
> +			crtc_state->vrr.vsync_end =
> +				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
> +		}
> +
>  		/*
>  		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
>  		 * bits are not filled. Since for these platforms TRAN_VMIN is always
>  		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
>  		 * adjusted_mode.
> +		 *
> +		 * Similarly Vsync start/end are also not used when VRR TG is used.
> +		 * Use the TRANS_VRR_VSYNC to fill these. Since these are relative
> +		 * from the Vtotal, subtract from the crtc_vtotal to get the correct
> +		 * value.
>  		 */
> -		if (intel_vrr_always_use_vrr_tg(display))
> +		if (intel_vrr_always_use_vrr_tg(display)) {
>  			crtc_state->hw.adjusted_mode.crtc_vtotal =
>  				intel_vrr_vmin_vtotal(crtc_state);
>  
> -		if (HAS_AS_SDP(display)) {
> -			trans_vrr_vsync =
> -				intel_de_read(display,
> -					      TRANS_VRR_VSYNC(display, cpu_transcoder));
> -			crtc_state->vrr.vsync_start =
> -				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
> -			crtc_state->vrr.vsync_end =
> -				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
> +			crtc_state->hw.adjusted_mode.crtc_vsync_start =
> +				crtc_state->hw.adjusted_mode.crtc_vtotal -
> +				crtc_state->vrr.vsync_start;
> +			crtc_state->hw.adjusted_mode.crtc_vsync_end =
> +				crtc_state->hw.adjusted_mode.crtc_vtotal -
> +				crtc_state->vrr.vsync_end;
>  		}
>  	}
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
