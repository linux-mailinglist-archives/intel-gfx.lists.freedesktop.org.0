Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPwQEmxxGWqNwggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 12:58:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAA0601361
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 12:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBA8310FD10;
	Fri, 29 May 2026 10:58:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VRfXjyRk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E450810FD10;
 Fri, 29 May 2026 10:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052327; x=1811588327;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QJ/sUGLkXl+M50IPZjeqXVKQtQAylYNzx/Gxe8YU2/U=;
 b=VRfXjyRkS+GndpSdY79Vsgfl6pZbK4UYsJ/4FSBAHR934rhMniscTMXs
 623Wwe4GCiPanMNfiKLSgI/H0dTqggftj9LyviWhtRzBKTQ/91kgIYMIY
 uO91C6vBLJm3OArvtdhiezRvvIx89WWHFbZKmCvZ12Bun7uPh0+3zPR02
 0V60GIXOcGBoFCTFqWZ9W+OUUgTxwJXMzvzrLzOiRLZNl6rprEUDnvqjO
 YUK/L+R9gUgqZIt+4F5pZwBMK4W8ARuxfNHONiCZJbdhUqyDNgMpHpJKr
 p8JECoNOiuEqMOAlGONWHV39kbomQ/8Dq54y8OQr5Kvi5f//WfTjyS8Fq w==;
X-CSE-ConnectionGUID: 37/6jbG2Ry6hsHySRITcCw==
X-CSE-MsgGUID: DebDorLOQGqLUtFKamSPbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="84528045"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="84528045"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:58:47 -0700
X-CSE-ConnectionGUID: J7+G4/BvSP2CaPEcETEiLg==
X-CSE-MsgGUID: 8bIAKYEvRr2qrg7Jjh5YTQ==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:58:44 -0700
Date: Fri, 29 May 2026 13:58:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com
Subject: Re: [PATCH v7 04/15] drm/i915/cmtg: Set timings for CMTG
Message-ID: <ahlxYUKRBlA1KMDP@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-5-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260526133811.2621675-5-animesh.manna@intel.com>
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 2AAA0601361
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 26, 2026 at 07:08:00PM +0530, Animesh Manna wrote:
> Timing registers are separate for CMTG, read transcoder register
> and program cmtg transcoder with those values.
> 
> v2:
> - Use sw state instead of reading directly from hardware. [Jani]
> - Move set_timing later after encoder enable. [Dibin]
> 
> v3:
> - Replace id with trans. [Jani]
> - Program cmtg set_timing() along with primary transcoder timing.
> 
> v4:
> - Use _MMIO_TRANS() for cmtg registers instead of direct
> multiplication. [Jani]
> 
> v5:
> - Modify register definition approach and match existing
> transcoder definition. [Ville]
> 
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c    | 74 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c |  4 ++
>  3 files changed, 79 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index fbc8a4f2b9cb..0e730afbb4ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -219,3 +219,77 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
>  	if (clk_sel_set)
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
>  }
> +
> +static inline enum transcoder to_cmtg_transcoder(enum transcoder cpu_transcoder)
> +{
> +	switch (cpu_transcoder) {
> +	case TRANSCODER_A:
> +		return TRANSCODER_CMTG0;
> +	case TRANSCODER_B:
> +		return TRANSCODER_CMTG1;
> +	default:
> +		return INVALID_TRANSCODER;
> +	}
> +}
> +
> +void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	enum transcoder cmtg_transcoder = to_cmtg_transcoder(crtc_state->cpu_transcoder);
> +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
> +
> +	/*
> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +	 * bits are not required. Since the support for these bits is going to
> +	 * be deprecated in upcoming platforms, avoid writing these bits for the
> +	 * platforms that do not use legacy Timing Generator.
> +	 */
> +	crtc_vtotal = 1;
> +
> +	/*
> +	 * VBLANK_START not used by hw, just clear it
> +	 * to make it stand out in register dumps.
> +	 */
> +	crtc_vblank_start = 1;
> +
> +	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
> +
> +	if (lrr) {
> +		intel_de_write(display, TRANS_SET_CONTEXT_LATENCY(display, cmtg_transcoder),
> +			       crtc_state->set_context_latency);
> +		intel_de_write(display, TRANS_VBLANK(display, cmtg_transcoder),
> +			       VBLANK_START(crtc_vblank_start - 1) |
> +			       VBLANK_END(crtc_vblank_end - 1));
> +		intel_de_write(display, TRANS_VTOTAL(display, cmtg_transcoder),
> +			       VACTIVE(crtc_vdisplay - 1) |
> +			       VTOTAL(crtc_vtotal - 1));
> +		return;
> +	}
> +
> +	intel_de_write(display, TRANS_HTOTAL(display, cmtg_transcoder),
> +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> +	intel_de_write(display, TRANS_HBLANK(display, cmtg_transcoder),
> +		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> +		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> +	intel_de_write(display, TRANS_HSYNC(display, cmtg_transcoder),
> +		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> +		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> +	intel_de_write(display, TRANS_VTOTAL(display, cmtg_transcoder),
> +		       VACTIVE(crtc_vdisplay - 1) |
> +		       VTOTAL(crtc_vtotal - 1));
> +	intel_de_write(display, TRANS_VBLANK(display, cmtg_transcoder),
> +		       VBLANK_START(crtc_vblank_start - 1) |
> +		       VBLANK_END(crtc_vblank_end - 1));
> +	intel_de_write(display, TRANS_VSYNC(display, cmtg_transcoder),
> +		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> +		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> +	intel_de_write(display, TRANS_SET_CONTEXT_LATENCY(display, cmtg_transcoder),
> +		       crtc_state->set_context_latency);
> +}

We already have functions to configure the timing registers. Why can't
we just reuse those (as in pass the transcoder from the caller)?

> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 87092ce6d67b..53a44f505dd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>  
> +void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr);
>  void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_sanitize(struct intel_display *display);
>  bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 6c8935f69db1..f8bcd1fcddca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -60,6 +60,7 @@
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
> +#include "intel_cmtg.h"
>  #include "intel_color.h"
>  #include "intel_crt.h"
>  #include "intel_crtc.h"
> @@ -2753,6 +2754,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  		intel_de_write(display, DP_MIN_HBLANK_CTL(cpu_transcoder),
>  			       crtc_state->min_hblank);
>  	}
> +
> +	intel_cmtg_set_timings(crtc_state, false);
>  }
>  
>  static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
> @@ -2814,6 +2817,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
>  
> +	intel_cmtg_set_timings(crtc_state, true);
>  	intel_vrr_set_fixed_rr_timings(crtc_state);
>  	intel_vrr_transcoder_enable(crtc_state);
>  }
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
