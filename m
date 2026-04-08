Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EQLEIeq1mlKHAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 21:20:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7408B3C2CBB
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 21:20:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0C9D10E6DE;
	Wed,  8 Apr 2026 19:20:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O+fFHwwH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5AEF10E6D9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 19:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775676033; x=1807212033;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gHtvcZCvIQJvfHjhyh8JoSTt3uwP+pVUc1Nkouf8POU=;
 b=O+fFHwwHrC/beIj+Jx5pwZW0u5AJowoS9PwcjidQUN3Z3k580CgKJKnj
 nhQOcf/0/cqnWfH20aX3bP7eGNYkQpuTG8ifaEHpd6urY6D6EdtPclQvc
 RyLUUsWrfk4CEYsdaB6WKrsL2VPP+Oz5fRLi7zeHLjnaql2jppqe+7WyD
 4+CCFZ0clrXN9ERC4cE7MJjucVWtMZdOItuNX/OWFPCBHYXrmt/VMDwg/
 J4XD90KZkY1AXhZMfHGG0uxRWmOQXU0zM/OugCfVmsjpGdQ7hvsT/f3IX
 BNCMoFzNJTpRto1aympib8MeDlU0KDq+w6+b5rusS/UHaVzxcIX2Tq7yu Q==;
X-CSE-ConnectionGUID: 2O5cFyurQyikZ/om1gF4gg==
X-CSE-MsgGUID: FP2dHq+fQcK8NMnLhl17CQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="87749311"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="87749311"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 12:20:33 -0700
X-CSE-ConnectionGUID: 62VFrjHATE+YQUBWaHghEQ==
X-CSE-MsgGUID: GAWOJJ4kTc29dfRARHSWaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="251698896"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 12:20:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
Subject: Re: [PATCH 3/4] drm/i915/bw: Rename struct intel_sa_info to
 intel_display_bw_params
In-Reply-To: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-3-23c53afa7db0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-3-23c53afa7db0@intel.com>
Date: Wed, 08 Apr 2026 22:20:28 +0300
Message-ID: <62fbacf46642c5b3ab7b36f01f5dd82b5c73b32f@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gustavo.sousa@intel.com,m:matthew.d.roper@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.996];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7408B3C2CBB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> To align with struct intel_platform_bw_params, rename struct
> intel_sa_info to intel_display_bw_params.  Also add comments to contrast
> their purposes.
>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 38 ++++++++++++++++++++-------------
>  1 file changed, 23 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 654876215ace..64c6f18346bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -375,6 +375,10 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>  	return dclk;
>  }
>  
> +/*
> + * Bandwidth parameters that are tied to the platform (as opposed to struct
> + * intel_display_bw_params).
> + */
>  struct intel_platform_bw_params {
>  	u8 deprogbwlimit;
>  	u8 derating;
> @@ -496,34 +500,38 @@ static const struct intel_platform_bw_params *get_platform_bw_params(struct inte
>  	return ret;
>  }
>  
> -struct intel_sa_info {
> +/*
> + * Bandwidth parameters that are tied to the display IP (as opposed to struct
> + * intel_platform_bw_params).
> + */
> +struct intel_display_bw_params {
>  	u16 displayrtids;
>  	u8 deburst;
>  };
>  
> -static const struct intel_sa_info icl_sa_info = {
> +static const struct intel_display_bw_params icl_disp_bw_params = {
>  	.deburst = 8,
>  	.displayrtids = 128,
>  };
>  
> -static const struct intel_sa_info tgl_sa_info = {
> +static const struct intel_display_bw_params tgl_disp_bw_params = {
>  	.deburst = 16,
>  	.displayrtids = 256,
>  };
>  
> -static const struct intel_sa_info rkl_sa_info = {
> +static const struct intel_display_bw_params rkl_disp_bw_params = {
>  	.deburst = 8,
>  	.displayrtids = 128,
>  };
>  
> -static const struct intel_sa_info xelpdp_sa_info = {
> +static const struct intel_display_bw_params xelpdp_disp_bw_params = {
>  	.deburst = 32,
>  	.displayrtids = 256,
>  };

So if these are tied to IP, why are they still named after platforms?

Nitpick, you'll never see me use "disp" abbreviation. It just doesn't
abbreviate enough, only makes stuff harder to read.

>  
>  static int icl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
> -			   const struct intel_sa_info *sa)
> +			   const struct intel_display_bw_params *disp_bw_params)
>  {
>  	struct intel_qgv_info qi = {};
>  	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> @@ -544,7 +552,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  
>  	dclk_max = icl_sagv_max_dclk(&qi);
>  	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> -	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> +	ipqdepth = min(ipqdepthpch, disp_bw_params->displayrtids / num_channels);
>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>  
>  	for (i = 0; i < num_groups; i++) {
> @@ -552,7 +560,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  		int clpchgroup;
>  		int j;
>  
> -		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
> +		clpchgroup = (disp_bw_params->deburst * qi.deinterleave / num_channels) << i;
>  		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
>  
>  		bi->num_qgv_points = qi.num_points;
> @@ -595,7 +603,7 @@ static int icl_get_bw_info(struct intel_display *display,
>  
>  static int tgl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
> -			   const struct intel_sa_info *sa)
> +			   const struct intel_display_bw_params *disp_bw_params)
>  {
>  	struct intel_qgv_info qi = {};
>  	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> @@ -634,7 +642,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>  	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>  
> -	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> +	ipqdepth = min(ipqdepthpch, disp_bw_params->displayrtids / num_channels);
>  	/*
>  	 * clperchgroup = 4kpagespermempage * clperchperblock,
>  	 * clperchperblock = 8 / num_channels * interleave
> @@ -647,7 +655,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>  		int clpchgroup;
>  		int j;
>  
> -		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
> +		clpchgroup = (disp_bw_params->deburst * qi.deinterleave / num_channels) << i;
>  
>  		if (i < num_groups - 1) {
>  			bi_next = &display->bw.max[i + 1];
> @@ -886,16 +894,16 @@ void intel_bw_init_hw(struct intel_display *display)
>  	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>  		xe2_hpd_get_bw_info(display, dram_info);
>  	} else if (DISPLAY_VER(display) >= 14) {
> -		tgl_get_bw_info(display, dram_info, &xelpdp_sa_info);
> +		tgl_get_bw_info(display, dram_info, &xelpdp_disp_bw_params);
>  	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
>  	} else if (DISPLAY_VER(display) >= 12) {
>  		if (display->platform.rocketlake)
> -			tgl_get_bw_info(display, dram_info, &rkl_sa_info);
> +			tgl_get_bw_info(display, dram_info, &rkl_disp_bw_params);
>  		else
> -			tgl_get_bw_info(display, dram_info, &tgl_sa_info);
> +			tgl_get_bw_info(display, dram_info, &tgl_disp_bw_params);
>  	} else if (DISPLAY_VER(display) == 11) {
> -		icl_get_bw_info(display, dram_info, &icl_sa_info);
> +		icl_get_bw_info(display, dram_info, &icl_disp_bw_params);
>  	}
>  }

-- 
Jani Nikula, Intel
