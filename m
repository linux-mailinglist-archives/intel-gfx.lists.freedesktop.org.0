Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A32718A877
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 23:42:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CEAE6E8F2;
	Wed, 18 Mar 2020 22:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFAA36E8F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 22:42:41 +0000 (UTC)
IronPort-SDR: DizKMRkGjco5A/xfyaUzzxfJ3OWNnGfa32lQ+0B27G51xnyIdXRIkk/5ejGUKE2jqRJEB+jLtH
 LmDOAVa54QKQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 15:42:41 -0700
IronPort-SDR: Bpz9bOD63OAGQpOAwowY0AIPUmdODxQsa9CnZTL4KtMqV9TO3kLePvoMtk3fT0ocDT44EtAoYX
 EVKa0RHjhIWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="391603999"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 18 Mar 2020 15:42:41 -0700
Date: Wed, 18 Mar 2020 15:44:16 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200318224415.GD6675@intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
 <20200313164831.5980-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313164831.5980-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915: Move
 icl_get_trans_port_sync_config() into the DDI code
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

On Fri, Mar 13, 2020 at 06:48:22PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Move the port sync readout into the DDI code where it belongs.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 54 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 59 --------------------
>  2 files changed, 54 insertions(+), 59 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 8d486282eea3..39f3e9452aad 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3844,6 +3844,57 @@ void intel_ddi_compute_min_voltage_level(struct dr=
m_i915_private *dev_priv,
>  		crtc_state->min_voltage_level =3D 2;
>  }
>  =

> +static enum transcoder transcoder_master_readout(struct drm_i915_private=
 *dev_priv,
> +						 enum transcoder cpu_transcoder)
> +{
> +	u32 ctl2, master_select;
> +
> +	ctl2 =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL2(cpu_transcoder));
> +
> +	if ((ctl2 & PORT_SYNC_MODE_ENABLE) =3D=3D 0)
> +		return INVALID_TRANSCODER;
> +
> +	master_select =3D ctl2 & PORT_SYNC_MODE_MASTER_SELECT_MASK;
> +
> +	if (master_select =3D=3D 0)
> +		return TRANSCODER_EDP;
> +	else
> +		return master_select - 1;
> +}
> +
> +static void icl_get_trans_port_sync_config(struct intel_crtc_state *crtc=
_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	u32 transcoders =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
> +	enum transcoder cpu_transcoder;
> +
> +	crtc_state->master_transcoder =3D
> +		transcoder_master_readout(dev_priv, crtc_state->cpu_transcoder);
> +
> +	for_each_cpu_transcoder_masked(dev_priv, cpu_transcoder, transcoders) {
> +		enum intel_display_power_domain power_domain;
> +		intel_wakeref_t trans_wakeref;
> +
> +		power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder);
> +		trans_wakeref =3D intel_display_power_get_if_enabled(dev_priv,
> +								   power_domain);
> +
> +		if (!trans_wakeref)
> +			continue;
> +
> +		if (transcoder_master_readout(dev_priv, cpu_transcoder) =3D=3D
> +		    crtc_state->cpu_transcoder)
> +			crtc_state->sync_mode_slaves_mask |=3D BIT(cpu_transcoder);
> +
> +		intel_display_power_put(dev_priv, power_domain, trans_wakeref);
> +	}
> +
> +	drm_WARN_ON(&dev_priv->drm,
> +		    crtc_state->master_transcoder !=3D INVALID_TRANSCODER &&
> +		    crtc_state->sync_mode_slaves_mask);
> +}
> +
>  void intel_ddi_get_config(struct intel_encoder *encoder,
>  			  struct intel_crtc_state *pipe_config)
>  {
> @@ -3995,6 +4046,9 @@ void intel_ddi_get_config(struct intel_encoder *enc=
oder,
>  	intel_read_infoframe(encoder, pipe_config,
>  			     HDMI_INFOFRAME_TYPE_DRM,
>  			     &pipe_config->infoframes.drm);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 11)
> +		icl_get_trans_port_sync_config(pipe_config);
>  }
>  =

>  static enum intel_output_type
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 12823d8f6afe..5c5a131db8b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11049,61 +11049,6 @@ static void hsw_get_ddi_port_state(struct intel_=
crtc *crtc,
>  	}
>  }
>  =

> -static enum transcoder transcoder_master_readout(struct drm_i915_private=
 *dev_priv,
> -						 enum transcoder cpu_transcoder)
> -{
> -	u32 trans_port_sync, master_select;
> -
> -	trans_port_sync =3D intel_de_read(dev_priv,
> -				        TRANS_DDI_FUNC_CTL2(cpu_transcoder));
> -
> -	if ((trans_port_sync & PORT_SYNC_MODE_ENABLE) =3D=3D 0)
> -		return INVALID_TRANSCODER;
> -
> -	master_select =3D trans_port_sync &
> -			PORT_SYNC_MODE_MASTER_SELECT_MASK;
> -	if (master_select =3D=3D 0)
> -		return TRANSCODER_EDP;
> -	else
> -		return master_select - 1;
> -}
> -
> -static void icl_get_trans_port_sync_config(struct intel_crtc_state *crtc=
_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	u32 transcoders;
> -	enum transcoder cpu_transcoder;
> -
> -	crtc_state->master_transcoder =3D transcoder_master_readout(dev_priv,
> -								  crtc_state->cpu_transcoder);
> -
> -	transcoders =3D BIT(TRANSCODER_A) |
> -		BIT(TRANSCODER_B) |
> -		BIT(TRANSCODER_C) |
> -		BIT(TRANSCODER_D);
> -	for_each_cpu_transcoder_masked(dev_priv, cpu_transcoder, transcoders) {
> -		enum intel_display_power_domain power_domain;
> -		intel_wakeref_t trans_wakeref;
> -
> -		power_domain =3D POWER_DOMAIN_TRANSCODER(cpu_transcoder);
> -		trans_wakeref =3D intel_display_power_get_if_enabled(dev_priv,
> -								   power_domain);
> -
> -		if (!trans_wakeref)
> -			continue;
> -
> -		if (transcoder_master_readout(dev_priv, cpu_transcoder) =3D=3D
> -		    crtc_state->cpu_transcoder)
> -			crtc_state->sync_mode_slaves_mask |=3D BIT(cpu_transcoder);
> -
> -		intel_display_power_put(dev_priv, power_domain, trans_wakeref);
> -	}
> -
> -	drm_WARN_ON(&dev_priv->drm,
> -		    crtc_state->master_transcoder !=3D INVALID_TRANSCODER &&
> -		    crtc_state->sync_mode_slaves_mask);
> -}
> -
>  static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  				struct intel_crtc_state *pipe_config)
>  {
> @@ -11235,10 +11180,6 @@ static bool hsw_get_pipe_config(struct intel_crt=
c *crtc,
>  		pipe_config->pixel_multiplier =3D 1;
>  	}
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11 &&
> -	    !transcoder_is_dsi(pipe_config->cpu_transcoder))
> -		icl_get_trans_port_sync_config(pipe_config);
> -
>  out:
>  	for_each_power_domain(power_domain, power_domain_mask)
>  		intel_display_power_put(dev_priv,
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
