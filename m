Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB21988874
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 17:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C113110E213;
	Fri, 27 Sep 2024 15:43:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nKe2VQOE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5952910E172;
 Fri, 27 Sep 2024 15:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727451834; x=1758987834;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RAsBpWNyDYek342XFZoYf0mXoKLrrcNelzE6MAGKW94=;
 b=nKe2VQOEN1Ad4SXmLRii+ou2mJLrIIVjW5yR2FlPoFCdWDcmZoFxbYpQ
 NKhzmPEa3DwYDXjczS2Rls9dVuDq7ahhmCboNV1QuVXlAjuwjWf5u5Kx/
 ek3jJXql7OSdr6Zfl4A7n9E28WhoeqGtzif0SnDSeLbMi8AoHbua9LpUn
 mnCeAyueYqnNAfV8ATpOHYxIlHzDa5+4ic9hWduVKDZci5F/xy2j67CX+
 kQoNH6wA6hq9EOh9hwWjjZ6PDF1hU1fbc/XexV727zLdqi8FpMWj33zer
 lGob8Xjft/9lGngbvoCC4lnfSo3U5NNleUs9NfLJQVMjB6y8ssvmAAdAy g==;
X-CSE-ConnectionGUID: TnZLTRK2QuOUTA3DKmDv0g==
X-CSE-MsgGUID: yWBJnkmST3+UcTxquLI5uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26473462"
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="26473462"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 08:43:54 -0700
X-CSE-ConnectionGUID: G1QJYgROS1S8TbGeMryybQ==
X-CSE-MsgGUID: Kexg5aNYQrm36CDOF6xsUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,159,1725346800"; d="scan'208";a="72731256"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 08:43:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 18:43:50 +0300
Date: Fri, 27 Sep 2024 18:43:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 11/17] drm/i915/dp: Refactor joiner max_bpp calculations
 into separate functions
Message-ID: <ZvbStiSfJ7ukl1z_@intel.com>
References: <20240927152241.4014909-1-ankit.k.nautiyal@intel.com>
 <20240927152241.4014909-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240927152241.4014909-12-ankit.k.nautiyal@intel.com>
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

On Fri, Sep 27, 2024 at 08:52:35PM +0530, Ankit Nautiyal wrote:
> Currently compressed max_bpp limitations for small joiner ram, big joiner
> etc are intermingled. Seprate these limitations into separate functions.
> 
> v2: Use num_joined_pipes in small joiner ram helper and other minor
> fixes. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 46 +++++++++++++++++++------
>  1 file changed, 36 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f2a2541c1091..29f8cb9c4dd0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -859,25 +859,51 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>  	return bits_per_pixel;
>  }
>  
> +static int bigjoiner_interface_bits(struct intel_display *display)
> +{
> +	return DISPLAY_VER(display) >= 14 ? 36 : 24;
> +}
> +
> +static u32 bigjoiner_bw_max_bpp(struct intel_display *display, u32 mode_clock)
> +{
> +	u32 max_bpp;
> +	/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
> +	int ppc = 2;
> +
> +	max_bpp = display->cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits(display) /
> +		  intel_dp_mode_to_fec_clock(mode_clock);
> +
> +	return max_bpp;
> +}
> +
> +static u32 small_joiner_ram_max_bpp(struct intel_display *display,
> +				    u32 mode_hdisplay,
> +				    int num_joined_pipes)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	u32 max_bpp;
> +
> +	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
> +	max_bpp = small_joiner_ram_size_bits(i915) / mode_hdisplay;
> +
> +	max_bpp *= num_joined_pipes;
> +
> +	return max_bpp;
> +}
> +
>  static
>  u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  				       u32 mode_clock, u32 mode_hdisplay,
>  				       int num_joined_pipes)
>  {
> +	struct intel_display *display = to_intel_display(&i915->drm);
>  	u32 max_bpp_small_joiner_ram;
>  
> -	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
> -	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
> +	max_bpp_small_joiner_ram = small_joiner_ram_max_bpp(display, mode_hdisplay,
> +							    num_joined_pipes);
>  
>  	if (num_joined_pipes == 2) {
> -		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> -		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
> -		int ppc = 2;
> -		u32 max_bpp_bigjoiner =
> -			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
> -			intel_dp_mode_to_fec_clock(mode_clock);
> -
> -		max_bpp_small_joiner_ram *= 2;
> +		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock);
>  
>  		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
>  	}
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
