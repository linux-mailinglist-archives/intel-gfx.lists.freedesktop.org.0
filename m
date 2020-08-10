Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DB9240605
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 14:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D286E43B;
	Mon, 10 Aug 2020 12:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F84B6E437
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 12:40:25 +0000 (UTC)
IronPort-SDR: 2dRsLEq8OMyQmMxmo3xcv1eFz4JtnD/Ntr7UZVVinqBjcUWEYuDC+0c417zYvZIn/jGrbvNUkl
 E+XgUXPke/fg==
X-IronPort-AV: E=McAfee;i="6000,8403,9708"; a="238353952"
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="238353952"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 05:40:24 -0700
IronPort-SDR: nKnQ+Zi8mLlbf+v+wuFd/hM6TtB5pDEqhW+hms9t9lGQG6N/pbRK2cVyvwO8IKgNdxGG1TKPTH
 mMvYMMXfY50A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="317339172"
Received: from chadjitt-mobl1.ger.corp.intel.com (HELO [10.249.44.177])
 ([10.249.44.177])
 by fmsmga004.fm.intel.com with ESMTP; 10 Aug 2020 05:40:23 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-4-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <27840123-6257-ca6d-51ce-f73e6a750d36@linux.intel.com>
Date: Mon, 10 Aug 2020 14:40:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200715224222.7557-4-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 04/11] drm/i915/dp: Allow big joiner
 modes in intel_dp_mode_valid(), v3.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 16-07-2020 om 00:42 schreef Manasi Navare:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>
> Small changes to intel_dp_mode_valid(), allow listing modes that
> can only be supported in the bigjoiner configuration, which is
> not supported yet.
>
> eDP does not support bigjoiner, so do not expose bigjoiner only
> modes on the eDP port.
>
> v5:
> * Increase max plane width to support 8K with bigjoiner (Maarten)
> v4:
> * Rebase (Manasi)
>
> Changes since v1:
> - Disallow bigjoiner on eDP.
> Changes since v2:
> - Rename intel_dp_downstream_max_dotclock to intel_dp_max_dotclock,
>   and split off the downstream and source checking to its own function.
>   (Ville)
> v3:
> * Rebase (Manasi)
>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Looking good, but I think you should have someone else review it as well to be certain. :)
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 119 ++++++++++++++-----
>  2 files changed, 91 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 78cbfefbfa62..3ecb642805a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -17400,7 +17400,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>  	 * too big for that.
>  	 */
>  	if (INTEL_GEN(dev_priv) >= 11) {
> -		plane_width_max = 5120;
> +		plane_width_max = 7680;
>  		plane_height_max = 4320;
>  	} else {
>  		plane_width_max = 5120;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d6295eb20b63..fbfea99fd804 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -248,25 +248,37 @@ intel_dp_max_data_rate(int max_link_clock, int max_lanes)
>  	return max_link_clock * max_lanes;
>  }
>  
> -static int
> -intel_dp_downstream_max_dotclock(struct intel_dp *intel_dp)
> +static int source_max_dotclock(struct intel_dp *intel_dp, bool allow_bigjoiner)
>  {
> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	struct intel_encoder *encoder = &dig_port->base;
> +	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
> +	struct intel_encoder *encoder = &intel_dig_port->base;
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	int max_dotclk = dev_priv->max_dotclk_freq;
> -	int ds_max_dotclk;
>  
> +	if (allow_bigjoiner && INTEL_GEN(dev_priv) >= 11 && !intel_dp_is_edp(intel_dp))
> +		return 2 * dev_priv->max_dotclk_freq;
> +
> +	return dev_priv->max_dotclk_freq;
> +}
> +
> +static int downstream_max_dotclock(struct intel_dp *intel_dp)
> +{
>  	int type = intel_dp->downstream_ports[0] & DP_DS_PORT_TYPE_MASK;
>  
>  	if (type != DP_DS_PORT_TYPE_VGA)
> -		return max_dotclk;
> +		return 0;
>  
> -	ds_max_dotclk = drm_dp_downstream_max_clock(intel_dp->dpcd,
> -						    intel_dp->downstream_ports);
> +	return drm_dp_downstream_max_clock(intel_dp->dpcd,
> +					   intel_dp->downstream_ports);
> +}
> +
> +static int
> +intel_dp_max_dotclock(struct intel_dp *intel_dp, bool allow_bigjoiner)
> +{
> +	int max_dotclk = source_max_dotclock(intel_dp, allow_bigjoiner);
> +	int ds_max_dotclk = downstream_max_dotclock(intel_dp);
>  
>  	if (ds_max_dotclk != 0)
> -		max_dotclk = min(max_dotclk, ds_max_dotclk);
> +		return min(max_dotclk, ds_max_dotclk);
>  
>  	return max_dotclk;
>  }
> @@ -527,7 +539,8 @@ small_joiner_ram_size_bits(struct drm_i915_private *i915)
>  
>  static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  				       u32 link_clock, u32 lane_count,
> -				       u32 mode_clock, u32 mode_hdisplay)
> +				       u32 mode_clock, u32 mode_hdisplay,
> +				       bool bigjoiner)
>  {
>  	u32 bits_per_pixel, max_bpp_small_joiner_ram;
>  	int i;
> @@ -545,6 +558,10 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
>  	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) /
>  		mode_hdisplay;
> +
> +	if (bigjoiner)
> +		max_bpp_small_joiner_ram *= 2;
> +
>  	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
>  		    max_bpp_small_joiner_ram);
>  
> @@ -554,6 +571,15 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  	 */
>  	bits_per_pixel = min(bits_per_pixel, max_bpp_small_joiner_ram);
>  
> +	if (bigjoiner) {
> +		u32 max_bpp_bigjoiner =
> +			i915->max_cdclk_freq * 48 /
> +			intel_dp_mode_to_fec_clock(mode_clock);
> +
> +		DRM_DEBUG_KMS("Max big joiner bpp: %u\n", max_bpp_bigjoiner);
> +		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
> +	}
> +
>  	/* Error out if the max bpp is less than smallest allowed valid bpp */
>  	if (bits_per_pixel < valid_dsc_bpp[0]) {
>  		drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min %u\n",
> @@ -576,7 +602,8 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  }
>  
>  static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
> -				       int mode_clock, int mode_hdisplay)
> +				       int mode_clock, int mode_hdisplay,
> +				       bool bigjoiner)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	u8 min_slice_count, i;
> @@ -603,12 +630,20 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>  
>  	/* Find the closest match to the valid slice count values */
>  	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
> -		if (valid_dsc_slicecount[i] >
> -		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
> -						    false))
> +		u8 test_slice_count = bigjoiner ?
> +			2 * valid_dsc_slicecount[i] :
> +			valid_dsc_slicecount[i];
> +
> +		if (test_slice_count >
> +		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd, false))
>  			break;
> -		if (min_slice_count  <= valid_dsc_slicecount[i])
> -			return valid_dsc_slicecount[i];
> +
> +		/* big joiner needs small joiner to be enabled */
> +		if (bigjoiner && test_slice_count < 4)
> +			continue;
> +
> +		if (min_slice_count <= test_slice_count)
> +			return test_slice_count;
>  	}
>  
>  	drm_dbg_kms(&i915->drm, "Unsupported Slice Count %d\n",
> @@ -648,11 +683,15 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	int max_dotclk;
>  	u16 dsc_max_output_bpp = 0;
>  	u8 dsc_slice_count = 0;
> +	bool dsc = false, bigjoiner = false;
>  
>  	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return MODE_NO_DBLESCAN;
>  
> -	max_dotclk = intel_dp_downstream_max_dotclock(intel_dp);
> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +		return MODE_H_ILLEGAL;
> +
> +	max_dotclk = intel_dp_max_dotclock(intel_dp, false);
>  
>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>  		if (mode->hdisplay > fixed_mode->hdisplay)
> @@ -664,6 +703,21 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  		target_clock = fixed_mode->clock;
>  	}
>  
> +	if (mode->clock < 10000)
> +		return MODE_CLOCK_LOW;
> +
> +	if (target_clock > max_dotclk) {
> +		if (intel_dp_is_edp(intel_dp))
> +			return MODE_CLOCK_HIGH;
> +
> +		max_dotclk = intel_dp_max_dotclock(intel_dp, true);
> +
> +		if (target_clock > max_dotclk)
> +			return MODE_CLOCK_HIGH;
> +
> +		bigjoiner = true;
> +	}
> +
>  	max_link_clock = intel_dp_max_link_rate(intel_dp);
>  	max_lanes = intel_dp_max_lane_count(intel_dp);
>  
> @@ -691,23 +745,28 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  							    max_link_clock,
>  							    max_lanes,
>  							    target_clock,
> -							    mode->hdisplay) >> 4;
> +							    mode->hdisplay,
> +							    bigjoiner) >> 4;
>  			dsc_slice_count =
>  				intel_dp_dsc_get_slice_count(intel_dp,
>  							     target_clock,
> -							     mode->hdisplay);
> +							     mode->hdisplay,
> +							     bigjoiner);
>  		}
> +
> +		dsc = dsc_max_output_bpp && dsc_slice_count;
>  	}
>  
> -	if ((mode_rate > max_rate && !(dsc_max_output_bpp && dsc_slice_count)) ||
> -	    target_clock > max_dotclk)
> +	/* big joiner configuration needs DSC */
> +	if (bigjoiner && !dsc) {
> +		DRM_DEBUG_KMS("Link clock needs bigjoiner, but DSC or FEC not available\n");
>  		return MODE_CLOCK_HIGH;
> +	}
>  
> -	if (mode->clock < 10000)
> -		return MODE_CLOCK_LOW;
> -
> -	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> -		return MODE_H_ILLEGAL;
> +	if (mode_rate > max_rate && !dsc) {
> +		DRM_DEBUG_KMS("Cannot drive without DSC\n");
> +		return MODE_CLOCK_HIGH;
> +	}
>  
>  	return intel_mode_valid_max_plane_size(dev_priv, mode);
>  }
> @@ -2204,11 +2263,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  						    pipe_config->port_clock,
>  						    pipe_config->lane_count,
>  						    adjusted_mode->crtc_clock,
> -						    adjusted_mode->crtc_hdisplay);
> +						    adjusted_mode->crtc_hdisplay,
> +						    false);
>  		dsc_dp_slice_count =
>  			intel_dp_dsc_get_slice_count(intel_dp,
>  						     adjusted_mode->crtc_clock,
> -						     adjusted_mode->crtc_hdisplay);
> +						     adjusted_mode->crtc_hdisplay,
> +						     false);
>  		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Compressed BPP/Slice Count not supported\n");


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
