Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qYDvBwUAMGpALgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 15:37:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29976686CA9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 15:37:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hlZWeRS+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A0C10E42C;
	Mon, 15 Jun 2026 13:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3046510E42B;
 Mon, 15 Jun 2026 13:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781530625; x=1813066625;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=13PuLa8yb/uKOhD4f+Fdd/dJkOCfJL2kjaRUxwFQm0Y=;
 b=hlZWeRS+Boup6Bp4+yJPTwjCBqmrSIyhPQxD3vW5gVkIpRO428y8qqlZ
 G0GeIFcQnMnpgosFEydeoOV/vRct5znXa6kI+WwdzLa7aMZEcN8Z6gThc
 Du75I2hRARhEGL5pD9ma8674O+W79Fr53xqDlnCcbld+eeFhV1VMG9vFt
 UMH1Yb+VXcRJ+c5ygaCdSQyzAyFhNaNMVGKkokq/+/s+kOwiutKx/Fd7u
 Uy4HVUbgmgyYQThtZ063YcIQje1v6s4RUhGtfQkdxdXFfAg3mreFPfoe8
 5QLAj8FhJaedZM2+VPbjNVQN8HM9elZ5obZ/BoYLaTQFZtJxEWa/C9iP9 g==;
X-CSE-ConnectionGUID: DJ2+iNabQQOc2geWQa7IIw==
X-CSE-MsgGUID: eONRycJITvWtPN3bOyvnSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82280786"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82280786"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 06:37:04 -0700
X-CSE-ConnectionGUID: DiCxVDVhRL+gCSG/iaxl9Q==
X-CSE-MsgGUID: /2OK5J+DRqGMbzLbnB7Y/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="271555518"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 06:36:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com, Vidya Srinivas
 <vidya.srinivas@intel.corp-partner.google.com>, Vidya Srinivas
 <vidya.srinivas@intel.com>, Charlton Lin <charlton.lin@intel.com>
Subject: Re: [PATCH] [RFC] drm/i915/display: Fix PPC-granularity and limit
 2nd scaler to 1:1
In-Reply-To: <20260608140510.629170-1-vidya.srinivas@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260608140510.629170-1-vidya.srinivas@intel.com>
Date: Mon, 15 Jun 2026 16:36:46 +0300
Message-ID: <3150787bd3916f3a2a51ee222248d0e81ee4d996@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 29976686CA9

On Mon, 08 Jun 2026, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> From: Vidya Srinivas <vidya.srinivas@intel.corp-partner.google.com>
>
> The existing icl_plane_min_cdclk() uses a simple pixel_rate/PPC
> calculation that does not account for the pipeline granularity
> adjustment when horizontal downscaling is active. The effective
> pixels-per-clock throughput is reduced due to integer pipeline
> granularity, requiring a higher CDCLK than the current one computes.
> This causes FIFO underruns on multi-pipe configurations near max CDCLK.
>
> Additionally, limit second scaler to 1:1
> (no horizontal or vertical downscaling) on DISPLAY_VER > 14
>
> Also apply CDCLK PLL disable/enable WA for DISPLAY_VER 30
>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Charlton Lin <charlton.lin@intel.com>

If you're sending a patch from you, why is Charlton's Signed-off-by
here? Who is the author? Did you inted to add Co-developed-by: Charlton?

BR,
Jani.



> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  3 +-
>  drivers/gpu/drm/i915/display/skl_scaler.c     |  4 +-
>  .../drm/i915/display/skl_universal_plane.c    | 58 +++++++++++++++++--
>  3 files changed, 57 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 189ae2d3cfc9..f724227c3726 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2149,7 +2149,8 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct intel_display *displa
>  
>  static bool pll_enable_wa_needed(struct intel_display *display)
>  {
> -	return (DISPLAY_VERx100(display) == 2000 ||
> +	return (DISPLAY_VERx100(display) == 3000 ||
> +		DISPLAY_VERx100(display) == 2000 ||
>  		DISPLAY_VERx100(display) == 1400 ||
>  		display->platform.dg2) &&
>  		display->cdclk.hw.vco > 0;
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 7994b983d509..3673b52de4da 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -382,8 +382,10 @@ calculate_max_scale(struct intel_crtc *crtc,
>  
>  		if (scaler_id == 0)
>  			*max_vscale = 0x30000 - 1;
> -		else
> +		else {
> +			*max_hscale = 0x10000;
>  			*max_vscale = 0x10000;
> +		}
>  	} else if (DISPLAY_VER(display) >= 10 || !is_yuv_semiplanar) {
>  		*max_hscale = 0x30000 - 1;
>  		*max_vscale = 0x30000 - 1;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index ad4bfff6903d..c49f330c4878 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -264,12 +264,58 @@ bool icl_is_hdr_plane(struct intel_display *display, enum plane_id plane_id)
>  }
>  
>  static int icl_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
> -			       const struct intel_plane_state *plane_state)
> -{
> -	unsigned int pixel_rate = intel_plane_pixel_rate(crtc_state, plane_state);
> -
> -	/* two pixels per clock */
> -	return DIV_ROUND_UP(pixel_rate, 2);
> +                   const struct intel_plane_state *plane_state)
> +{
> +    struct intel_display *display = to_intel_display(crtc_state);
> +    unsigned int pixel_rate = intel_plane_pixel_rate(crtc_state, plane_state);
> +
> +    if (DISPLAY_VER(display) >= 30) {
> +        unsigned int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
> +        unsigned int dst_w = drm_rect_width(&plane_state->uapi.dst);
> +        unsigned int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
> +        unsigned int dst_h = drm_rect_height(&plane_state->uapi.dst);
> +        const unsigned int ppc = 2;
> +
> +        /*
> +         * "Resolution Support" PPC-granularity:
> +         *   Hscale_PPC = (src_w / dst_w) * PPC
> +         *   int_part = floor(Hscale_PPC)
> +         *   frac = Hscale_PPC - int_part
> +         *   adjusted_frac = frac > 0 ? 1/ROUNDUP(1/frac) : 0
> +         *   H_down = int_part/PPC + adjusted_frac
> +         *   min_cdclk = crtc_clock * H_down * V_down / PPC
> +         */
> +        if (dst_w && dst_h && src_w > dst_w) {
> +            unsigned int hscale_ppc = src_w * ppc;
> +            unsigned int int_part = hscale_ppc / dst_w;
> +            unsigned int frac_num = hscale_ppc % dst_w;
> +            unsigned int v_num = max(src_h, dst_h);
> +            u64 num;
> +
> +            if (frac_num) {
> +                unsigned int recip_ceil = DIV_ROUND_UP(dst_w, frac_num);
> +                /* H_down = (int_part * recip_ceil + ppc) / (ppc * recip_ceil) */
> +                unsigned int h_num = int_part * recip_ceil + ppc;
> +                unsigned int h_den = ppc * recip_ceil;
> +
> +                num = mul_u32_u32(crtc_state->pixel_rate, h_num);
> +                num *= v_num;
> +                return DIV_ROUND_UP_ULL(num,
> +                            (u64)h_den * ppc * dst_h);
> +            }
> +
> +            /* frac == 0: H_down = int_part / ppc exactly */
> +            num = mul_u32_u32(crtc_state->pixel_rate, int_part);
> +            num *= v_num;
> +            return DIV_ROUND_UP_ULL(num, (u64)ppc * ppc * dst_h);
> +        }
> +
> +        /* No horizontal downscale */
> +        return DIV_ROUND_UP(pixel_rate, ppc);
> +    }
> +
> +    /* two pixels per clock */
> +    return DIV_ROUND_UP(pixel_rate, 2);
>  }
>  
>  static void

-- 
Jani Nikula, Intel
