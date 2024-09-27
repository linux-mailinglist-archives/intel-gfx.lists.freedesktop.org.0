Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F345798847B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 14:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30CB110E358;
	Fri, 27 Sep 2024 12:28:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TK8vppN6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A0EA10E357;
 Fri, 27 Sep 2024 12:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727440083; x=1758976083;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hW6GLe4YnjveRJZc7v9lfnPRqgZEY7lf5pK2rSJ0fPM=;
 b=TK8vppN6Grgk9CN5rbgv9+g74c9mwvU1a9xOs+V1IWB6SUsBNIK3Efpy
 3APLgQ+mqKC4OTyk9peISPZuJWT0yDxbDTvdaZ6N9KSKxugRzvdZc6OUh
 LwaVf0oT7b5Ow46EYHmogKK9W4Bf4JjhDyim/jyuuDCtDXyf51vbDCNUB
 +6yJ1cmdx5QQyby0c29r2X64FS1qFPdIBZTXFxD2RRZL/FeGDEBVTeeXo
 7eCBM/BcEfy504frQvGRR5Wx1EWJvvv/JJp4YjU9ULvg2XSS5jzmEbNDE
 Kynal46258BqXVzwXS8Bp8C7DC8M+O1kOBSsauf8kUk5/miSh62CPTIAX g==;
X-CSE-ConnectionGUID: 28/DFxRSSUGi24Z1fT+imA==
X-CSE-MsgGUID: FMCUjCAxSUqHMR+WwwXvpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26091085"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26091085"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 05:28:03 -0700
X-CSE-ConnectionGUID: RjteMfyHRkGEegORf0NHAQ==
X-CSE-MsgGUID: jJo1O4IBTG+LP8sM76tzFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72692011"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 05:28:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 15:27:59 +0300
Date: Fri, 27 Sep 2024 15:27:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 11/17] drm/i915/dp: Refactor joiner max_bpp calculations
 into separate functions
Message-ID: <Zvakz94IAlOyLQM0@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
 <20240927083831.3913645-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240927083831.3913645-12-ankit.k.nautiyal@intel.com>
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

On Fri, Sep 27, 2024 at 02:08:25PM +0530, Ankit Nautiyal wrote:
> Currently compressed max_bpp limitations for small joiner ram, big joiner
> and others are intermingled. Separate them into distinct functions to
> enhance clarity and maintainability.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 45 ++++++++++++++++++++-----
>  1 file changed, 37 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f2a2541c1091..7db037f631f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -859,23 +859,52 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>  	return bits_per_pixel;
>  }
>  
> +static int get_bigjoiner_interface_bits(struct intel_display *display)

I would s/get_// in the name.

> +{
> +	return DISPLAY_VER(display) >= 14 ? 36 : 24;
> +}
> +
> +static u32 bigjoiner_bw_max_bpp(struct intel_display *display, u32 mode_clock,
> +				int num_joined_pipes)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	int bigjoiner_interface_bits = get_bigjoiner_interface_bits(display);

You don't really need the local variable for this.

> +	int num_bigjoiners = num_joined_pipes / 2;
> +	u32 max_bpp;
> +	/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
> +	int ppc = 2;
> +
> +	max_bpp = i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /

s/i915->display./display->/

> +		  intel_dp_mode_to_fec_clock(mode_clock);
> +
> +	max_bpp *= num_bigjoiners;

This thing wasn't in the original code, so should be added separately
IMO.

> +
> +	return max_bpp;
> +}
> +
> +static u32 small_joiner_ram_max_bpp(struct intel_display *display, u32 mode_hdisplay)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	u32 max_bpp;
> +
> +	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
> +	max_bpp = small_joiner_ram_size_bits(i915) / mode_hdisplay;
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
> +	max_bpp_small_joiner_ram = small_joiner_ram_max_bpp(display, mode_hdisplay);
>  
>  	if (num_joined_pipes == 2) {
> -		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> -		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
> -		int ppc = 2;
> -		u32 max_bpp_bigjoiner =
> -			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
> -			intel_dp_mode_to_fec_clock(mode_clock);
> +		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock, num_joined_pipes);
>  
>  		max_bpp_small_joiner_ram *= 2;

That multiplication should be inside small_joiner_ram_max_bpp().

>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
