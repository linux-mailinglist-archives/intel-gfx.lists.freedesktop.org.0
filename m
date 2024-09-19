Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 977AE97CD94
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 20:30:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 380DD10E74C;
	Thu, 19 Sep 2024 18:30:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H7/xY4Uo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C44010E74C;
 Thu, 19 Sep 2024 18:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726770621; x=1758306621;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ctE1BZOYXI70bG6iOXQX/5ww/F3VatOMg/cK5eYj0Rk=;
 b=H7/xY4Uo3XS6vwlF8NBIWLM0mRpW5bLQuKp/tJb4NnCnaw4pDZY7TfHb
 t4XA/mC1dl9sg/Qi7N6E7nU1OEGcvMZcNRRZXRE4eXG56p1CtC9XV/+GC
 7auxAje9AWkAgm8kVpwE4QzzahLWrNceP+pKamrfm5OvgdpCkYJt4BHQd
 riPZ5l1E1IdGNEFV0k+DbxQO/E7PG65WRvTu6BOwBTrRRlXs87scRzu0D
 b1qCPxi69V75Nn6tmrfot4QA6KdoBIM9lYpghbA4JV5p5rHcXEGUCGYSN
 A9nS1cVvM4R0o+us1PAcYBLV7d2Eq5jv1tTmNHAQQaYmYfwgq3X2E4uI2 Q==;
X-CSE-ConnectionGUID: sSHxBTR/S7mI9a3c9Sz54g==
X-CSE-MsgGUID: G3kJOEnTQoqI7eRg2JAS5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25235049"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25235049"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 11:30:20 -0700
X-CSE-ConnectionGUID: 6nrrRazsSbu0i2s74iDvRA==
X-CSE-MsgGUID: NghCphYkTiKAZBtRORiNbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70158403"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 11:30:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 21:30:09 +0300
Date: Thu, 19 Sep 2024 21:30:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 13/15] drm/i915: Compute config and mode valid changes
 for ultrajoiner
Message-ID: <ZuxtsRz00qagilSw@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-14-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-14-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 18, 2024 at 08:13:41PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Implement required changes for mode validation and compute config,
> to support Ultrajoiner.
> 
> v2:
> -Drop changes for HDMI.
> -Separate out DSC changes into another patch.
> v3: Fix check in can_ultrajoiner. (Ankit)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 44 +++++++++++++++++++++----
>  1 file changed, 37 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 369829ea5a12..4005700ab043 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -871,24 +871,34 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  				       int num_joined_pipes)
>  {
>  	u32 max_bpp_small_joiner_ram;
> +	u32 max_bpp_joiner;
>  
>  	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
>  	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
> +	max_bpp_joiner = max_bpp_small_joiner_ram;
>  
> -	if (num_joined_pipes == 2) {
> -		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> +	/* if ultra joiner is enabled, we have 2 bigjoiners enabled */
> +	if (num_joined_pipes == 2 ||
> +	    num_joined_pipes == 4) {

I guess just 'num_joined_pipes > 1' or something could be
used for all cases like this.

> +		int joiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;

Isn't this specifically about bigjoiner? If so the name should stay as
is.

>  		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
>  		int ppc = 2;
> -		u32 max_bpp_bigjoiner =
> -			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
> +		max_bpp_joiner =
> +			i915->display.cdclk.max_cdclk_freq * ppc * joiner_interface_bits /
>  			intel_dp_mode_to_fec_clock(mode_clock);
>  
>  		max_bpp_small_joiner_ram *= 2;

Can't we just multiply both max_* with num_joined_pipes
to take care of both bigjoiner and ultrajoiner?

>  
> -		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
>  	}
> +	if (num_joined_pipes == 4) {
> +		/* TODO: Check for ultrajoiner ram constraints */
>  
> -	return max_bpp_small_joiner_ram;
> +		/* both get multiplied by 2, because ram bits/ppc now doubled */
> +		max_bpp_small_joiner_ram *= 2;
> +		max_bpp_joiner *= 2;
> +	}
> +
> +	return min(max_bpp_small_joiner_ram, max_bpp_joiner);
>  }
>  
>  u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
> @@ -994,6 +1004,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  		if (num_joined_pipes == 2 && test_slice_count < 4)
>  			continue;
>  
> +		/* ultrajoiner needs 2 bigjoiners to be enabled */
> +		if (num_joined_pipes == 4 && test_slice_count < 8)
> +			continue;
> +
>  		if (min_slice_count <= test_slice_count)
>  			return test_slice_count;
>  	}
> @@ -1270,6 +1284,18 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  	return MODE_OK;
>  }
>  
> +static
> +bool intel_dp_needs_ultrajoiner(struct intel_dp *dp, int clock)
> +{
> +	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);

struct intel_display *display = intel_display(intel_dp);

> +
> +	if (!HAS_ULTRAJOINER(i915))
> +		return false;
> +
> +	return clock > (i915->display.cdclk.max_dotclk_freq * 2);

Redundant parens.

> +}
> +
>  static
>  bool intel_dp_needs_bigjoiner(struct intel_dp *intel_dp,
>  			      struct intel_connector *connector,
> @@ -1296,6 +1322,8 @@ int intel_dp_compute_num_pipes(struct intel_dp *intel_dp,
>  		MISSING_CASE(connector->force_joined_pipes);
>  		fallthrough;
>  	case 0:
> +		if (intel_dp_needs_ultrajoiner(intel_dp, clock))

Hmm. Technically we should be checking the same things for both
bigjoiner and ultrajoiner.

How about something like this with parametrized number 
of pipes:

bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
                           struct intel_connector *connector,
                           int hdisplay, int clock,
                           int num_joined_pipes)
{
        if (!intel_dp_has_joiner(intel_dp))
                return false;

        num_joined_pipes /= 2;

        return clock > num_joined_pipes * max_dotclk_freq ||
                hdisplay > num_joined_pipes * 5120;
}

Pair that with HAS_*JOINER(), and pass in the correct number
of joined pipes to get final answer.


> +			return 4;
>  		if (intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
>  			return 2;
>  	}
> @@ -2542,8 +2570,10 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
>  	 * Pipe joiner needs compression up to display 12 due to bandwidth
>  	 * limitation. DG2 onwards pipe joiner can be enabled without
>  	 * compression.
> +	 * Ultrajoiner always needs compression.
>  	 */
> -	return !HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2;
> +	return (!HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2) ||
> +		num_joined_pipes == 4;
>  }
>  
>  static int
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
