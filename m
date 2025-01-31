Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A563CA23F2A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:31:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AFB410EACD;
	Fri, 31 Jan 2025 14:31:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lDxHwBJE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD49610EAC2;
 Fri, 31 Jan 2025 14:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738333874; x=1769869874;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=2qi1PYQAxB/MhvLoBxKtWR4wzWnY9IMzfi1ZCJkMrcg=;
 b=lDxHwBJEUzCDXAMKhz1XycY97N4beOUpBn3IAywlIT0scsV6Wzq5gLn1
 sKoyAj3/uvtJkopMU8CLf5Z/sibtcUbJ6Ypixtm37NVzNSADefBhN3GBx
 Zzz+rgnfeDyCmdl4uHKbRUBE51UUuRZyqJAQDTYP0EsNK4xJX1lffT0nw
 NUTCHl11+WXby9+HBDrgkU1Bztkh6M64S2ZYyx7Cl1UzCnR18Gz1ieU0t
 z79idWCxnPmGhN7UYh2x5zHCoGteBR4mLB4R9IkJGoVulMnfKXVyfgVCF
 pqC8qSLQEtcD/y3oI/gyn//bENnpfGNevRVQuZNe0n1i3fHbgjLsUzIVt g==;
X-CSE-ConnectionGUID: g8hG5X+aTo20s13jPGq4/g==
X-CSE-MsgGUID: X5Vx5ofbTYGaOkVUnxZ8tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38805690"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38805690"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:31:14 -0800
X-CSE-ConnectionGUID: e7qiNEPAQ+CbkM2/HDR/4A==
X-CSE-MsgGUID: yKY/Yq1BS4Wbdjp+FbpQaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="109781372"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:31:13 -0800
Date: Fri, 31 Jan 2025 16:32:10 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/14] drm/i915/dp: Move force_dsc_fractional_bpp_en
 check to intel_dp_dsc_valid_bpp()
Message-ID: <Z5ze6liJfIQLLYIX@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <2d8cdfef422dc2229d3ead2201bff4a321cbbdd3.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2d8cdfef422dc2229d3ead2201bff4a321cbbdd3.1738327620.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 31, 2025 at 02:50:00PM +0200, Jani Nikula wrote:
> Add the fractional DSC BPP force check to intel_dp_dsc_valid_bpp(), and
> use that in xelpd_dsc_compute_link_config(). This is another step closer
> towards unifying the platform specific functions.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ac67f2d2f86a..c7de9efcd740 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2075,8 +2075,12 @@ static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	int i;
>  
> -	if (DISPLAY_VER(display) >= 13)
> +	if (DISPLAY_VER(display) >= 13) {
> +		if (intel_dp->force_dsc_fractional_bpp_en && !fxp_q4_to_frac(bpp_x16))
> +			return false;
> +
>  		return true;
> +	}
>  
>  	if (fxp_q4_to_frac(bpp_x16))
>  		return false;
> @@ -2143,9 +2147,9 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	int ret;
>  
>  	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
> -		if (intel_dp->force_dsc_fractional_bpp_en &&
> -		    !fxp_q4_to_frac(bpp_x16))
> +		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
>  			continue;
> +
>  		ret = dsc_compute_link_config(intel_dp,
>  					      pipe_config,
>  					      limits,
> -- 
> 2.39.5
> 
