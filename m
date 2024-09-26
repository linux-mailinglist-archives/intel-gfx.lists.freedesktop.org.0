Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC72987B2E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 00:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A96B10E326;
	Thu, 26 Sep 2024 22:36:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XPXoqb9X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAC4410E34A;
 Thu, 26 Sep 2024 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727390212; x=1758926212;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=egRCCKp6RYW0ZTknDJdXV8Qxi+x4X5sGujmKt4BxwP0=;
 b=XPXoqb9X/qDyBAtkPgG25xcktqYR5EVgvodrG3YG9CBSHF0PHVypk3Nz
 2ywwspxKu3rPzENWSQ1kiJE8tEgl7fGuf5+M5kLn86GW+NUWq7X/vPUhy
 mV0qnoJGV194zd/DpJJYPfrS6cbjb+uu931wbQbR+c9q5r2aoTjeiz9Br
 CApU+2ehI0GNjvOz4s8LCgCenTdmZo35zzbNPGKB1fSJ/+TBWlPPVf7fB
 qyBmzSe3o1wuTKAT5eDxWZlN5NLCTsUfoC/6r7EDBpcUdTaSOaQfq80X1
 ERVbAgwlZe5eqLDqeVgIyC4lyZLz6mQn3NIfE70/NkI+4o0P4TTZkClJX g==;
X-CSE-ConnectionGUID: 2g2Cyh/IQ3q90r/tGH5qZA==
X-CSE-MsgGUID: KznelzKWTpKUsfTROyigmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="14141589"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="14141589"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 15:36:52 -0700
X-CSE-ConnectionGUID: 2lK8M+aNSEOghN/ky4yGuw==
X-CSE-MsgGUID: jUvTsxgOQiq0P581Tc+9Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="72482730"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Sep 2024 15:36:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 01:36:48 +0300
Date: Fri, 27 Sep 2024 01:36:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 11/15] drm/i915/dp: Modify compressed bpp limitations for
 ultrajoiner
Message-ID: <ZvXiAGhTmWTpf43v@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
 <20240926072638.3689367-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240926072638.3689367-12-ankit.k.nautiyal@intel.com>
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

On Thu, Sep 26, 2024 at 12:56:34PM +0530, Ankit Nautiyal wrote:
> Add compressed bpp limitations for ultrajoiner.
> 
> v2: Fix the case for 1 pipe. (Ankit)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++++++++++------
>  1 file changed, 21 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f2a2541c1091..a0afb4991334 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -865,24 +865,39 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  				       int num_joined_pipes)
>  {
>  	u32 max_bpp_small_joiner_ram;
> +	u32 max_bpp_bigjoiner;
> +	u32 max_bpp;
>  
>  	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
>  	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
>  
> -	if (num_joined_pipes == 2) {
> +	if (num_joined_pipes == 1)
> +		return max_bpp_small_joiner_ram;

Hmm. This seems to assume that small joiner will be
enabled. I can't immediately see anything that would
guarantee that is the case. But I suppose it's a safe
assumption in that we can then freely choose whether to
use small joiner or not based on other constraints.

> +
> +	if (num_joined_pipes > 1) {
>  		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
>  		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
>  		int ppc = 2;
> -		u32 max_bpp_bigjoiner =
> -			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
> +		int num_bigjoiners = num_joined_pipes / 2;
> +
> +		max_bpp_bigjoiner =
> +			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits *

The the '/' seems to have turned into a '*'.

>  			intel_dp_mode_to_fec_clock(mode_clock);
>  
> -		max_bpp_small_joiner_ram *= 2;
> +		max_bpp_bigjoiner *= num_bigjoiners;
> +
> +		max_bpp_small_joiner_ram *= num_joined_pipes;

I get the feeling we're not handling the MSO overlap properly in
this code. But that's not directly related to this patch I guess.

I think we need to split this function up into its
constituent parts. Right now it's mixing it all into
a big mush that's very hard to follow. Once that is
done this function should just collapse into:
 max_bpp = min(max_bpp, smalljoiner_ram_max_bpp())
 max_bpp = min(max_bpp, bigjoiner_bw_max_bpp())
 max_bpp = min(max_bpp, ultrajoiner_ram_max_bpp())

We should also extract functions for bigjoiner_interface_bits()
and ultrajoiner_ram_size_bits() so that we don't have to be
distracted by the actual numbers.

> +	}
> +
> +	max_bpp = min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
> +
> +	if (num_joined_pipes == 4) {
> +		u32 max_bpp_ultrajoiner_ram = (4 * 72 * 512) / mode_hdisplay;
>  
> -		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
> +		max_bpp = min(max_bpp, max_bpp_ultrajoiner_ram);
>  	}
>  
> -	return max_bpp_small_joiner_ram;
> +	return max_bpp;
>  }
>  
>  u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
