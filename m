Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7192841E8
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Oct 2020 23:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A79456E195;
	Mon,  5 Oct 2020 21:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173A46E195
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Oct 2020 21:09:52 +0000 (UTC)
IronPort-SDR: ktzu3QD6XLhkrPlNSwFjWSLqVLHuPPiwLFi+sl7EEVSJgyWIn1SGP7kj/v/bmEhyK8u1wWSpsc
 irO6rwlhBFUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="164174506"
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="164174506"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP; 05 Oct 2020 13:43:21 -0700
IronPort-SDR: +MIUBErhcpCnYU1dfd39D6Wr+ELFrrSy4WnroJN2CyZZ9a0eIvrVhWCOvGffw79yN359EX8PFz
 WGqnhGXCLrUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="314906348"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 05 Oct 2020 13:40:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 05 Oct 2020 23:40:44 +0300
Date: Mon, 5 Oct 2020 23:40:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201005204044.GN6112@intel.com>
References: <20201003001846.1271151-1-imre.deak@intel.com>
 <20201003001846.1271151-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201003001846.1271151-5-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Add an encoder hook to
 sanitize its state during init/resume
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

On Sat, Oct 03, 2020 at 03:18:45AM +0300, Imre Deak wrote:
> Atm, if a full modeset is performed during the initial modeset the link
> training will happen with uninitialized max DP rate and lane count. Make
> sure the corresponding encoder state is initialized by adding an encoder
> hook called during driver init and system resume.
> =

> A better alternative would be to store all states in the CRTC state and
> make this state available for the link re-training code. Also instead of
> the DPCD read in the hook there should be really a proper sink HW
> readout in place. Both of these require a bigger rework, so for now opting
> for this minimal fix to make at least full initial modesets work.
> =

> The patch is based on
> https://patchwork.freedesktop.org/patch/101473/?series=3D10354&rev=3D3
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  8 +++++
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +++
>  .../drm/i915/display/intel_display_types.h    |  7 +++++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 31 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 10 ++++++
>  6 files changed, 62 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 4e54c55ec99f..a0805260b224 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4564,6 +4564,13 @@ void intel_ddi_get_config(struct intel_encoder *en=
coder,
>  	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
>  }
>  =

> +static void intel_ddi_sanitize_state(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *crtc_state)
> +{
> +	if (crtc_state && intel_crtc_has_dp_encoder(crtc_state))
> +		intel_dp_sanitize_state(encoder, crtc_state);
> +}
> +
>  static bool intel_ddi_initial_fastset_check(struct intel_encoder *encode=
r,
>  					    struct intel_crtc_state *crtc_state)
>  {
> @@ -5182,6 +5189,7 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  	encoder->update_pipe =3D intel_ddi_update_pipe;
>  	encoder->get_hw_state =3D intel_ddi_get_hw_state;
>  	encoder->get_config =3D intel_ddi_get_config;
> +	encoder->sanitize_state =3D intel_ddi_sanitize_state;
>  	encoder->initial_fastset_check =3D intel_ddi_initial_fastset_check;
>  	encoder->suspend =3D intel_dp_encoder_suspend;
>  	encoder->get_power_domains =3D intel_ddi_get_power_domains;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 31be63225b10..e61311ee8b8c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -18725,8 +18725,12 @@ static void intel_modeset_readout_hw_state(struc=
t drm_device *dev)
>  =

>  			encoder->base.crtc =3D &crtc->base;
>  			encoder->get_config(encoder, crtc_state);
> +			if (encoder->sanitize_state)
> +				encoder->sanitize_state(encoder, crtc_state);
>  		} else {
>  			encoder->base.crtc =3D NULL;
> +			if (encoder->sanitize_state)
> +				encoder->sanitize_state(encoder, NULL);
>  		}
>  =

>  		drm_dbg_kms(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 5297b2f08ff9..b2b458144f5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -188,6 +188,13 @@ struct intel_encoder {
>  	void (*get_config)(struct intel_encoder *,
>  			   struct intel_crtc_state *pipe_config);
>  =

> +	 /*
> +	  * Optional hook called during init/resume to sanitize any state
> +	  * stored in the encoder (eg. DP link parameters).
> +	  */
> +	void (*sanitize_state)(struct intel_encoder *encoder,
> +			       const struct intel_crtc_state *crtc_state);
> +
>  	/*
>  	 * Optional hook, returning true if this encoder allows a fastset
>  	 * during the initial commit, false otherwise.
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index df5277c2b9ba..9b6fe3b3b5b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3703,6 +3703,36 @@ static void intel_dp_get_config(struct intel_encod=
er *encoder,
>  	}
>  }
>  =

> +static bool
> +intel_dp_get_dpcd(struct intel_dp *intel_dp);
> +
> +/**
> + * intel_dp_sanitize_state - sanitize the encoder state during init/resu=
me
> + * @encoder: intel encoder to sanitize
> + * @crtc_state: state for the CRTC connected to the encoder
> + *
> + * Sanitize any state stored in the encoder during driver init and system
> + * resume.
> + */
> +void intel_dp_sanitize_state(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +	if (!crtc_state)
> +		return;
> +
> +	/*
> +	 * Don't clobber DPCD if it's been already read out during output
> +	 * setup (eDP) or detect.
> +	 */
> +	if (!memchr_inv(intel_dp->dpcd, 0, sizeof(intel_dp->dpcd)))
> +		intel_dp_get_dpcd(intel_dp);
> +
> +	intel_dp->max_link_lane_count =3D intel_dp_max_common_lane_count(intel_=
dp);
> +	intel_dp->max_link_rate =3D intel_dp_max_common_rate(intel_dp);
> +}
> +
>  bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
>  				    struct intel_crtc_state *crtc_state)
>  {
> @@ -8090,6 +8120,7 @@ bool intel_dp_init(struct drm_i915_private *dev_pri=
v,
>  	intel_encoder->compute_config =3D intel_dp_compute_config;
>  	intel_encoder->get_hw_state =3D intel_dp_get_hw_state;
>  	intel_encoder->get_config =3D intel_dp_get_config;
> +	intel_encoder->sanitize_state =3D intel_dp_sanitize_state;
>  	intel_encoder->initial_fastset_check =3D intel_dp_initial_fastset_check;
>  	intel_encoder->update_pipe =3D intel_panel_update_backlight;
>  	intel_encoder->suspend =3D intel_dp_encoder_suspend;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 977585aea3c8..1ab741e0be67 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -143,5 +143,7 @@ int intel_dp_init_hdcp(struct intel_digital_port *dig=
_port,
>  =

>  bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
>  				    struct intel_crtc_state *crtc_state);
> +void intel_dp_sanitize_state(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state);
>  =

>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index e948aacbd4ab..0831d1ee7978 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -591,6 +591,15 @@ static void intel_dp_mst_enc_get_config(struct intel=
_encoder *encoder,
>  	intel_ddi_get_config(&dig_port->base, pipe_config);
>  }
>  =

> +static void intel_dp_mst_sync_state(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
> +	struct intel_digital_port *dig_port =3D intel_mst->primary;
> +
> +	return intel_dp_sanitize_state(&dig_port->base, crtc_state);
> +}

MST readout is still totally missing, so not sure this part can
make any practical difference ever.

> +
>  static bool intel_dp_mst_initial_fastset_check(struct intel_encoder *enc=
oder,
>  					       struct intel_crtc_state *crtc_state)
>  {
> @@ -906,6 +915,7 @@ intel_dp_create_fake_mst_encoder(struct intel_digital=
_port *dig_port, enum pipe
>  	intel_encoder->enable =3D intel_mst_enable_dp;
>  	intel_encoder->get_hw_state =3D intel_dp_mst_enc_get_hw_state;
>  	intel_encoder->get_config =3D intel_dp_mst_enc_get_config;
> +	intel_encoder->sanitize_state =3D intel_dp_mst_sync_state;
>  	intel_encoder->initial_fastset_check =3D intel_dp_mst_initial_fastset_c=
heck;
>  =

>  	return intel_mst;
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
