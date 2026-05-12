Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMu6CsATA2r20AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 13:49:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAE751F921
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 13:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A37B810EA54;
	Tue, 12 May 2026 11:49:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KHYvMWpg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B06010EA54;
 Tue, 12 May 2026 11:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778586555; x=1810122555;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BLq5+O88Kh6Kzv5OsnmrqvqMr7iJej2JQkqg8LAGuFI=;
 b=KHYvMWpgjnoHDjlETcoZLe9CF+5mfJE8T7dujT81WacQabIcGih/oJUr
 r4DDsNeAI3yf2J8m3tWDtGFXizCoi6L+pXHHZZ51PKUCn1hqPg5THYc+y
 eKJAqFL/GEv/J6x3tymoLogFPXAQnEZYjCJnY6XYllEyNy87S5oHGTwHa
 xVPGSSK0njulygKS4KWs0QALHzkHEAq1lheneTBe6ScTQ7rqk2P38WLn7
 8aBbnXSqxFKdA1IpFobhum/xxKdnNpI0qTpvR7JGXALNeU3j1l51r0fcu
 PO/Eka4GRdT7zUYqJfK6vLSXlKdD7p38kRiTRBtmDrg0STaCRrkzdhQyW g==;
X-CSE-ConnectionGUID: a32KdQK3QgyD+Cft5F7nHw==
X-CSE-MsgGUID: eeSIyZggTAyHuaTWUdDISg==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79387177"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79387177"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 04:49:15 -0700
X-CSE-ConnectionGUID: let36zcUT7GadWoM5eBzZw==
X-CSE-MsgGUID: hapty+zlSCa2a7a3d6KPWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="242714767"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.203])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 04:49:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 09/11] drm/i915/bw: consolidate the debug info of
 bw/dgv/psf data
In-Reply-To: <20260511122816.1235478-10-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
 <20260511122816.1235478-10-vinod.govindapillai@intel.com>
Date: Tue, 12 May 2026 14:49:08 +0300
Message-ID: <ccf20fd4bdfdadfc1b8f7497126362c980232595@intel.com>
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
X-Rspamd-Queue-Id: 7EAE751F921
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Mon, 11 May 2026, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Consolidate all the detaills about the bw, gqv and psf gv into
> a common function and present it in an organised format
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 40 +++++++++++++++++--------
>  1 file changed, 27 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 858da1710a61..0bda13a3e31b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -483,6 +483,28 @@ static const struct intel_sa_info xe3lpd_3002_sa_info = {
>  	.derating = 10,
>  };
>  
> +static void debug_print_bw_info(struct intel_display *display)
> +{
> +	int num_groups = ARRAY_SIZE(display->bw.max);
> +	int i;
> +
> +	for (i = 0; i < num_groups; i++) {
> +		struct intel_bw_info *bi = &display->bw.max[i];
> +		int j;
> +
> +		drm_dbg_kms(display->drm, "BW%d: num_planes=%d num_qgv_points:%d\n",
> +			    i, bi->num_planes, bi->num_qgv_points);
> +
> +		for (j = 0; j < bi->num_qgv_points; j++)
> +			drm_dbg_kms(display->drm, "\tQGV %d: deratedbw=%u peakbw=%u\n",

Please use a drm_printer, and drm_printf_indent().

> +				    j,  bi->deratedbw[j], bi->peakbw[j]);
> +
> +		for (j = 0; j < bi->num_psf_gv_points; j++)
> +			drm_dbg_kms(display->drm, "\tPSF GV %d bw=%u\n",
> +				    j, bi->psf_bw[j]);
> +	}
> +}
> +
>  static bool is_tile_y_factored(struct intel_display *display)
>  {
>  	/* TGL supports Y-tile for LPDDR4/5, but not for DDR4 */
> @@ -544,12 +566,11 @@ static int icl_get_bw_info(struct intel_display *display,
>  
>  			bi->deratedbw[j] = min(maxdebw,
>  					       bw * (100 - sa->derating) / 100);
> -
> -			drm_dbg_kms(display->drm,
> -				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
> -				    i, j, bi->num_planes, bi->deratedbw[j]);
>  		}
>  	}
> +
> +	debug_print_bw_info(display);
> +
>  	/*
>  	 * In case if SAGV is disabled in BIOS, we always get 1
>  	 * SAGV point, but we can't send PCode commands to restrict it
> @@ -650,24 +671,17 @@ static int tgl_get_bw_info(struct intel_display *display,
>  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>  							  num_channels *
>  							  qi.channel_width, 8);
> -
> -			drm_dbg_kms(display->drm,
> -				    "BW%d / QGV %d: num_planes=%d deratedbw=%u peakbw: %u\n",
> -				    i, j, bi->num_planes, bi->deratedbw[j],
> -				    bi->peakbw[j]);
>  		}
>  
>  		for (j = 0; j < qi.num_psf_points; j++) {
>  			const struct intel_psf_gv_point *sp = &qi.psf_points[j];
>  
>  			bi->psf_bw[j] = adl_calc_psf_bw(sp->clk);
> -
> -			drm_dbg_kms(display->drm,
> -				    "BW%d / PSF GV %d: num_planes=%d bw=%u\n",
> -				    i, j, bi->num_planes, bi->psf_bw[j]);
>  		}
>  	}
>  
> +	debug_print_bw_info(display);
> +
>  	/*
>  	 * In case if SAGV is disabled in BIOS, we always get 1
>  	 * SAGV point, but we can't send PCode commands to restrict it

-- 
Jani Nikula, Intel
