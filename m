Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAE02848E4
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 10:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE1D6E02B;
	Tue,  6 Oct 2020 08:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0466E02B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 08:58:37 +0000 (UTC)
IronPort-SDR: z7JjVlOFoM5Gq618SaWvGsWHxiOBTnb+yz1ogKtLoDZQUBkKGq7hQI5vKwVb2zi4pr+knznKei
 R05ixyBmDGpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="228552326"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="228552326"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 01:58:36 -0700
IronPort-SDR: YMT9F8QwahPMdt4prNXCIdfLuT8fI3RfEaRaHwnaqTtjoC+A6zirF5TDN8IZ/4yygmsXh9nkiS
 qBK6GWtQKAfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="348375656"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 06 Oct 2020 01:58:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 11:58:33 +0300
Date: Tue, 6 Oct 2020 11:58:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201006085833.GR6112@intel.com>
References: <20201005215311.1475666-2-imre.deak@intel.com>
 <20201005230154.1477653-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201005230154.1477653-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/i915: Add an encoder hook to
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

On Tue, Oct 06, 2020 at 02:01:54AM +0300, Imre Deak wrote:
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

> v2: (Ville)
> - s/sanitize_state/sync_state/
> - No point in calling the hook when CRTC is disabled, remove the call.
> - No point in calling the hook for MST, remove it.
> =

> v3: Check only DPCD_REV to avoid clobbering intel_dp->dpcd. (Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  8 ++++++
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 ++
>  .../drm/i915/display/intel_display_types.h    |  7 +++++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 28 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |  2 ++
>  5 files changed, 47 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 4e54c55ec99f..6f7bd67732f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4564,6 +4564,13 @@ void intel_ddi_get_config(struct intel_encoder *en=
coder,
>  	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
>  }
>  =

> +static void intel_ddi_sync_state(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *crtc_state)
> +{
> +	if (intel_crtc_has_dp_encoder(crtc_state))
> +		intel_dp_sync_state(encoder, crtc_state);
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
> +	encoder->sync_state =3D intel_ddi_sync_state;
>  	encoder->initial_fastset_check =3D intel_ddi_initial_fastset_check;
>  	encoder->suspend =3D intel_dp_encoder_suspend;
>  	encoder->get_power_domains =3D intel_ddi_get_power_domains;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 755b83d47f9c..907e1d155443 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -18723,6 +18723,8 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  =

>  			encoder->base.crtc =3D &crtc->base;
>  			encoder->get_config(encoder, crtc_state);
> +			if (encoder->sync_state)
> +				encoder->sync_state(encoder, crtc_state);
>  		} else {
>  			encoder->base.crtc =3D NULL;
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 5297b2f08ff9..65ae2070576f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -188,6 +188,13 @@ struct intel_encoder {
>  	void (*get_config)(struct intel_encoder *,
>  			   struct intel_crtc_state *pipe_config);
>  =

> +	/*
> +	 * Optional hook called during init/resume to sync any state
> +	 * stored in the encoder (eg. DP link parameters) wrt. the HW state.
> +	 */
> +	void (*sync_state)(struct intel_encoder *encoder,
> +			   const struct intel_crtc_state *crtc_state);
> +
>  	/*
>  	 * Optional hook, returning true if this encoder allows a fastset
>  	 * during the initial commit, false otherwise.
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index df5277c2b9ba..239016dcd544 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3703,6 +3703,33 @@ static void intel_dp_get_config(struct intel_encod=
er *encoder,
>  	}
>  }
>  =

> +static bool
> +intel_dp_get_dpcd(struct intel_dp *intel_dp);
> +
> +/**
> + * intel_dp_sync_state - sync the encoder state during init/resume
> + * @encoder: intel encoder to sync
> + * @crtc_state: state for the CRTC connected to the encoder
> + *
> + * Sync any state stored in the encoder wrt. HW state during driver init
> + * and system resume.
> + */
> +void intel_dp_sync_state(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +	/*
> +	 * Don't clobber DPCD if it's been already read out during output
> +	 * setup (eDP) or detect.
> +	 */
> +	if (intel_dp->dpcd[DP_DPCD_REV] =3D=3D 0)
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
> @@ -8090,6 +8117,7 @@ bool intel_dp_init(struct drm_i915_private *dev_pri=
v,
>  	intel_encoder->compute_config =3D intel_dp_compute_config;
>  	intel_encoder->get_hw_state =3D intel_dp_get_hw_state;
>  	intel_encoder->get_config =3D intel_dp_get_config;
> +	intel_encoder->sync_state =3D intel_dp_sync_state;
>  	intel_encoder->initial_fastset_check =3D intel_dp_initial_fastset_check;
>  	intel_encoder->update_pipe =3D intel_panel_update_backlight;
>  	intel_encoder->suspend =3D intel_dp_encoder_suspend;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 977585aea3c8..6c201377fdc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -143,5 +143,7 @@ int intel_dp_init_hdcp(struct intel_digital_port *dig=
_port,
>  =

>  bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
>  				    struct intel_crtc_state *crtc_state);
> +void intel_dp_sync_state(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state);
>  =

>  #endif /* __INTEL_DP_H__ */
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
