Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2G4hLsCq1mmOHAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 21:21:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4885B3C2D3B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 21:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9856110E6D5;
	Wed,  8 Apr 2026 19:21:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCPLK0mr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1633210E6D5
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 19:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775676094; x=1807212094;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iOGzzg6Ow7yYryWpfj0VMqmWpwMPPzW6A5gciZa9/hI=;
 b=eCPLK0mreeWzMoV359iRDVVbb3DO/AHFmk0JL14rCjXzazAjHlRZfeKo
 Uo1caJl1vm5QDS7Vg21qAbOAuEdvYvCHcdnIpRX/2EMubiU2NZZvAsth3
 vQG64nwVPsHjCKAfXwMXJWISsPKBkHCVLY52uauuvP1ulXGQ1cniKtHsc
 z0MNMp9cRMZFRPDCAZ58/fQ/BHvzEIcVk2ZqT2hsZdW2eEEGgCmdXulwA
 Q5YVF7Xu5vNvS31921cOBkIv8YdfxI/Vy7Jt11hI68LNss1leNL5CnGuA
 /JXM9DNFI5YADfbX4VxEdtPJpaz3965U4XUjd7oBkBkx0JRvRrd1UmWn5 g==;
X-CSE-ConnectionGUID: nfXI35SUSMyXuHtAZJY6+g==
X-CSE-MsgGUID: KXuuWz/3T3yJhy6/I9pOPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76860295"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="76860295"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 12:21:33 -0700
X-CSE-ConnectionGUID: wxy2xbnxRxynBxVzW8dRLQ==
X-CSE-MsgGUID: TZlJ8xn+Q1iLMBCP7l3g3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="228443680"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 12:21:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
Subject: Re: [PATCH 4/4] drm/i915/bw: Extract get_display_bw_params()
In-Reply-To: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-4-23c53afa7db0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-4-23c53afa7db0@intel.com>
Date: Wed, 08 Apr 2026 22:21:27 +0300
Message-ID: <3532245b5fb2827db469939ff10be987b50a14a2@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 4885B3C2D3B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Just like it is done for the platform-specific bandwidth parameters, use
> a separate function named get_display_bw_params() to return the display
> IP-specific parameters.  This simplifies intel_bw_init_hw() by having
> just one call for each of *_get_info() function.
>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 31 ++++++++++++++++++++-----------
>  1 file changed, 20 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 64c6f18346bb..1f08fb893ee7 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -529,12 +529,26 @@ static const struct intel_display_bw_params xelpdp_disp_bw_params = {
>  	.displayrtids = 256,
>  };
>  
> +static const struct intel_display_bw_params *get_display_bw_params(struct intel_display *display)
> +{
> +	if (DISPLAY_VER(display) >= 14) {
> +		return &xelpdp_disp_bw_params;
> +	} else if (DISPLAY_VER(display) >= 12) {
> +		if (display->platform.rocketlake)
> +			return &rkl_disp_bw_params;
> +		else
> +			return &tgl_disp_bw_params;
> +	} else {
> +		return &icl_disp_bw_params;
> +	}
> +}
> +
>  static int icl_get_bw_info(struct intel_display *display,
> -			   const struct dram_info *dram_info,
> -			   const struct intel_display_bw_params *disp_bw_params)
> +			   const struct dram_info *dram_info)
>  {
>  	struct intel_qgv_info qi = {};
>  	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> +	const struct intel_display_bw_params *disp_bw_params = get_display_bw_params(display);

I would pass both of these in as parameters, with centralized
assignment, and not have every single function call the getters.

>  	bool is_y_tile = true; /* assume y tile may be used */
>  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>  	int ipqdepth, ipqdepthpch = 16;
> @@ -602,11 +616,11 @@ static int icl_get_bw_info(struct intel_display *display,
>  }
>  
>  static int tgl_get_bw_info(struct intel_display *display,
> -			   const struct dram_info *dram_info,
> -			   const struct intel_display_bw_params *disp_bw_params)
> +			   const struct dram_info *dram_info)
>  {
>  	struct intel_qgv_info qi = {};
>  	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> +	const struct intel_display_bw_params *disp_bw_params = get_display_bw_params(display);
>  	bool is_y_tile = true; /* assume y tile may be used */
>  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>  	int ipqdepth, ipqdepthpch = 16;
> @@ -893,17 +907,12 @@ void intel_bw_init_hw(struct intel_display *display)
>  
>  	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>  		xe2_hpd_get_bw_info(display, dram_info);
> -	} else if (DISPLAY_VER(display) >= 14) {
> -		tgl_get_bw_info(display, dram_info, &xelpdp_disp_bw_params);
>  	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
>  	} else if (DISPLAY_VER(display) >= 12) {
> -		if (display->platform.rocketlake)
> -			tgl_get_bw_info(display, dram_info, &rkl_disp_bw_params);
> -		else
> -			tgl_get_bw_info(display, dram_info, &tgl_disp_bw_params);
> +		tgl_get_bw_info(display, dram_info);
>  	} else if (DISPLAY_VER(display) == 11) {
> -		icl_get_bw_info(display, dram_info, &icl_disp_bw_params);
> +		icl_get_bw_info(display, dram_info);
>  	}
>  }

-- 
Jani Nikula, Intel
