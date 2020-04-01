Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DBD19B8FD
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 01:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3E56E99D;
	Wed,  1 Apr 2020 23:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 858586E99D
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 23:33:53 +0000 (UTC)
IronPort-SDR: 95bL46WwSPImfpcgftpnZnmaOFGRFLTclsBw4BQ7XZv0SbR5p6oOSZJB2SVDBuXtwsggbC+K/W
 7hsdq+BqLVYQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 16:33:53 -0700
IronPort-SDR: RluEu0AcsFKV+fVEODT6eM9/x9p0o9u4iomgvm51tKN+cmyd4rrmcuMRoU5EVlu3Lrr6d3G31t
 gEVTEe/nosKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,333,1580803200"; d="scan'208";a="273346657"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga004.fm.intel.com with ESMTP; 01 Apr 2020 16:33:52 -0700
Date: Wed, 1 Apr 2020 16:35:54 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200401233554.GA14630@intel.com>
References: <20200212161738.28141-1-ville.syrjala@linux.intel.com>
 <20200212161738.28141-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212161738.28141-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 3/8] drm/i915: Fix skl+ non-scaled pfit
 modes
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

On Wed, Feb 12, 2020 at 06:17:33PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Fix skl_update_scaler_crtc() to deal with different scaling
> modes correctly. The current implementation assumes
> DRM_MODE_SCALE_FULLSCREEN. Fortunately we don't expose any
> border properties currently so the code does actually end
> up doing the right thing (assigning a scaler for pfit).
> The code does need to be fixed before any borders are
> exposed.
> =

> Also we have redundant calls to skl_update_scaler_crtc() in
> dp/hdmi .compute_config() which can be nuked. They were anyway
> called before we had even computed the pfit state so were
> basically nonsense. The real call we need to keep is in
> intel_crtc_atomic_check().
> =

> v2: Deal witrh skl_update_scaler_crtc() in intel_dp_ycbcr420_config()
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Just keeping the call in intel_crtc_atomic_check() looks good

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_display.h |  1 -
>  drivers/gpu/drm/i915/display/intel_dp.c      | 15 --------
>  drivers/gpu/drm/i915/display/intel_hdmi.c    |  6 ---
>  4 files changed, 19 insertions(+), 43 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index de50aa0b076c..becc6322b7dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6101,30 +6101,28 @@ skl_update_scaler(struct intel_crtc_state *crtc_s=
tate, bool force_detach,
>  	return 0;
>  }
>  =

> -/**
> - * skl_update_scaler_crtc - Stages update to scaler state for a given cr=
tc.
> - *
> - * @state: crtc's scaler state
> - *
> - * Return
> - *     0 - scaler_usage updated successfully
> - *    error - requested scaling cannot be supported or other error condi=
tion
> - */
> -int skl_update_scaler_crtc(struct intel_crtc_state *state)
> +static int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
>  {
> -	const struct drm_display_mode *adjusted_mode =3D &state->hw.adjusted_mo=
de;
> -	bool need_scaler =3D false;
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
> +	int width, height;
>  =

> -	if (state->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 ||
> -	    state->pch_pfit.enabled)
> -		need_scaler =3D true;
> +	if (crtc_state->pch_pfit.enabled) {
> +		u32 pfit_size =3D crtc_state->pch_pfit.size;
> +
> +		width =3D pfit_size >> 16;
> +		height =3D pfit_size & 0xffff;
> +	} else {
> +		width =3D adjusted_mode->crtc_hdisplay;
> +		height =3D adjusted_mode->crtc_vdisplay;
> +	}
>  =

> -	return skl_update_scaler(state, !state->hw.active, SKL_CRTC_INDEX,
> -				 &state->scaler_state.scaler_id,
> -				 state->pipe_src_w, state->pipe_src_h,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_vdisplay, NULL, 0,
> -				 need_scaler);
> +	return skl_update_scaler(crtc_state, !crtc_state->hw.active,
> +				 SKL_CRTC_INDEX,
> +				 &crtc_state->scaler_state.scaler_id,
> +				 crtc_state->pipe_src_w, crtc_state->pipe_src_h,
> +				 width, height, NULL, 0,
> +				 crtc_state->pch_pfit.enabled);
>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 75438a136d58..6291d3dbc513 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -584,7 +584,6 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *=
crtc,
>  				  struct intel_crtc_state *crtc_state);
>  =

>  u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_center);
> -int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state);
>  void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
>  void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
>  u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index f4dede6253f8..a827eac8acc2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2307,7 +2307,6 @@ intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	int ret;
>  =

>  	if (!drm_mode_is_420_only(info, adjusted_mode) ||
>  	    !intel_dp_get_colorimetry_status(intel_dp) ||
> @@ -2316,13 +2315,6 @@ intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
>  =

>  	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
>  =

> -	/* YCBCR 420 output conversion needs a scaler */
> -	ret =3D skl_update_scaler_crtc(crtc_state);
> -	if (ret) {
> -		DRM_DEBUG_KMS("Scaler allocation for output failed\n");
> -		return ret;
> -	}
> -
>  	intel_pch_panel_fitting(crtc, crtc_state, DRM_MODE_SCALE_FULLSCREEN);
>  =

>  	return 0;
> @@ -2400,7 +2392,6 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	else
>  		ret =3D intel_dp_ycbcr420_config(intel_dp, &intel_connector->base,
>  					       pipe_config);
> -
>  	if (ret)
>  		return ret;
>  =

> @@ -2416,12 +2407,6 @@ intel_dp_compute_config(struct intel_encoder *enco=
der,
>  		intel_fixed_panel_mode(intel_connector->panel.fixed_mode,
>  				       adjusted_mode);
>  =

> -		if (INTEL_GEN(dev_priv) >=3D 9) {
> -			ret =3D skl_update_scaler_crtc(pipe_config);
> -			if (ret)
> -				return ret;
> -		}
> -
>  		if (HAS_GMCH(dev_priv))
>  			intel_gmch_panel_fitting(intel_crtc, pipe_config,
>  						 conn_state->scaling_mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index e68bafb76cb1..1e42b01045b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2308,12 +2308,6 @@ intel_hdmi_ycbcr420_config(struct drm_connector *c=
onnector,
>  =

>  	config->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
>  =

> -	/* YCBCR 420 output conversion needs a scaler */
> -	if (skl_update_scaler_crtc(config)) {
> -		DRM_DEBUG_KMS("Scaler allocation for output failed\n");
> -		return false;
> -	}
> -
>  	intel_pch_panel_fitting(intel_crtc, config,
>  				DRM_MODE_SCALE_FULLSCREEN);
>  =

> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
