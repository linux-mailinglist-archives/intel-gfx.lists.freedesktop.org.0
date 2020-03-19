Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ACF18C2E7
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 23:19:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185FA6EA92;
	Thu, 19 Mar 2020 22:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA826EA92
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 22:19:14 +0000 (UTC)
IronPort-SDR: we1ISu1va3R7qhPAK8HctsY9wO4Q6YgXVLnTqUStpLBE4mA8PFcvmL2RDH3KAbXbP4fs7NcSaI
 9IObi9zUhnSA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 15:19:13 -0700
IronPort-SDR: Z70ujnTn2GSJLEEWzcaUKMSDEWkVv5caR9d9X0BbAIIfc1joQFKEbiwWkZSim9zk5glzaorAiC
 W8uGZY0HRpxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,573,1574150400"; d="scan'208";a="245299998"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga003.jf.intel.com with ESMTP; 19 Mar 2020 15:19:13 -0700
Date: Thu, 19 Mar 2020 15:20:50 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200319222049.GB11219@intel.com>
References: <20200319163844.22783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319163844.22783-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Try to use fast+narrow link
 on eDP again and fall back to the old max strategy on failure
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
Cc: Matteo Iervasi <matteoiervasi@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>, Albert Astals Cid <aacid@kde.org>,
 intel-gfx@lists.freedesktop.org, Emanuele Panigati <ilpanich@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 19, 2020 at 06:38:42PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Some new eDP panels don't like to operate at the max parameters, and
> instead we need to go for an optimal confiugration. That unfortunately
> doesn't work with older eDP panels which are generally only guaranteed
> to work at the max parameters.
> =

> To solve these two conflicting requirements let's start with the optimal
> setup, and if that fails we start again with the max parameters. The
> downside is probably an extra modeset when we switch strategies but
> I don't see a good way to avoid that.
> =

> For a bit of history we first tried to go for the fast+narrow in
> commit 7769db588384 ("drm/i915/dp: optimize eDP 1.4+ link config
> fast and narrow"). but that had to be reverted due to regression
> on older panels in commit f11cb1c19ad0 ("drm/i915/dp: revert back
> to max link rate and lane count on eDP"). So now we try to get
> the best of both worlds by using both strategies.
> =

> v2: Deal with output_bpp and uapi vs. hw state split
>     Reword some comments
> =

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Albert Astals Cid <aacid@kde.org> # v5.0 backport
> Cc: Emanuele Panigati <ilpanich@gmail.com> # v5.0 backport
> Cc: Matteo Iervasi <matteoiervasi@gmail.com> # v5.0 backport
> Cc: Timo Aaltonen <tjaalton@ubuntu.com>
> References: https://bugs.freedesktop.org/show_bug.cgi?id=3D105267
> References: https://bugs.freedesktop.org/show_bug.cgi?id=3D109959
> References: https://gitlab.freedesktop.org/drm/intel/issues/272
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

This approach looks good to me to fallback to max parameters if
it fails the first time.

> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 74 ++++++++++++++++---
>  2 files changed, 66 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 5e00e611f077..ffde0d4af23c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1258,6 +1258,7 @@ struct intel_dp {
>  	bool link_trained;
>  	bool has_audio;
>  	bool reset_link_params;
> +	bool use_max_params;
>  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
>  	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
>  	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index ef2e06e292d5..85abcce492ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -465,6 +465,12 @@ int intel_dp_get_link_train_fallback_values(struct i=
ntel_dp *intel_dp,
>  {
>  	int index;
>  =

> +	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> +		DRM_DEBUG_KMS("Retrying Link training for eDP with max parameters\n");
> +		intel_dp->use_max_params =3D true;
> +		return 0;
> +	}

We need to remove the current check for intel_dp_can_link_train_fallback_fo=
r_edp() right?

Manasi

> +
>  	index =3D intel_dp_rate_index(intel_dp->common_rates,
>  				    intel_dp->num_common_rates,
>  				    link_rate);
> @@ -2046,6 +2052,44 @@ intel_dp_compute_link_config_wide(struct intel_dp =
*intel_dp,
>  	return -EINVAL;
>  }
>  =

> +/* Optimize link config in order: max bpp, min lanes, min clock */
> +static int
> +intel_dp_compute_link_config_fast(struct intel_dp *intel_dp,
> +				  struct intel_crtc_state *pipe_config,
> +				  const struct link_config_limits *limits)
> +{
> +	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
> +	int bpp, clock, lane_count;
> +	int mode_rate, link_clock, link_avail;
> +
> +	for (bpp =3D limits->max_bpp; bpp >=3D limits->min_bpp; bpp -=3D 2 * 3)=
 {
> +		int output_bpp =3D intel_dp_output_bpp(pipe_config, bpp);
> +
> +		mode_rate =3D intel_dp_link_required(adjusted_mode->crtc_clock,
> +						   output_bpp);
> +
> +		for (lane_count =3D limits->min_lane_count;
> +		     lane_count <=3D limits->max_lane_count;
> +		     lane_count <<=3D 1) {
> +			for (clock =3D limits->min_clock; clock <=3D limits->max_clock; clock=
++) {
> +				link_clock =3D intel_dp->common_rates[clock];
> +				link_avail =3D intel_dp_max_data_rate(link_clock,
> +								    lane_count);
> +
> +				if (mode_rate <=3D link_avail) {
> +					pipe_config->lane_count =3D lane_count;
> +					pipe_config->pipe_bpp =3D bpp;
> +					pipe_config->port_clock =3D link_clock;
> +
> +					return 0;
> +				}
> +			}
> +		}
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_ma=
x_bpc)
>  {
>  	int i, num_bpc;
> @@ -2261,13 +2305,14 @@ intel_dp_compute_link_config(struct intel_encoder=
 *encoder,
>  	limits.min_bpp =3D intel_dp_min_bpp(pipe_config);
>  	limits.max_bpp =3D intel_dp_compute_bpp(intel_dp, pipe_config);
>  =

> -	if (intel_dp_is_edp(intel_dp)) {
> +	if (intel_dp->use_max_params) {
>  		/*
>  		 * Use the maximum clock and number of lanes the eDP panel
> -		 * advertizes being capable of. The panels are generally
> +		 * advertizes being capable of in case the initial fast
> +		 * optimal params failed us. The panels are generally
>  		 * designed to support only a single clock and lane
> -		 * configuration, and typically these values correspond to the
> -		 * native resolution of the panel.
> +		 * configuration, and typically on older panels these
> +		 * values correspond to the native resolution of the panel.
>  		 */
>  		limits.min_lane_count =3D limits.max_lane_count;
>  		limits.min_clock =3D limits.max_clock;
> @@ -2281,11 +2326,22 @@ intel_dp_compute_link_config(struct intel_encoder=
 *encoder,
>  		      intel_dp->common_rates[limits.max_clock],
>  		      limits.max_bpp, adjusted_mode->crtc_clock);
>  =

> -	/*
> -	 * Optimize for slow and wide. This is the place to add alternative
> -	 * optimization policy.
> -	 */
> -	ret =3D intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limit=
s);
> +	if (intel_dp_is_edp(intel_dp))
> +		/*
> +		 * Optimize for fast and narrow. eDP 1.3 section 3.3 and eDP 1.4
> +		 * section A.1: "It is recommended that the minimum number of
> +		 * lanes be used, using the minimum link rate allowed for that
> +		 * lane configuration."
> +		 *
> +		 * Note that we fall back to the max clock and lane count for eDP
> +		 * panels that fail with the fast optimal settings (see
> +		 * intel_dp->use_max_params), in which case the fast vs. wide
> +		 * choice doesn't matter.
> +		 */
> +		ret =3D intel_dp_compute_link_config_fast(intel_dp, pipe_config, &limi=
ts);
> +	else
> +		/* Optimize for slow and wide. */
> +		ret =3D intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limi=
ts);
>  =

>  	/* enable compression if the mode doesn't fit available BW */
>  	DRM_DEBUG_KMS("Force DSC en =3D %d\n", intel_dp->force_dsc_en);
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
