Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id VEwtGwNV4mlg5AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 17:42:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DF841CBE9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 17:42:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02B9910EA50;
	Fri, 17 Apr 2026 15:42:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wmt1tiy6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC1B10EA4A;
 Fri, 17 Apr 2026 15:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776440572; x=1807976572;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wauPbR+pPgvUL9gvV2glMNoRKAMBi2UGesqFO/Djyu8=;
 b=Wmt1tiy6krKEqh++qXxOUAPnmkUPMdsgeZSjTYwz7K3Z9UJ61H1731h2
 Ie43g8/RepiZm84SpcH49Ix9kwYLei0R5jeE+SEkjStuNGSwsFtBWFxKL
 pANq9y+NR615DYL9+D5lN1l6HLtpSr9rjE7nBp55b4VJzUB8sL9D1veSA
 1TecNyxTWQO2gTvXNn0B8Zb8q6ligY78ij6C/2xLGgo372g21ZGGDM07Y
 bRGqBwmjV57kCsWzcsWyIXPoYvFV/S+VkZ5il5tHbRUCm89a6B9AqtPgj
 Ws07eWE70j9m2h1vlUJN2lHAA36OmyjWhEP9pAeG9T7r+2gzrGzcF37tW g==;
X-CSE-ConnectionGUID: DOpC34FlQVWHzDtXTqS75w==
X-CSE-MsgGUID: XdXsI1C6TkSU8rNicVHnRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81336674"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="81336674"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 08:42:51 -0700
X-CSE-ConnectionGUID: 3lMM3nQETAqeLEqTTKfxWA==
X-CSE-MsgGUID: ONlPDrOPSoWKMik/yX3Few==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="224561692"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.245.176])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 08:42:49 -0700
Date: Fri, 17 Apr 2026 18:42:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 seanpaul@google.com, navaremanasi@google.com, shawn.c.lee@intel.com
Subject: Re: [PATCH] [RFC]: drm/i915/display: Fix vblank timestamps for fixed
 RR on VRR-TG-always platforms
Message-ID: <aeJU9ubmOwiukGuG@intel.com>
References: <20260417124439.206962-1-vidya.srinivas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260417124439.206962-1-vidya.srinivas@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E2DF841CBE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 06:14:39PM +0530, Vidya Srinivas wrote:
> On LNL+ VRR timing generator is always active.
> For panels like this
> 
> "2880x1800": 120 709633 2880 2888 2920 3080 1800 1880 1896 1920 0x48 0xa
> "2880x1800":  60 709633 2880 2888 2920 3080 1800 3800 3816 3840 0x40 0xa
> 
> that use the same pixel clock with a stretched vtotal have a large front
> porch. For this case 2880x1800 panel:
> 120Hz: vtotal=1920 (120 lines of front porch)
> 60Hz: vtotal=3840 (2000 lines of front porch)
> 
> When at lower RR (60Hz) and "vrr_enable = false" this issue was seen
> The intel_crtc_active_timings() function is not adjusting
> crtc_vblank_start for the VRR TG when vrr_enable=false, leaving it at
> the raw mode value of 1800 (vactive end). Since the VRR TG counts all
> the way to vtotal=3840, the actual frame latch happens at line 3840
> (16.67ms), but the vblank timestamp was reported at line 1800 (7.8ms).
> 
> This caused Android SurfaceFlinger to miscalculate frame deadlines --
> it received fence signals ~8ms into the 16.67ms frame and concluded
> frames were being presented late, leading to dropped frames during
> heavy workloads like video playback at 60Hz.
> 
> Fix by adjusting crtc_vblank_start, crtc_vblank_end, and crtc_vtotal
> to match the VRR timing generator values when
> intel_vrr_always_use_vrr_tg() is true, even when vrr_enable is false.a

intel_vrr_compute_guardband() is supposed to tweak the
adjusted_mode timings appropriately.

> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 0726a2abed38..8e0798277d5e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -527,8 +527,26 @@ static void intel_crtc_active_timings(struct drm_display_mode *mode,
>  	drm_mode_init(mode, &crtc_state->hw.adjusted_mode);
>  	*vmax_vblank_start = 0;
>  
> -	if (!vrr_enable)
> +	if (!vrr_enable) {
> +		/*
> +		 * On platforms that always use the VRR timing generator
> +		 * LNL+, even fixed refresh rate modes run
> +		 * through the VRR TG. The actual frame boundary is at
> +		 * flipline (= vtotal), not at vactive end. Without this
> +		 * adjustment, vblank timestamps and flip-done fences are
> +		 * signaled at vactive end (line 1800 for 60Hz) instead of
> +		 * near the real frame boundary, causing
> +		 * compositors like SurfaceFlinger to see ~8ms late fences
> +		 * and drop frames during GPU-heavy workloads.
> +		 */
> +		if (intel_vrr_always_use_vrr_tg(to_intel_display(crtc_state))) {
> +			mode->crtc_vtotal = intel_vrr_vmin_vtotal(crtc_state);
> +			mode->crtc_vblank_end = intel_vrr_vmin_vtotal(crtc_state);
> +			mode->crtc_vblank_start =
> +				intel_vrr_vmin_vblank_start(crtc_state);
> +		}
>  		return;
> +	}
>  
>  	mode->crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
>  	mode->crtc_vblank_end = intel_vrr_vmax_vtotal(crtc_state);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
