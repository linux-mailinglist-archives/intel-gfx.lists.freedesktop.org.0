Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05253988875
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 110B410ECE3;
	Fri, 27 Sep 2024 15:44:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nm6DJkGE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF22F10ECE3;
 Fri, 27 Sep 2024 15:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727451872; x=1758987872;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wEvUwnYoOUgyhpED/8C7sze7Jv5WyW5feCVCEt1kbzw=;
 b=Nm6DJkGECVhlTNrtBuBQxcHBPvKWPhOU95upphuEfYc5NJjPuGAKdsw/
 I37CsrjQywoXfyUpPV0u+MU6MrFkuJt+JlPKokyjDU9nvqejKdKBrM+PQ
 0Jx3iOaexzLI0b5IwoRjUCOKoCR0vItC/QvxDDGYqexq1Y+XeeX77BLJS
 f4m9McTy0mVSKRczjidyNThQ7L4Pmk8VzFfa8CXzYquNGVJKxl7L4Uc/N
 5sJe+a0iNO1zKgxoY6hm9/rjDyOpsyOjb95fg3YTh+OShaXw8KAueKCT1
 8FvN7wKeXEX7u2qKsSb7wiDz4xrj3uNAnqJZFEK7kOfvpE+Yr1JQtOu9O A==;
X-CSE-ConnectionGUID: RSHmIyEhQ3i8Dv3uQgBs/w==
X-CSE-MsgGUID: 6L3/ooRXRHm7rhGhYswJig==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26473561"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="26473561"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:44:32 -0700
X-CSE-ConnectionGUID: cSw+LmcuSgS5xoUmAMv48w==
X-CSE-MsgGUID: +hBL1JXFSVSICfd8zGhe5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="72731353"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 08:44:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 18:44:28 +0300
Date: Fri, 27 Sep 2024 18:44:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 12/17] drm/i915/dp: Use num_joined_pipes in
 bigjoiner_bw_max_bpp
Message-ID: <ZvbS3Hs4mcj74j4x@intel.com>
References: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
 <20240927152241.4014909-13-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240927152241.4014909-13-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Sep 27, 2024 at 08:52:36PM +0530, Ankit Nautiyal wrote:
> Streamline the helper to get max compressed bpp for bigjoiner case, to
> effectively use num of pipes joined. This will make the addition of
> ultrajoiner limitations easier and improve redability.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 29f8cb9c4dd0..a85527a55dc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -864,16 +864,21 @@ static int bigjoiner_interface_bits(struct intel_display *display)
>  	return DISPLAY_VER(display) >= 14 ? 36 : 24;
>  }
>  
> -static u32 bigjoiner_bw_max_bpp(struct intel_display *display, u32 mode_clock)
> +static u32 bigjoiner_bw_max_bpp(struct intel_display *display, u32 mode_clock,
> +				int num_joined_pipes)
>  {
>  	u32 max_bpp;
>  	/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
>  	int ppc = 2;
> +	int num_big_joiners = num_joined_pipes / 2;
>  
>  	max_bpp = display->cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits(display) /
>  		  intel_dp_mode_to_fec_clock(mode_clock);
>  
> +	max_bpp *= num_big_joiners;
> +
>  	return max_bpp;
> +
>  }
>  
>  static u32 small_joiner_ram_max_bpp(struct intel_display *display,
> @@ -903,7 +908,8 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  							    num_joined_pipes);
>  
>  	if (num_joined_pipes == 2) {
> -		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock);
> +		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock,
> +							     num_joined_pipes);
>  
>  		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
>  	}
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
