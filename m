Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 345B728DFCA
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 13:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93314888D9;
	Wed, 14 Oct 2020 11:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61198888D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 11:26:46 +0000 (UTC)
IronPort-SDR: pv9l71Hv/XfQ+QoZlSI/s4IRuBhkHywkl+n4Xtxs4QeTYpu8bjq4FI3y/8UZqY/yNgVI+tCxea
 WILOk1guoRmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="227721644"
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="227721644"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 04:26:37 -0700
IronPort-SDR: 01d1GQQ40oluAJBsBwyPfOMlz1snIDdEvrg51vB1MRmLcDizyD8DIxkE5ZESdW2n5KgUnf7Tqg
 L6UJOwdIBzrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="356607559"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 Oct 2020 04:26:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Oct 2020 14:26:34 +0300
Date: Wed, 14 Oct 2020 14:26:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201014112634.GG6112@intel.com>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
 <20201008214535.22942-4-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008214535.22942-4-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v10 04/11] drm/i915/dp: Allow big joiner
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 08, 2020 at 02:45:28PM -0700, Manasi Navare wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> =

> Small changes to intel_dp_mode_valid(), allow listing modes that
> can only be supported in the bigjoiner configuration, which is
> not supported yet.
> =

> eDP does not support bigjoiner, so do not expose bigjoiner only
> modes on the eDP port.
> =

> v7:
> * Add can_bigjoiner() helper (Ville)
> * Pass bigjoiner to plane_size validation (Ville)
> v6:
> * Rebase after dp_downstream mode valid changes (Manasi)
> v5:
> * Increase max plane width to support 8K with bigjoiner (Maarten)
> v4:
> * Rebase (Manasi)
> =

> Changes since v1:
> - Disallow bigjoiner on eDP.
> Changes since v2:
> - Rename intel_dp_downstream_max_dotclock to intel_dp_max_dotclock,
>   and split off the downstream and source checking to its own function.
>   (Ville)
> v3:
> * Rebase (Manasi)
> =

> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |   5 +-
>  drivers/gpu/drm/i915/display/intel_display.h |   3 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 126 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |   2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    |   2 +-
>  6 files changed, 111 insertions(+), 29 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 723766b1eae3..cc540c7b7dcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -17642,7 +17642,8 @@ intel_mode_valid(struct drm_device *dev,
>  =

>  enum drm_mode_status
>  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> -				const struct drm_display_mode *mode)
> +				const struct drm_display_mode *mode,
> +				bool bigjoiner)
>  {
>  	int plane_width_max, plane_height_max;
>  =

> @@ -17659,7 +17660,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_p=
rivate *dev_priv,
>  	 * too big for that.
>  	 */
>  	if (INTEL_GEN(dev_priv) >=3D 11) {
> -		plane_width_max =3D 5120;
> +		plane_width_max =3D 5120 << bigjoiner;
>  		plane_height_max =3D 4320;
>  	} else {
>  		plane_width_max =3D 5120;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index d10b7c8cde3f..3d860a9da8fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -496,7 +496,8 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private=
 *dev_priv,
>  bool intel_plane_can_remap(const struct intel_plane_state *plane_state);
>  enum drm_mode_status
>  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> -				const struct drm_display_mode *mode);
> +				const struct drm_display_mode *mode,
> +				bool bigjoiner);
>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port=
);
>  bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 8a522edd7386..af2ff425e5d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -247,6 +247,29 @@ intel_dp_max_data_rate(int max_link_clock, int max_l=
anes)
>  	return max_link_clock * max_lanes;
>  }
>  =

> +static int source_max_dotclock(struct intel_dp *intel_dp, bool allow_big=
joiner)
> +{
> +	struct intel_digital_port *intel_dig_port =3D dp_to_dig_port(intel_dp);
> +	struct intel_encoder *encoder =3D &intel_dig_port->base;
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	if (allow_bigjoiner && INTEL_GEN(dev_priv) >=3D 11 && !intel_dp_is_edp(=
intel_dp))
> +		return 2 * dev_priv->max_dotclk_freq;
> +
> +	return dev_priv->max_dotclk_freq;
> +}
> +
> +static int
> +intel_dp_max_dotclock(struct intel_dp *intel_dp, bool allow_bigjoiner)
> +{
> +	int max_dotclk =3D source_max_dotclock(intel_dp, allow_bigjoiner);
> +
> +	if (intel_dp->dfp.max_dotclock)

No. dfp checks should stay where they are.

> +		return min(max_dotclk, intel_dp->dfp.max_dotclock);
> +
> +	return max_dotclk;
> +}
> +
>  static int cnl_max_source_rate(struct intel_dp *intel_dp)
>  {
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> @@ -512,7 +535,8 @@ small_joiner_ram_size_bits(struct drm_i915_private *i=
915)
>  =

>  static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  				       u32 link_clock, u32 lane_count,
> -				       u32 mode_clock, u32 mode_hdisplay)
> +				       u32 mode_clock, u32 mode_hdisplay,
> +				       bool bigjoiner)
>  {
>  	u32 bits_per_pixel, max_bpp_small_joiner_ram;
>  	int i;
> @@ -530,6 +554,10 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i9=
15_private *i915,
>  	/* Small Joiner Check: output bpp <=3D joiner RAM (bits) / Horiz. width=
 */
>  	max_bpp_small_joiner_ram =3D small_joiner_ram_size_bits(i915) /
>  		mode_hdisplay;
> +
> +	if (bigjoiner)
> +		max_bpp_small_joiner_ram *=3D 2;
> +
>  	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
>  		    max_bpp_small_joiner_ram);
>  =

> @@ -539,6 +567,15 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i9=
15_private *i915,
>  	 */
>  	bits_per_pixel =3D min(bits_per_pixel, max_bpp_small_joiner_ram);
>  =

> +	if (bigjoiner) {
> +		u32 max_bpp_bigjoiner =3D
> +			i915->max_cdclk_freq * 48 /
> +			intel_dp_mode_to_fec_clock(mode_clock);
> +
> +		DRM_DEBUG_KMS("Max big joiner bpp: %u\n", max_bpp_bigjoiner);
> +		bits_per_pixel =3D min(bits_per_pixel, max_bpp_bigjoiner);
> +	}
> +
>  	/* Error out if the max bpp is less than smallest allowed valid bpp */
>  	if (bits_per_pixel < valid_dsc_bpp[0]) {
>  		drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min %u\n",
> @@ -561,7 +598,8 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i91=
5_private *i915,
>  }
>  =

>  static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
> -				       int mode_clock, int mode_hdisplay)
> +				       int mode_clock, int mode_hdisplay,
> +				       bool bigjoiner)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	u8 min_slice_count, i;
> @@ -588,12 +626,20 @@ static u8 intel_dp_dsc_get_slice_count(struct intel=
_dp *intel_dp,
>  =

>  	/* Find the closest match to the valid slice count values */
>  	for (i =3D 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
> -		if (valid_dsc_slicecount[i] >
> -		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
> -						    false))
> +		u8 test_slice_count =3D bigjoiner ?
> +			2 * valid_dsc_slicecount[i] :
> +			valid_dsc_slicecount[i];
> +
> +		if (test_slice_count >
> +		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd, false))
>  			break;
> -		if (min_slice_count  <=3D valid_dsc_slicecount[i])
> -			return valid_dsc_slicecount[i];
> +
> +		/* big joiner needs small joiner to be enabled */
> +		if (bigjoiner && test_slice_count < 4)
> +			continue;
> +
> +		if (min_slice_count <=3D test_slice_count)
> +			return test_slice_count;
>  	}
>  =

>  	drm_dbg_kms(&i915->drm, "Unsupported Slice Count %d\n",
> @@ -676,10 +722,6 @@ intel_dp_mode_valid_downstream(struct intel_connecto=
r *connector,
>  	const struct drm_display_info *info =3D &connector->base.display_info;
>  	int tmds_clock;
>  =

> -	if (intel_dp->dfp.max_dotclock &&
> -	    target_clock > intel_dp->dfp.max_dotclock)
> -		return MODE_CLOCK_HIGH;
> -
>  	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
>  	tmds_clock =3D target_clock;
>  	if (drm_mode_is_420_only(info, mode))
> @@ -695,6 +737,16 @@ intel_dp_mode_valid_downstream(struct intel_connecto=
r *connector,
>  	return MODE_OK;
>  }
>  =

> +static bool intel_dp_can_bigjoiner(struct drm_connector *connector)
> +{
> +	struct intel_encoder *encoder =3D intel_attached_encoder(to_intel_conne=
ctor(connector));
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> +
> +	return INTEL_GEN(dev_priv) >=3D 12 ||
> +		(INTEL_GEN(dev_priv) =3D=3D 11 &&
> +		 encoder->port !=3D PORT_A);
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *connector,
>  		    struct drm_display_mode *mode)
> @@ -709,10 +761,16 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	u16 dsc_max_output_bpp =3D 0;
>  	u8 dsc_slice_count =3D 0;
>  	enum drm_mode_status status;
> +	bool dsc =3D false, bigjoiner =3D false;
>  =

>  	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return MODE_NO_DBLESCAN;
>  =

> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +		return MODE_H_ILLEGAL;

This random shuffling of things makes for a messy diff.

> +
> +	max_dotclk =3D intel_dp_max_dotclock(intel_dp, false);
> +
>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>  		if (mode->hdisplay > fixed_mode->hdisplay)
>  			return MODE_PANEL;
> @@ -723,6 +781,21 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  		target_clock =3D fixed_mode->clock;
>  	}
>  =

> +	if (mode->clock < 10000)
> +		return MODE_CLOCK_LOW;

Another random shuffling. Hmm. What on earth is this even and why is it
checking mode->clock and not target_clock?

Anywyas, plese split out the unrelated stuff so we at least have a
chance of getting a legible diff.

> +
> +	if (target_clock > max_dotclk) {
> +		if (intel_dp_is_edp(intel_dp))
> +			return MODE_CLOCK_HIGH;
> +
> +		max_dotclk =3D intel_dp_max_dotclock(intel_dp, true);
> +
> +		if (target_clock > max_dotclk)
> +			return MODE_CLOCK_HIGH;
> +
> +		bigjoiner =3D intel_dp_can_bigjoiner(connector);
> +	}
> +
>  	max_link_clock =3D intel_dp_max_link_rate(intel_dp);
>  	max_lanes =3D intel_dp_max_lane_count(intel_dp);
>  =

> @@ -751,30 +824,35 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  							    max_link_clock,
>  							    max_lanes,
>  							    target_clock,
> -							    mode->hdisplay) >> 4;
> +							    mode->hdisplay,
> +							    bigjoiner) >> 4;
>  			dsc_slice_count =3D
>  				intel_dp_dsc_get_slice_count(intel_dp,
>  							     target_clock,
> -							     mode->hdisplay);
> +							     mode->hdisplay,
> +							     bigjoiner);
>  		}
> +
> +		dsc =3D dsc_max_output_bpp && dsc_slice_count;
>  	}
>  =

> -	if ((mode_rate > max_rate && !(dsc_max_output_bpp && dsc_slice_count)) =
||
> -	    target_clock > max_dotclk)
> +	/* big joiner configuration needs DSC */
> +	if (bigjoiner && !dsc) {
> +		DRM_DEBUG_KMS("Link clock needs bigjoiner, but DSC or FEC not availabl=
e\n");
>  		return MODE_CLOCK_HIGH;
> +	}
>  =

> -	if (mode->clock < 10000)
> -		return MODE_CLOCK_LOW;
> -
> -	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> -		return MODE_H_ILLEGAL;
> +	if (mode_rate > max_rate && !dsc) {
> +		DRM_DEBUG_KMS("Cannot drive without DSC\n");
> +		return MODE_CLOCK_HIGH;
> +	}
>  =

>  	status =3D intel_dp_mode_valid_downstream(intel_connector,
>  						mode, target_clock);
>  	if (status !=3D MODE_OK)
>  		return status;
>  =

> -	return intel_mode_valid_max_plane_size(dev_priv, mode);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
>  }
>  =

>  u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
> @@ -2324,11 +2402,13 @@ static int intel_dp_dsc_compute_config(struct int=
el_dp *intel_dp,
>  						    pipe_config->port_clock,
>  						    pipe_config->lane_count,
>  						    adjusted_mode->crtc_clock,
> -						    adjusted_mode->crtc_hdisplay);
> +						    adjusted_mode->crtc_hdisplay,
> +						    false);
>  		dsc_dp_slice_count =3D
>  			intel_dp_dsc_get_slice_count(intel_dp,
>  						     adjusted_mode->crtc_clock,
> -						     adjusted_mode->crtc_hdisplay);
> +						     adjusted_mode->crtc_hdisplay,
> +						     false);
>  		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Compressed BPP/Slice Count not supported\n");
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index e948aacbd4ab..0fe2a3929ce6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -714,7 +714,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *con=
nector,
>  		return 0;
>  	}
>  =

> -	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode);
> +	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode, true);
>  	return 0;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i=
915/display/intel_dsi.c
> index afa4e6817e8c..f453ceb8d149 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -75,7 +75,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_co=
nnector *connector,
>  			return MODE_CLOCK_HIGH;
>  	}
>  =

> -	return intel_mode_valid_max_plane_size(dev_priv, mode);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
>  }
>  =

>  struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index f90838bc74fb..82674a8853c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2274,7 +2274,7 @@ intel_hdmi_mode_valid(struct drm_connector *connect=
or,
>  	if (status !=3D MODE_OK)
>  		return status;
>  =

> -	return intel_mode_valid_max_plane_size(dev_priv, mode);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
>  }
>  =

>  bool intel_hdmi_deep_color_possible(const struct intel_crtc_state *crtc_=
state,
> -- =

> 2.19.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
